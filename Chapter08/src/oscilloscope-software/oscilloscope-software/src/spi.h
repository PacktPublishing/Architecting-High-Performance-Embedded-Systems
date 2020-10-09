// SPI interface to LTC2267 ADC
// SPI clock is 166.66667 MHz / (16 * 10) = 1.042 MHz
// LTC2267 max SPI clock speed (readback) is 4.0 MHz

// Configure SPI interface; Return TRUE if successful
int InitSpi(void);

// Returns TRUE if the value was successfully written
// to and read back from the register at reg_addr
int SpiWriteAndVerify(u8 reg_addr, u8 value);

// Pass hard-coded configuration data to the ADC via
// SPI and return TRUE if successful
int ConfigureAdc(void);
