#include <cstdio>

void InitializeSystem(void);
void WaitFor20msTimer(void);
void UpdateMotorControl(void);
void UpdateStatusDisplay1(void);
void UpdateStatusDisplay2(void);

void InitializeSystem(void) {}
void WaitFor20msTimer(void) {}
void UpdateMotorControl(void) { printf("MotorControl\n"); }
void UpdateStatusDisplay1(void) { printf("StatusDisplay1\n"); }
void UpdateStatusDisplay2(void) { printf("StatusDisplay2\n"); }


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
            UpdateStatusDisplay1();
        }
        else if (pass_count == 2)
        {
            UpdateStatusDisplay2();
        }
        else if (pass_count == status_display_interval)
        {
            pass_count = 0;
        }
    }

    return 0;
}