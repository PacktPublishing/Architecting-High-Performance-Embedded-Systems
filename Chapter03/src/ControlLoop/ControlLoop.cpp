#include <cstdio>

void InitializeSystem(void);
void WaitFor20msTimer(void);
void UpdateMotorControl(void);
void UpdateStatusDisplay(void);

void InitializeSystem(void) {}
void WaitFor20msTimer(void) {}
void UpdateMotorControl(void) { printf("MotorControl\n");  }
void UpdateStatusDisplay(void) { printf("StatusDisplay\n");  }


int main()
{
    InitializeSystem();

    int pass_count = 0;
    const int status_display_interval = 5;

    for (;;)
    {
        WaitFor20msTimer();

        UpdateMotorControl();

        ++pass_count;

        if (pass_count == 1)
        {
            UpdateStatusDisplay();
        }
        else if (pass_count == status_display_interval)
        {
            pass_count = 0;
        }
    }

    return 0;
}