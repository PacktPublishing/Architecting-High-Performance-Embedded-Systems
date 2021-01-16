__Architecting-High-Performance-Embedded-Systems__, by Jim Ledin. Published by Packt Publishing.
# Chapter 9 - The Firmware Development Process

Now that we have a functioning circuit board, it is time to flesh out some key portions of the Field Programmable Gate Array (FPGA) algorithm, including communication with the analog-to-digital converter (ADC), and continue the development of the MicroBlaze processor firmware. When developing firmware, it is important to make use of appropriate tools to ensure that the source code is subjected to static analysis where possible, which can head off many errors that are otherwise difficult to debug. It is also important to implement a version control system to track the evolution of the code over the project life cycle. We will discuss the importance of developing a comprehensive, at least partially automated test suite to maintain code quality as changes are made. This chapter includes several recommendations for free and commercial tools that perform each of these functions.

After completing this chapter, you will have learned how to design efficient FPGA algorithms and develop embedded C code in a maintainable style. You will understand the basics of using static source code analysis with embedded system source code and will be familiar with the basics of Git version control. Finally, you will have learned the fundamentals of test-driven development as applied to embedded systems.

We will cover the following topics in this chapter:
* Designing and implementing the FPGA algorithm
* Coding style
* Statically analyzing source code
* Source code version control
* Test-driven development

# Chapter Files

[oscilloscope-fpga project](src/oscilloscope-fpga) contains the Vivado project for the digital oscilloscope we worked through in Chapter 9.

[oscilloscope-software project](src/oscilloscope-software) contains the Vitis C language software project for the digital oscilloscope we worked through in Chapter 9.

[set_drive_letter.bat](src/set_drive_letter.bat) assigns drive letter Z: to the directory containing the oscilloscope-fpga and oscilloscope-software projects. This is necessary to avoid exceeding the 260 character path limit enforced by Vivado. You will need to modify *set_drive_letter.bat* if you clone the repository to a location other than *C:\Projects*