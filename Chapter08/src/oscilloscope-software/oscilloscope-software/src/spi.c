#include <xspi.h>
#include "spi.h"

static XSpi SpiInstance;

// Configure SPI interface; Return TRUE if successful
int InitSpi(void) {
    int result;

    result = XSpi_Initialize(&SpiInstance,
    XPAR_SPI_0_DEVICE_ID);
    if (result != XST_SUCCESS)
        return FALSE;

    result = XSpi_SelfTest(&SpiInstance);
    if (result != XST_SUCCESS)
        return FALSE;

    result = XSpi_SetOptions(&SpiInstance,
    XSP_MASTER_OPTION | XSP_MANUAL_SSELECT_OPTION);
    if (result != XST_SUCCESS)
        return FALSE;

    result = XSpi_Start(&SpiInstance);
    if (result != XST_SUCCESS)
        return FALSE;

    XSpi_IntrGlobalDisable(&SpiInstance);

    return TRUE;
}

// Send one byte to, or read one byte from the ADC
static int do_transfer(u8 cmd, u8 reg_addr,
        u8 output_value, u8 *input_value) {
    u8 out_buf[2] = { cmd | reg_addr, output_value };
    u8 in_buf[2] = { 0 };
    const int buf_len = 2;
    u32 select_mask = 1;

    // Valid commands: 0x00 = write, 0x80 = read
    Xil_AssertNonvoid(cmd == 0x00 || cmd == 0x80);

    int result = XSpi_SetSlaveSelect(&SpiInstance,
            select_mask);

    if (result == XST_SUCCESS) {
        result = XSpi_Transfer(&SpiInstance, out_buf,
                in_buf, buf_len);
        *input_value = in_buf[1];
    }

    return (result == XST_SUCCESS) ? TRUE : FALSE;
}

// Returns TRUE if the value was successfully written
// to and read back from the register at reg_addr
int SpiWriteAndVerify(u8 reg_addr, u8 value) {
    const u8 write_cmd = 0;
    const u8 read_cmd = 0x80;
    u8 input_value;
    int result;

    switch (reg_addr) {
    case 0:
        // The only valid value for reg 0 is 0x80
        result = (value == 0x80) ? TRUE : FALSE;

        if (result == TRUE)
            result = do_transfer(write_cmd, reg_addr,
                    value, &input_value);

        break;

    case 1:
    case 2:
    case 3:
    case 4: {
        result = do_transfer(write_cmd, reg_addr,
                value, &input_value);

        if (result == TRUE) {
            result = do_transfer(read_cmd, reg_addr, 0,
                    &input_value);
            xil_printf("Value read back %02X\n",
                    input_value);

            if (value != input_value)
                result = FALSE;
        }

        break;
    }

    default:
        result = FALSE;
    }

    return result;
}

// Pass hard-coded configuration data to the ADC via
// SPI and return TRUE if successful
int ConfigureAdc(void) {
    // REGISTER A0: RESET REGISTER (ADDRESS 00h)
    // Bit 7 1 = Software Reset. All Mode Control Registers Are Reset to 00h.
    //      The ADC is momentarily placed in SLEEP mode.
    //      This Bit Is Automatically Set Back to Zero at the End of the SPI Write Command.
    // Bits 6-0 Unused, Don’t Care Bits.
    const u8 reg0 = 0x80;

    // REGISTER A1: POWER-DOWN REGISTER (ADDRESS 01h)
    // Bit 7 DCSOFF Clock Duty Cycle Stabilizer Bit
    //      0 = Clock Duty Cycle Stabilizer On [SELECTED]
    //      1 = Clock Duty Cycle Stabilizer Off. This is Not Recommended.
    // Bit 6 RAND Data Output Randomizer Mode Control Bit
    //      0 = Data Output Randomizer Mode Off [SELECTED]
    //      1 = Data Output Randomizer Mode On
    // Bit 5 TWOSCOMP Two’s Complement Mode Control Bit
    //      0 = Offset Binary Data Format
    //      1 = Two’s Complement Data Format [SELECTED]
    // Bits 4,3,0 SLEEP:NAP_2:NAP_1 Sleep/Nap Mode Control Bits
    //      000 = Normal Operation
    //      0X1 = Channel 1 in Nap Mode
    //      01X = Channel 2 in Nap Mode [SELECTED]
    //      1XX = Sleep Mode. Both Channels Are Disabled
    //      Note: Any Combination of Channels Can Be Placed in Nap Mode.
    // Bits 2,1 Unused, Don’t Care Bits.
    const u8 reg1 = 0x28;

    // REGISTER A2: OUTPUT MODE REGISTER (ADDRESS 02h)
    // Bits 7-5 ILVDS2:ILVDS0 LVDS Output Current Bits
    //     000 = 3.5mA LVDS Output Driver Current [SELECTED]
    //     001 = 4.0mA LVDS Output Driver Current
    //     010 = 4.5mA LVDS Output Driver Current
    //     011 = Not Used
    //     100 = 3.0mA LVDS Output Driver Current
    //     101 = 2.5mA LVDS Output Driver Current
    //     110 = 2.1mA LVDS Output Driver Current
    //     111 = 1.75mA LVDS Output Driver Current
    // Bit 4 TERMON LVDS Internal Termination Bit
    //     0 = Internal Termination Off [SELECTED]
    //     1 = Internal Termination On. LVDS Output Driver Current is 2x the Current
    //         Set by ILVDS2:ILVDS0. Internal termination should only be
    //     used with 1.75mA, 2.1mA or 2.5mA LVDS output current modes.
    // Bit 3 OUTOFF Output Disable Bit
    //     0 = Digital Outputs are enabled. [SELECTED]
    //     1 = Digital Outputs are disabled.
    // Bits 2-0 OUTMODE2:OUTMODE0 Digital Output Mode Control Bits
    //     000 = 2-Lanes, 16-Bit Serialization [SELECTED]
    //     001 = 2-Lanes, 14-Bit Serialization
    //     010 = 2-Lanes, 12-Bit Serialization
    //     011 = Not Used
    //     100 = Not Used
    //     101 = 1-Lane, 14-Bit Serialization
    //     110 = 1-Lane, 12-Bit Serialization
    //     111 = 1-Lane, 16-Bit Serialization
    const u8 reg2 = 0x00;

    // REGISTER A3: TEST PATTERN MSB REGISTER (ADDRESS 03h)
    // Bit 7 OUTTEST Digital Output Test Pattern Control Bit
    //     0 = Digital Output Test Pattern Off
    //     1 = Digital Output Test Pattern On  [SELECTED]
    // Bit 6 Unused, Don’t Care Bit.
    // Bits 5-0 TP13:TP8 Test Pattern Data Bits (MSB)
    //     TP13:TP8 Set the Test Pattern for Data Bit 13 (MSB) Through Data Bit 8.
    const u8 reg3 = 0xB3;

    // REGISTER A4: TEST PATTERN LSB REGISTER (ADDRESS 04h)
    // Bits 7-0 TP7:TP0 Test Pattern Data Bits (LSB)
    //     TP7:TP0 Set the Test Pattern for Data Bit 7 Through Data Bit 0 (LSB).
    const u8 reg4 = 0x33; //0x5A;

    xil_printf("Register 0: Writing %02X\n", reg0);
    int result = SpiWriteAndVerify(0, reg0);

    if (result == TRUE) {
        xil_printf("Register 1: Writing %02X\n", reg1);
        result = SpiWriteAndVerify(1, reg1);
    }

    if (result == TRUE) {
        xil_printf("Register 2: Writing %02X\n", reg2);
        result = SpiWriteAndVerify(2, reg2);
    }

    if (result == TRUE) {
        xil_printf("Register 3: Writing %02X\n", reg3);
        result = SpiWriteAndVerify(3, reg3);
    }

    if (result == TRUE) {
        xil_printf("Register 4: Writing %02X\n", reg4);
        result = SpiWriteAndVerify(4, reg4);
    }

    return result;
}
