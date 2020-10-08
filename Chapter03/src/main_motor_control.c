#include <stdio.h>

#include "FreeRTOS.h"
#include "task.h"

void InitializeSystem(void);
void UpdateMotorControl(void);
void UpdateStatusDisplay(void);

void InitializeSystem(void) {}
void UpdateMotorControl(void) { printf("MotorControl\n"); }
void UpdateStatusDisplay(void) { printf("StatusDisplay\n"); }

static void StatusDisplayTask(void* parameters)
{
    TickType_t next_wake_time = xTaskGetTickCount();
    for (;;)
    {
        const TickType_t block_time = pdMS_TO_TICKS(100);

        vTaskDelayUntil(&next_wake_time, block_time);

        UpdateStatusDisplay();
    }
}

static void MotorControlTask(void* parameters)
{
    TickType_t next_wake_time = xTaskGetTickCount();
    for (;;)
    {
        const TickType_t block_time = pdMS_TO_TICKS(20);

        vTaskDelayUntil(&next_wake_time, block_time);

        UpdateMotorControl();
    }
}

void main_motor_control(void)
{
    xTaskCreate(StatusDisplayTask, "StatusDisplay",
        configMINIMAL_STACK_SIZE,
        NULL, (tskIDLE_PRIORITY + 1), NULL);

    xTaskCreate(MotorControlTask, "MotorControl",
        configMINIMAL_STACK_SIZE, NULL,
        (tskIDLE_PRIORITY + 2), NULL);

    InitializeSystem();

    vTaskStartScheduler();

    // This point only reached if memory allocation
    // fails during startup
    for (;;);
}
