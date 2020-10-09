__Architecting-High-Performance-Embedded-Systems__, by Jim Ledin. Published by Packt Publishing.
# Chapter 8 - Bringing up the board for the first time

Having designed, constructed, cleaned, and inspected the printed circuit board, it is now time to apply power – in other words, perform the infamous smoke test. This chapter leads you through the process of carefully providing first-time power to the board and checking basic circuit-level functionality. If you discover any problems, the chapter contains suggested approaches for fixing them. After passing those tests, it is time to add to the FPGA logic and test the digital interface to the oscilloscope board.

After completing this chapter, you will have learned how to prepare the circuit for initial power application and how to test circuit components for proper operation. You will understand how to identify and fix problems with the assembled circuit, and will have checked out the digital interface to the circuit board.

We will cover the following topics in this chapter: 
* Preparing for power-up
* Checking basic circuit functionality
* Adapting the circuit in case of problems
* Adding FPGA logic and checking I/O signals

# Chapter Files

[oscilloscope-fpga project](src/oscilloscope-fpga) contains the Vivado project for the digital oscilloscope we worked through in Chapter8.

[set_drive_letter.bat](src/set_drive_letter.bat) assigns drive letter Z: to the directory of the oscilloscope-fpga project. This is necessary to avoid exceeding the 260 character path limit enforced by Vivado. You will need to modify *set_drive_letter.bat* if you clone the repository to a location other than *C:\Projects*