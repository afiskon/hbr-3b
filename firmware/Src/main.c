/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  ** This notice applies to any and all portions of this file
  * that are not between comment pairs USER CODE BEGIN and
  * USER CODE END. Other portions of this file, whether 
  * inserted by the user or by software development tools
  * are owned by their respective copyright owners.
  *
  * COPYRIGHT(c) 2020 STMicroelectronics
  *
  * Redistribution and use in source and binary forms, with or without modification,
  * are permitted provided that the following conditions are met:
  *   1. Redistributions of source code must retain the above copyright notice,
  *      this list of conditions and the following disclaimer.
  *   2. Redistributions in binary form must reproduce the above copyright notice,
  *      this list of conditions and the following disclaimer in the documentation
  *      and/or other materials provided with the distribution.
  *   3. Neither the name of STMicroelectronics nor the names of its contributors
  *      may be used to endorse or promote products derived from this software
  *      without specific prior written permission.
  *
  * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
  * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>
#include "si5351.h"
#include "lcd.h"

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
ADC_HandleTypeDef hadc1;

I2C_HandleTypeDef hi2c1;

TIM_HandleTypeDef htim1;
TIM_HandleTypeDef htim2;

/* USER CODE BEGIN PV */
/* Private variables ---------------------------------------------------------*/

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_TIM1_Init(void);
static void MX_I2C1_Init(void);
static void MX_TIM2_Init(void);
static void MX_ADC1_Init(void);
/* USER CODE BEGIN PFP */
/* Private function prototypes -----------------------------------------------*/

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

#define CH_CW   0
#define CH_CAL  1
#define CH_VFO  2

const int32_t XtalFilterCenterFrequency = 8998280;
const int32_t si5351_correction = 5760;

/* Adjust for used rotary encoders */
#define MAIN_DELTA_DIV 20
#define MAIN_DELTA_MULT 1
#define MULTI_DELTA_DIV 1
#define MULTI_DELTA_MULT -1

int32_t Fvfo = 1000000; // dummy value, will be changed below

const uint8_t eeprom_i2c_addr = (0x50 << 1);
#define KEYER_CONFIG_EEPROM_ADDR        0x0000

typedef enum {
    CLAR_MODE_DISABLED = 0,
    CLAR_MODE_RIT = 1,
    CLAR_MODE_XIT = 2,
} ClarMode_t;

bool lockMode = false;
bool fastMode = false;
bool bandMode = false;
ClarMode_t clarMode = CLAR_MODE_DISABLED;

int32_t clarOffset = 0;

int32_t sendStart = 0;
int32_t sendFinish = 0;
int32_t keyReadTimeout = 0;
int32_t sendTimeout = 0;
bool isSending = false;

typedef enum {
    CW_SEND_NONE = 0,
    CW_SEND_DIT = 1,
    CW_SEND_DAH = 2,
} CwSend_t;

CwSend_t lastSent = CW_SEND_NONE;
CwSend_t nextSend = CW_SEND_NONE;

typedef struct {
    uint16_t checksum;
    bool straightKey;
    int32_t speedWPM;
    int32_t ditTimeMs;
} KeyerConfig_t;

KeyerConfig_t keyerConfig = {
    .checksum = 0,
    .straightKey = false,
    .speedWPM = 19,

    // ditTimeMs = 60*1000/(50*WPM)
    // where 50 is the length in dits of "PARIS "
    // see https://morsecode.world/international/timing.html
    .ditTimeMs = 63,
};

bool inTransmitMode = false;
bool inCWTrainerMode = false;

#define BUTTON_DEBOUNCE_TIME_MS 200
typedef enum {
    BUTTON_STATUS_PRESSED = 0,
    BUTTON_STATUS_RELEASED = 1,
    BUTTON_STATUS_DEBOUNCE = 2,
} ButtonStatus_t;

typedef enum {
    USE_LPF_30 = 0,
    USE_LPF_17 = 1,
    USE_LPF_12 = 2,
} UseLPF_t;

typedef struct {
    int32_t minFreq;
    int32_t maxFreq;
    int32_t lastFreq;
    UseLPF_t lpf;
    /*
     * Compensate for losses in RG-174, frequency response of the given
     * PA depending on the used transistor, imperfections of the LPFs, etc.
     */
    si5351DriveStrength_t txDriveStrength;
} BandInfo_t;

int32_t currentBand = 0; // default: 30m

BandInfo_t bands[] = {
/*
    {
        .minFreq  = 3500000,
        .maxFreq  = 3570000,
        .lastFreq = 3560000,
        .lpf = USE_LPF_80,
        .txDriveStrength = SI5351_DRIVE_STRENGTH_2MA,
    },
    {
        .minFreq  = 7000000,
        .maxFreq  = 7040000,
        .lastFreq = 7030000,
        .lpf = USE_LPF_40,
        .txDriveStrength = SI5351_DRIVE_STRENGTH_2MA,
    },
*/
    {
        .minFreq  = 10100000,
        .maxFreq  = 10130000,
        .lastFreq = 10116000,
        .lpf = USE_LPF_30,
        .txDriveStrength = SI5351_DRIVE_STRENGTH_2MA,
    },
/*
    {
        .minFreq  = 14000000,
        .maxFreq  = 14070000,
        .lastFreq = 14060000,
        .lpf = USE_LPF_20,
        .txDriveStrength = SI5351_DRIVE_STRENGTH_2MA,
    },
*/
    {
        .minFreq  = 18068000,
        .maxFreq  = 18095000,
        .lastFreq = 18086000,
        .lpf = USE_LPF_17,
        .txDriveStrength = SI5351_DRIVE_STRENGTH_2MA,
    },
/*
    {
        .minFreq  = 21000000,
        .maxFreq  = 21070000,
        .lastFreq = 21060000,
        .lpf = USE_LPF_15,
        .txDriveStrength = SI5351_DRIVE_STRENGTH_2MA,
    },
*/
    {
        .minFreq  = 24890000,
        .maxFreq  = 24915000,
        .lastFreq = 24906000,
        .lpf = USE_LPF_12,
        .txDriveStrength = SI5351_DRIVE_STRENGTH_2MA,
    },
/*
    {
        .minFreq  = 28000000,
        .maxFreq  = 28070000,
        .lastFreq = 28060000,
        .lpf = USE_LPF_10,
        .txDriveStrength = SI5351_DRIVE_STRENGTH_2MA,
    },
*/
};

void ADC_Select_Channel(uint32_t ch) {
    ADC_ChannelConfTypeDef conf = {
        .Channel = ch,
        .Rank = 1,
        .SamplingTime = ADC_SAMPLETIME_28CYCLES_5,
    };
    if (HAL_ADC_ConfigChannel(&hadc1, &conf) != HAL_OK) {
        Error_Handler();
    }
} 

double ADC_ReadVoltage(uint32_t ch) {
    ADC_Select_Channel(ch);
    HAL_ADC_PollForConversion(&hadc1, HAL_MAX_DELAY);
    return ((double)HAL_ADC_GetValue(&hadc1))*3.3/4096.0;
}

// http://en.wikipedia.org/wiki/Jenkins_hash_function
uint32_t jenkinsHash(const uint8_t *data, const size_t len) {
  uint32_t hash, i;
  for(hash = i = 0; i < len; ++i) {
    hash += data[i];
    hash += (hash << 10);
    hash ^= (hash >> 6);
  }
  hash += (hash << 3);
  hash ^= (hash >> 11);
  hash += (hash << 15);
  return hash;
}

void loadKeyerConfig() {
    HAL_StatusTypeDef status;
    uint16_t savedChecksum;
    KeyerConfig_t savedKeyerConfig;

    for(;;) {
        status = HAL_I2C_IsDeviceReady(&hi2c1, eeprom_i2c_addr, 3, HAL_MAX_DELAY);
        if(status == HAL_OK)
            break;
    }

    HAL_I2C_Mem_Read(&hi2c1, eeprom_i2c_addr, KEYER_CONFIG_EEPROM_ADDR, I2C_MEMADD_SIZE_16BIT,
        (uint8_t*)&savedKeyerConfig, sizeof(savedKeyerConfig), HAL_MAX_DELAY);

    savedChecksum = savedKeyerConfig.checksum;
    savedKeyerConfig.checksum = 0;

    if((jenkinsHash((const uint8_t*)&savedKeyerConfig, sizeof(savedKeyerConfig)) & 0xFFFF) == savedChecksum) {
        keyerConfig = savedKeyerConfig;
    } else {
        LCD_Goto(0, 0);
        LCD_SendString("CHECKSUM");
        LCD_Goto(1, 0);
        LCD_SendString(" ERROR! ");
        HAL_Delay(2000);
        LCD_Clear();
    }
}

void saveKeyerConfig() {
    HAL_StatusTypeDef status;
    uint16_t checksum;
    keyerConfig.checksum = 0;

    checksum = (jenkinsHash((const uint8_t*)&keyerConfig, sizeof(keyerConfig)) & 0xFFFF);
    keyerConfig.checksum = checksum;

    for(;;) {
        status = HAL_I2C_IsDeviceReady(&hi2c1, eeprom_i2c_addr, 3, HAL_MAX_DELAY);
        if(status == HAL_OK)
            break;
    }

    HAL_I2C_Mem_Write(&hi2c1, eeprom_i2c_addr, KEYER_CONFIG_EEPROM_ADDR, I2C_MEMADD_SIZE_16BIT,
        (uint8_t*)&keyerConfig, sizeof(keyerConfig), HAL_MAX_DELAY);
}

void changeKeyerSpeed(int32_t delta) {
    keyerConfig.speedWPM += delta;
    if(keyerConfig.speedWPM < 10) {
        keyerConfig.speedWPM = 9;
        keyerConfig.straightKey = true;
        keyerConfig.ditTimeMs = 60*1000/(50*16); // as for 16 WPM
    } else {
        keyerConfig.straightKey = false;
        if(keyerConfig.speedWPM > 30) {
            keyerConfig.speedWPM = 30;
        }

        /* +1 compensates the signal rise/fall time */
        keyerConfig.ditTimeMs = 60*1000/(50*(keyerConfig.speedWPM + 1));
    }
}

void SetupCLK(uint8_t output, int32_t Fclk, si5351DriveStrength_t driveStrength) {
    static bool pllSetupDone = false;
    si5351PLLConfig_t pll_conf;
    si5351OutputConfig_t out_conf;

    si5351_Calc(Fclk, &pll_conf, &out_conf);
    if(!pllSetupDone) {
        si5351_SetupPLL(SI5351_PLL_A, &pll_conf);
        pllSetupDone = true;
    }
    si5351_SetupOutput(output, SI5351_PLL_A, driveStrength, &out_conf);
}

void enableTx(bool enable) {
    HAL_GPIO_WritePin(GPIOC, GPIO_PIN_14, enable ? GPIO_PIN_SET : GPIO_PIN_RESET);
}

void changeFrequency(int32_t delta, bool force) {
    static int32_t prevFvfo = 0;

    if((!force) && lockMode) {
        return;
    }

    if(fastMode) {
        delta *= 10;
    }
    bands[currentBand].lastFreq += 100*delta;
    if(fastMode && (delta != 0)) {
        bands[currentBand].lastFreq -= bands[currentBand].lastFreq % 1000;
    }

    if(bands[currentBand].lastFreq < bands[currentBand].minFreq) {
        bands[currentBand].lastFreq = bands[currentBand].minFreq;
    } else if(bands[currentBand].lastFreq > bands[currentBand].maxFreq) {
        bands[currentBand].lastFreq = bands[currentBand].maxFreq;
    }

    Fvfo = bands[currentBand].lastFreq + XtalFilterCenterFrequency;
    if(clarMode == CLAR_MODE_RIT) {
        Fvfo += clarOffset;
    }

    if(force || (Fvfo != prevFvfo)) {
        SetupCLK(CH_VFO, Fvfo, SI5351_DRIVE_STRENGTH_4MA);
    }

    prevFvfo = Fvfo;
}

void displayKeyerSettings() {
    char buff[16];
    if(keyerConfig.straightKey) {
        LCD_Goto(0, 0);
        LCD_SendString("SPEED --");
        LCD_Goto(1, 0);
        LCD_SendString("STRAIGHT");
    } else {
        snprintf(buff, sizeof(buff), "SPEED %02ld", keyerConfig.speedWPM);
        LCD_Goto(0, 0);
        LCD_SendString(buff);
        LCD_Goto(1, 0);
        LCD_SendString("IAMBIC  ");
    }
}

void displayFrequency() {
    char buff[16];
    snprintf(buff, sizeof(buff), "%02ld.%03ld.%01ld",
        bands[currentBand].lastFreq / 1000000,
        (bands[currentBand].lastFreq % 1000000) / 1000,
        (bands[currentBand].lastFreq % 1000) / 100);

    LCD_Goto(0, 0);
    LCD_SendString(buff);
}

bool buttonDitPressed() {
    return (HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_12) == GPIO_PIN_RESET);
}

bool buttonDahPressed() {
    return (HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_13) == GPIO_PIN_RESET);
}

void displaySMeterOrMode(bool force) {
    static const char* prevSValue = NULL;
    static uint32_t lastSMeterUpdateTime = 0;
    // don't forget to add '-u _printf_float' to LDFLAGS
    char buff[16];

    if(force) {
        LCD_Goto(1, 0);
        if(fastMode) {
            LCD_SendString("= FAST =");
            return;
        } else if(lockMode) {
            LCD_SendString("= LOCK =");
            return;
        } else if(bandMode) {
            LCD_SendString("= BAND =");
            return;
        } else if(clarMode != CLAR_MODE_DISABLED) {
            snprintf(buff, sizeof(buff), "%s%s%04d",
                clarMode == CLAR_MODE_RIT ? "RIT" : "XIT",
                clarOffset < 0 ? "-" : "+",
                abs(clarOffset));
            LCD_SendString(buff);
            return;
        }
    }

    uint32_t tstamp = HAL_GetTick();
    if(force || (tstamp - lastSMeterUpdateTime > 500)) {
        const char* sValue = NULL;
        double voltage = ADC_ReadVoltage(ADC_CHANNEL_2);

        if(voltage <= 0.035) {
            sValue = "S0      ";
        } else if(voltage <= 0.04) {
            sValue = "S1      ";
        } else if(voltage <= 0.06) {
            sValue = "S2\x02     ";
        } else if(voltage <= 0.1) {
            sValue = "S3\x02     ";
        } else if(voltage <= 0.2) {
            sValue = "S4\x02\x03    ";
        } else if(voltage <= 0.5) {
            sValue = "S5\x02\x03    ";
        } else if(voltage <= 0.9) {
            sValue = "S6\x02\x03\x04   ";
        } else if(voltage <= 1.8) {
            sValue = "S7\x02\x03\x04\x05  ";
        } else if(voltage <= 2.2) {
            sValue = "S8\x02\x03\x04\x05\x06 ";
        } else if(voltage <= 2.65) {
            sValue = "S9\x02\x03\x04\x05\x06\x07";
        } else {
            sValue = "S+\x02\x03\x04\x05\x06\x07";
        }

        if(force || (prevSValue != sValue)) {
            // Don't re-render the S-meter if we are about to transmit
            if(!buttonDitPressed() && !buttonDahPressed()) {
                LCD_Goto(1, 0);
                LCD_SendString(sValue);
            }
        }

        prevSValue = sValue;
        lastSMeterUpdateTime = tstamp;
    }
}

void keyDown() {
    // CW tone ON
    HAL_GPIO_WritePin(GPIOB, GPIO_PIN_11, GPIO_PIN_SET);
}

void keyUp() {
    // CW tone OFF
    HAL_GPIO_WritePin(GPIOB, GPIO_PIN_11, GPIO_PIN_RESET);
}

void switchLPFs(UseLPF_t lpf) {
    HAL_GPIO_WritePin(GPIOA, GPIO_PIN_10, lpf == USE_LPF_30 ? GPIO_PIN_SET : GPIO_PIN_RESET);
    HAL_GPIO_WritePin(GPIOA, GPIO_PIN_11, lpf == USE_LPF_17 ? GPIO_PIN_SET : GPIO_PIN_RESET);
    HAL_GPIO_WritePin(GPIOA, GPIO_PIN_12, lpf == USE_LPF_12 ? GPIO_PIN_SET : GPIO_PIN_RESET);
}

void changeBand(int32_t delta) {
    currentBand += delta;
    while(currentBand < 0) {
        currentBand += sizeof(bands)/sizeof(bands[0]);
    }
    currentBand %= sizeof(bands)/sizeof(bands[0]);

    switchLPFs(bands[currentBand].lpf);
    changeFrequency(0, false);
    si5351_EnableOutputs(1 << CH_VFO);
    displayFrequency();
}

void enterCWTrainerMode() {
    if(inCWTrainerMode) {
        return;
    }

    inCWTrainerMode = true;
}

void leaveCWTrainerMode() {
    if(!inCWTrainerMode) {
        return;
    }

    inCWTrainerMode = false;
}

void ensureTransmitMode() {
    if(inTransmitMode) {
        return;
    }

    int32_t targetFrequency = bands[currentBand].lastFreq;
    if(clarMode == CLAR_MODE_XIT) {
        targetFrequency += clarOffset;
    }

    SetupCLK(CH_CW, targetFrequency, bands[currentBand].txDriveStrength);
    si5351_EnableOutputs(1 << CH_CW);

    enableTx(true);

    LCD_Goto(1, 0);
    LCD_SendString("SWR  ---");

    inTransmitMode = true;
}

void ensureReceiveMode() {
    if(!inTransmitMode) {
        return;
    }
    enableTx(false);

    // Restore the original VFO
    changeFrequency(0, true);
    si5351_EnableOutputs(1 << CH_VFO);
    displaySMeterOrMode(true);
    inTransmitMode = false;
}

ButtonStatus_t buttonPressed(GPIO_TypeDef *GPIOx, uint16_t GPIO_Pin, uint32_t* lastPressed) {
    if(HAL_GPIO_ReadPin(GPIOx, GPIO_Pin) == GPIO_PIN_RESET) {
        uint32_t now = HAL_GetTick();
        if(now - *lastPressed > BUTTON_DEBOUNCE_TIME_MS) {
            *lastPressed = now;
            return BUTTON_STATUS_PRESSED;
        } else {
            return BUTTON_STATUS_DEBOUNCE;
        }
    }
    return BUTTON_STATUS_RELEASED;
}

bool switchRitMode() {
    return (HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_4) == GPIO_PIN_RESET);
}

ButtonStatus_t buttonBandPressed() {
    static uint32_t lastPressed = 0;
    return buttonPressed(GPIOB, GPIO_PIN_14, &lastPressed);
}

ButtonStatus_t buttonFastPressed() {
    static uint32_t lastPressed = 0;
    return buttonPressed(GPIOB, GPIO_PIN_15, &lastPressed);
}

ButtonStatus_t buttonLockPressed() {
    static uint32_t lastPressed = 0;
    return buttonPressed(GPIOB, GPIO_PIN_10, &lastPressed);
}

ButtonStatus_t buttonClarPressed() {
    static uint32_t lastPressed = 0;
    return buttonPressed(GPIOB, GPIO_PIN_1, &lastPressed);
}

ButtonStatus_t buttonSpotPressed() {
    // for SPOT there is no debounce
    if(HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_0) == GPIO_PIN_RESET) {
        return BUTTON_STATUS_PRESSED;
    } else {
        return BUTTON_STATUS_RELEASED;
    }
}

ButtonStatus_t buttonKeyerPressed() {
    static uint32_t lastPressed = 0;
    return buttonPressed(GPIOA, GPIO_PIN_7, &lastPressed);
}

// `straightKeyerKeyIsDown` is used to avoid calling keyUp()/keyDown() if we did it already.
// Calling HAL_GPIO_WritePin() too often generates a hearable noise.
bool straightKeyerKeyIsDown;

void initStraightKeyer() {
    straightKeyerKeyIsDown = false;
}

void processStraightKeyerLogic(bool pressed) {
    if(pressed) {
        if(!straightKeyerKeyIsDown) {
            keyDown();
            straightKeyerKeyIsDown = true;
        }
    } else if(straightKeyerKeyIsDown) {
        keyUp();
        straightKeyerKeyIsDown = false;
    }
}

void initIambicKeyer() {
    // iambic keyer doesn't need to init anything
}

void processIambicKeyerLogic(bool ditPressed, bool dahPressed) {
    int32_t now = HAL_GetTick();

    if(isSending && (now >= sendFinish)) {
        keyUp();
        isSending = false;
    }

    if(nextSend == CW_SEND_NONE) {
        if(ditPressed && (lastSent == CW_SEND_DAH)) {
            nextSend = CW_SEND_DIT;
        } else if(dahPressed && (lastSent == CW_SEND_DIT)) {
            nextSend = CW_SEND_DAH;
        } else if(now > keyReadTimeout) {
            if(ditPressed) {
                nextSend = CW_SEND_DIT;
            } else if (dahPressed) {
                nextSend = CW_SEND_DAH;
            }
        }
    }

    if((now > sendTimeout) && (nextSend != CW_SEND_NONE)) {
        if(nextSend == CW_SEND_DIT) {
            sendFinish = now + keyerConfig.ditTimeMs;
            keyReadTimeout = now + keyerConfig.ditTimeMs*2;
        } else if(nextSend == CW_SEND_DAH) {
            sendFinish = now + keyerConfig.ditTimeMs*3;
            keyReadTimeout = now + keyerConfig.ditTimeMs*3;
        }

        lastSent = nextSend;
        nextSend = CW_SEND_NONE;
        sendStart = now;
        sendTimeout = sendFinish + keyerConfig.ditTimeMs;
        isSending = true;
        keyDown();
    }
}

int32_t getDelta(TIM_HandleTypeDef* htim, int32_t *prevCounter, int32_t mult, int32_t div) {
    int32_t currCounter = __HAL_TIM_GET_COUNTER(htim);
    currCounter = mult*(currCounter / div);
    currCounter = 32767 - ((currCounter-1) & 0xFFFF) / 2;
    if(currCounter > 32768/2) {
        // convert ... 32766, 32767, 0, 1, 2 ... into:
        //               ... -2, -1, 0, 1, 2 ...
        // this simplifies `delta` calculation
        currCounter = currCounter-32768;
    }

    if(currCounter != *prevCounter) {
        int32_t delta = *prevCounter-currCounter;
        *prevCounter = currCounter;

        // debounce or skip counter overflow
        if((delta > -10) && (delta < 10)) {
            return delta;
        }
    }

    return 0;
}

void loopKeyer() {
    uint32_t CWTrainerModeEnterTime = 0;
    int32_t prevCounter = 0;
    displayKeyerSettings();
    // read the initial counter value
    (void)getDelta(&htim2, &prevCounter, MULTI_DELTA_MULT, MULTI_DELTA_DIV);

    for(;;) {
        bool ditPressed = buttonDitPressed();
        bool dahPressed = buttonDahPressed();

        if((ditPressed || dahPressed)) {
            CWTrainerModeEnterTime = HAL_GetTick();
            if(!inCWTrainerMode) {
                enterCWTrainerMode();
                if(keyerConfig.straightKey) {
                    initStraightKeyer();
                } else {
                    initIambicKeyer();
                }
            }
        } else {
            uint32_t tstamp = HAL_GetTick();
            if(tstamp - CWTrainerModeEnterTime > keyerConfig.ditTimeMs*8) {
                leaveCWTrainerMode();
            }
        }

        if(inCWTrainerMode) {
            if(keyerConfig.straightKey) {
                processStraightKeyerLogic(ditPressed);
            } else {
                processIambicKeyerLogic(ditPressed, dahPressed);
            }
        }

        int32_t delta = getDelta(&htim2, &prevCounter, MULTI_DELTA_MULT, MULTI_DELTA_DIV);
        if(delta != 0) {
            // reset the keyer logic if dit or dah is presset
            leaveCWTrainerMode();
            keyUp();
            changeKeyerSpeed(delta);
            displayKeyerSettings();
        }

        if(buttonKeyerPressed() == BUTTON_STATUS_PRESSED) {
            break;
        }

        HAL_Delay(5);
    }

    leaveCWTrainerMode();
    saveKeyerConfig();
    displayFrequency();
    displaySMeterOrMode(true);
}

void loopBand() {
    ClarMode_t prevClarMode = CLAR_MODE_DISABLED;
    int32_t prevCounter = 0;

    bandMode = true;
    displaySMeterOrMode(true);

    // read the initial counter value
    (void)getDelta(&htim1, &prevCounter, MAIN_DELTA_MULT, MAIN_DELTA_DIV);

    for(;;) {
        if(clarMode != CLAR_MODE_DISABLED) {
            if(switchRitMode()) {
                clarMode = CLAR_MODE_RIT;
            } else {
                clarMode = CLAR_MODE_XIT;
            }

            if(clarMode != prevClarMode) {
                displaySMeterOrMode(true);
                changeFrequency(0, false);
                prevClarMode = clarMode;
            }
        }

        int32_t delta = getDelta(&htim1, &prevCounter, MAIN_DELTA_MULT, MAIN_DELTA_DIV);
        if(delta != 0) {
            changeBand(delta);
        }

        if(buttonBandPressed() == BUTTON_STATUS_PRESSED) {
            break;
        }

        HAL_Delay(5);
    }

    bandMode = false;
    displaySMeterOrMode(true);
}

void loopMain() {
    static int32_t prevMainCounter = 0;
    static int32_t prevMultiCounter = 0;
    static uint32_t transmitModeEnterTime = 0;
    static uint32_t lastSWRCheckTime = 0;
    static double lastSWRValue = 0.0;
    static bool prevClarModeRit = false;
    bool ditPressed = buttonDitPressed();
    bool dahPressed = buttonDahPressed();

    if(ditPressed || dahPressed) {
        transmitModeEnterTime = HAL_GetTick();
        if(!inTransmitMode) {
            ensureTransmitMode();
            lastSWRCheckTime = 0;
            lastSWRValue = 0.0;

            if(keyerConfig.straightKey) {
                initStraightKeyer();
            } else {
                initIambicKeyer();
            }
        }
    } else {
        uint32_t tstamp = HAL_GetTick();
        if((tstamp - transmitModeEnterTime > keyerConfig.ditTimeMs*15) && (inTransmitMode)) {
            ensureReceiveMode();
            // discard any changes in counters
            (void)getDelta(&htim1, &prevMainCounter, MAIN_DELTA_MULT, MAIN_DELTA_DIV);
            (void)getDelta(&htim2, &prevMultiCounter, MULTI_DELTA_MULT, MULTI_DELTA_DIV);
        }
    }

    if(inTransmitMode) {
        if(keyerConfig.straightKey) {
            processStraightKeyerLogic(ditPressed);
        } else {
            processIambicKeyerLogic(ditPressed, dahPressed);
        }

        uint32_t tstamp = HAL_GetTick();
        if(tstamp - lastSWRCheckTime > 100) {
            double v_fwd = ADC_ReadVoltage(ADC_CHANNEL_0);
            if(v_fwd > 0) {
                double v_ref = ADC_ReadVoltage(ADC_CHANNEL_1);
                double ratio = v_ref / v_fwd;
                double swr = (1+ratio)/(1-ratio);

                if(abs(lastSWRValue - swr) > 0.2) {
                    LCD_Goto(1, 5);
                    if(swr >= 10) {
                        LCD_SendString("10+");
                    } else {
                        char buff[8];
                        snprintf(buff, sizeof(buff), "%.1f", swr);
                        LCD_SendString(buff);
                    }

                    lastSWRValue = swr;
                }

                lastSWRCheckTime = tstamp;
            }
        }
    } else {
        int32_t delta = getDelta(&htim1, &prevMainCounter, MAIN_DELTA_MULT, MAIN_DELTA_DIV);
        if(delta != 0) {
            changeFrequency(delta, false); // will do nothing in LOCK mode
            displayFrequency();
        }

        if(buttonSpotPressed() == BUTTON_STATUS_PRESSED) {
            keyDown();
        } else {
            keyUp();
        }

        bool currClarModeRit = switchRitMode();
        if((clarMode != CLAR_MODE_DISABLED) && (currClarModeRit != prevClarModeRit)) {
            if(currClarModeRit) {
                clarMode = CLAR_MODE_RIT;
            } else {
                clarMode = CLAR_MODE_XIT;
            }
            changeFrequency(0, false);
            displaySMeterOrMode(true);
            prevClarModeRit = currClarModeRit;
        }

        if((clarMode != CLAR_MODE_DISABLED) && (!fastMode) && (!lockMode)) {
            delta = getDelta(&htim2, &prevMultiCounter, MULTI_DELTA_MULT, MULTI_DELTA_DIV);
            if(delta != 0) {
                clarOffset = clarOffset + delta*50;
                if(clarOffset < -3000) {
                    clarOffset = -3000;
                } else if (clarOffset > 3000) {
                    clarOffset = 3000;
                }

                if(clarMode == CLAR_MODE_RIT) {
                    changeFrequency(0, false);
                }
                displaySMeterOrMode(true);
            }
        }

        if((buttonLockPressed() == BUTTON_STATUS_PRESSED) && (!fastMode)) {
            lockMode = !lockMode;
            if(!lockMode) {
                // discard any changes in counters
                (void)getDelta(&htim1, &prevMainCounter, MAIN_DELTA_MULT, MAIN_DELTA_DIV);
                (void)getDelta(&htim2, &prevMultiCounter, MULTI_DELTA_MULT, MULTI_DELTA_DIV);
            }
            displaySMeterOrMode(true);
        } else if(!lockMode) {
            if((buttonBandPressed() == BUTTON_STATUS_PRESSED) && (!fastMode)) {
                loopBand();
                // discard any changes in counters
                (void)getDelta(&htim1, &prevMainCounter, MAIN_DELTA_MULT, MAIN_DELTA_DIV);
                (void)getDelta(&htim2, &prevMultiCounter, MULTI_DELTA_MULT, MULTI_DELTA_DIV);
            } else if(buttonFastPressed() == BUTTON_STATUS_PRESSED) {
                fastMode = !fastMode;
                if(!fastMode) {
                    // discard any changes in counters
                    (void)getDelta(&htim1, &prevMainCounter, MAIN_DELTA_MULT, MAIN_DELTA_DIV);
                    (void)getDelta(&htim2, &prevMultiCounter, MULTI_DELTA_MULT, MULTI_DELTA_DIV);
                }
                displaySMeterOrMode(true);
            } else if(buttonClarPressed() == BUTTON_STATUS_PRESSED) {
                if(clarMode == CLAR_MODE_DISABLED) {
                    clarMode = currClarModeRit ? CLAR_MODE_RIT : CLAR_MODE_XIT;
                } else {
                    clarMode = CLAR_MODE_DISABLED;
                    changeFrequency(0, false);
                }
                clarOffset = 0;
                (void)getDelta(&htim2, &prevMultiCounter, MULTI_DELTA_MULT, MULTI_DELTA_DIV);
                displaySMeterOrMode(true);
            } else if(buttonKeyerPressed() == BUTTON_STATUS_PRESSED) {
                loopKeyer();
                // discard any changes in counters
                (void)getDelta(&htim1, &prevMainCounter, MAIN_DELTA_MULT, MAIN_DELTA_DIV);
                (void)getDelta(&htim2, &prevMultiCounter, MULTI_DELTA_MULT, MULTI_DELTA_DIV);
            }
        }

        if((clarMode == CLAR_MODE_DISABLED) && (!lockMode) && (!fastMode)) {
            displaySMeterOrMode(false);
        }
    }

    HAL_Delay(5);
}

void init() {
/*
    // Code for determining the correction factor for Si5351
    char calmsg[16];

    LCD_Init();
    LCD_Goto(0, 0);
    LCD_SendString(" Si5351 ");
    LCD_Goto(1, 0);
    snprintf(calmsg, sizeof(calmsg), "Cal; CH%d", CH_CAL);
    LCD_SendString(calmsg);

    si5351_Init(0);
    si5351PLLConfig_t pll_conf;
    si5351OutputConfig_t out_conf;
    int32_t Fclk = 10000000;

    si5351_Calc(Fclk, &pll_conf, &out_conf);
    si5351_SetupPLL(SI5351_PLL_A, &pll_conf);
    si5351_SetupOutput(CH_CAL, SI5351_PLL_A, SI5351_DRIVE_STRENGTH_4MA, &out_conf);
    si5351_EnableOutputs(1<<CH_CAL);

    while(1) {
        HAL_Delay(100);
    }
*/
    keyUp();

    // Give the LCD and Si5351 some time to initialize after powering up
    HAL_Delay(1000);

    HAL_TIM_Encoder_Start(&htim1, TIM_CHANNEL_ALL);
    HAL_TIM_Encoder_Start(&htim2, TIM_CHANNEL_ALL);
    HAL_ADC_Start(&hadc1);

    LCD_Init();
    LCD_Goto(0, 0);
    LCD_SendString(" HBR/3B ");
    LCD_Goto(1, 0);
    LCD_SendString("Jul 2022");
    HAL_Delay(1000);
    LCD_Clear();

    LCD_Goto(0, 0);
    LCD_SendString("I2C:  ");
    bool first_line = true;
    for(uint16_t i = 1; i < 128; i++) {
        HAL_StatusTypeDef res;
        res = HAL_I2C_IsDeviceReady(&hi2c1, i << 1, 1, 10);
        if(res == HAL_OK) {
            char msg[64];
            snprintf(msg, sizeof(msg), "%02X ", i);
            LCD_SendString(msg);
            if(first_line) {
                LCD_Goto(1, 0);
                first_line = false;
            }
        }
    }  
    HAL_Delay(1000);
    LCD_Clear();

    loadKeyerConfig();
    displaySMeterOrMode(true);

    si5351_Init(si5351_correction);
    changeBand(0); // calls changeFrequency()

    inTransmitMode = true;
    ensureReceiveMode();
}

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_TIM1_Init();
  MX_I2C1_Init();
  MX_TIM2_Init();
  MX_ADC1_Init();
  /* USER CODE BEGIN 2 */
  init();
  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    loopMain();
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */

  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};
  RCC_PeriphCLKInitTypeDef PeriphClkInit = {0};

  /**Initializes the CPU, AHB and APB busses clocks 
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.HSEPredivValue = RCC_HSE_PREDIV_DIV1;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLMUL = RCC_PLL_MUL7;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /**Initializes the CPU, AHB and APB busses clocks 
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2) != HAL_OK)
  {
    Error_Handler();
  }
  PeriphClkInit.PeriphClockSelection = RCC_PERIPHCLK_ADC;
  PeriphClkInit.AdcClockSelection = RCC_ADCPCLK2_DIV4;
  if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInit) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief ADC1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_ADC1_Init(void)
{

  /* USER CODE BEGIN ADC1_Init 0 */

  /* USER CODE END ADC1_Init 0 */

  ADC_ChannelConfTypeDef sConfig = {0};

  /* USER CODE BEGIN ADC1_Init 1 */

  /* USER CODE END ADC1_Init 1 */
  /**Common config 
  */
  hadc1.Instance = ADC1;
  hadc1.Init.ScanConvMode = ADC_SCAN_DISABLE;
  hadc1.Init.ContinuousConvMode = ENABLE;
  hadc1.Init.DiscontinuousConvMode = DISABLE;
  hadc1.Init.ExternalTrigConv = ADC_SOFTWARE_START;
  hadc1.Init.DataAlign = ADC_DATAALIGN_RIGHT;
  hadc1.Init.NbrOfConversion = 1;
  if (HAL_ADC_Init(&hadc1) != HAL_OK)
  {
    Error_Handler();
  }
  /**Configure Regular Channel 
  */
  sConfig.Channel = ADC_CHANNEL_0;
  sConfig.Rank = ADC_REGULAR_RANK_1;
  sConfig.SamplingTime = ADC_SAMPLETIME_239CYCLES_5;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN ADC1_Init 2 */

  /* USER CODE END ADC1_Init 2 */

}

/**
  * @brief I2C1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_I2C1_Init(void)
{

  /* USER CODE BEGIN I2C1_Init 0 */

  /* USER CODE END I2C1_Init 0 */

  /* USER CODE BEGIN I2C1_Init 1 */

  /* USER CODE END I2C1_Init 1 */
  hi2c1.Instance = I2C1;
  hi2c1.Init.ClockSpeed = 400000;
  hi2c1.Init.DutyCycle = I2C_DUTYCYCLE_2;
  hi2c1.Init.OwnAddress1 = 0;
  hi2c1.Init.AddressingMode = I2C_ADDRESSINGMODE_7BIT;
  hi2c1.Init.DualAddressMode = I2C_DUALADDRESS_DISABLE;
  hi2c1.Init.OwnAddress2 = 0;
  hi2c1.Init.GeneralCallMode = I2C_GENERALCALL_DISABLE;
  hi2c1.Init.NoStretchMode = I2C_NOSTRETCH_DISABLE;
  if (HAL_I2C_Init(&hi2c1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN I2C1_Init 2 */

  /* USER CODE END I2C1_Init 2 */

}

/**
  * @brief TIM1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM1_Init(void)
{

  /* USER CODE BEGIN TIM1_Init 0 */

  /* USER CODE END TIM1_Init 0 */

  TIM_Encoder_InitTypeDef sConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};

  /* USER CODE BEGIN TIM1_Init 1 */

  /* USER CODE END TIM1_Init 1 */
  htim1.Instance = TIM1;
  htim1.Init.Prescaler = 0;
  htim1.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim1.Init.Period = 65535;
  htim1.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim1.Init.RepetitionCounter = 0;
  htim1.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  sConfig.EncoderMode = TIM_ENCODERMODE_TI1;
  sConfig.IC1Polarity = TIM_ICPOLARITY_RISING;
  sConfig.IC1Selection = TIM_ICSELECTION_DIRECTTI;
  sConfig.IC1Prescaler = TIM_ICPSC_DIV1;
  sConfig.IC1Filter = 0;
  sConfig.IC2Polarity = TIM_ICPOLARITY_RISING;
  sConfig.IC2Selection = TIM_ICSELECTION_DIRECTTI;
  sConfig.IC2Prescaler = TIM_ICPSC_DIV1;
  sConfig.IC2Filter = 0;
  if (HAL_TIM_Encoder_Init(&htim1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim1, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM1_Init 2 */

  /* USER CODE END TIM1_Init 2 */

}

/**
  * @brief TIM2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM2_Init(void)
{

  /* USER CODE BEGIN TIM2_Init 0 */

  /* USER CODE END TIM2_Init 0 */

  TIM_Encoder_InitTypeDef sConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};

  /* USER CODE BEGIN TIM2_Init 1 */

  /* USER CODE END TIM2_Init 1 */
  htim2.Instance = TIM2;
  htim2.Init.Prescaler = 0;
  htim2.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim2.Init.Period = 65535;
  htim2.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim2.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  sConfig.EncoderMode = TIM_ENCODERMODE_TI1;
  sConfig.IC1Polarity = TIM_ICPOLARITY_RISING;
  sConfig.IC1Selection = TIM_ICSELECTION_DIRECTTI;
  sConfig.IC1Prescaler = TIM_ICPSC_DIV1;
  sConfig.IC1Filter = 0;
  sConfig.IC2Polarity = TIM_ICPOLARITY_RISING;
  sConfig.IC2Selection = TIM_ICSELECTION_DIRECTTI;
  sConfig.IC2Prescaler = TIM_ICPSC_DIV1;
  sConfig.IC2Filter = 0;
  if (HAL_TIM_Encoder_Init(&htim2, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim2, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM2_Init 2 */

  /* USER CODE END TIM2_Init 2 */

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOD_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOC, GPIO_PIN_14, GPIO_PIN_RESET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOB, GPIO_PIN_11, GPIO_PIN_RESET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOA, GPIO_PIN_10|GPIO_PIN_11|GPIO_PIN_12, GPIO_PIN_RESET);

  /*Configure GPIO pin : PC14 */
  GPIO_InitStruct.Pin = GPIO_PIN_14;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

  /*Configure GPIO pin : PA7 */
  GPIO_InitStruct.Pin = GPIO_PIN_7;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_PULLUP;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /*Configure GPIO pins : PB0 PB1 PB10 PB12 
                           PB13 PB14 PB15 PB4 */
  GPIO_InitStruct.Pin = GPIO_PIN_0|GPIO_PIN_1|GPIO_PIN_10|GPIO_PIN_12 
                          |GPIO_PIN_13|GPIO_PIN_14|GPIO_PIN_15|GPIO_PIN_4;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_PULLUP;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

  /*Configure GPIO pin : PB11 */
  GPIO_InitStruct.Pin = GPIO_PIN_11;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

  /*Configure GPIO pins : PA10 PA11 PA12 */
  GPIO_InitStruct.Pin = GPIO_PIN_10|GPIO_PIN_11|GPIO_PIN_12;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  while(1) 
  {
  }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{ 
  /* USER CODE BEGIN 6 */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
