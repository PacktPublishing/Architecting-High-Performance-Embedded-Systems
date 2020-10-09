__Architecting-High-Performance-Embedded-Systems__, by Jim Ledin. Published by Packt Publishing.
# Chapter 5 - Implementing systems with FPGAs

This chapter dives into the process of designing and implementing systems with FPGAs. It begins with a description of the FPGA compilation software tools that convert a description of a logic design in a programming language into an executable FPGA configuration. We will discuss the types of algorithms best suited for FPGA implementation and suggest a decision approach for determining if a particular embedded system algorithm is better suited for implementation using a traditional processor or with an FPGA. The chapter ends with the step-by-step development of a baseline FPGA-based processor project that will be expanded to implement a high-speed digital oscilloscope using circuitry and software developed in later chapters.

After completing this chapter, you will have learned about the processing steps performed by FPGA compilation software and will understand the types of algorithms best suited for FPGA implementation. You will know how to determine if FPGA implementation is right for a given design and will have worked through a real FPGA system development project for a high-performance processing application.

We will cover the following topics in this chapter: 
* The FPGA compilation process
* Algorithm types most suitable for FPGA implementation
* How to decide if an FPGA is appropriate for an application
* Kicking off the oscilloscope FPGA project

# Chapter Files

[Adder4LUT.vhd](src/Adder4LUT.vhd) is a VHDL file containing the lookup table version of the 4-bit adder presented in the *Design entry* section of chapter 5.

[Adder4Native.vhd](src/Adder4Native.vhd) is a VHDL file containing the VHDL-native version of the 4-bit adder presented in the *Design entry* section of chapter 5.

[ArtyAdder.vhd](src/ArtyAdder.vhd) is a VHDL file that can call any of the 4-bit adder implementations by modifying two lines containing the name of the adder implementation as described in the *Design optimization* section of chapter 5.

[ArtyAdder4HLS.vhd](src/ArtyAdder4HLS.vhd) is a high-level synthesis (HLS) C language file implementing the 4-bit adder presented in the *High-level synthesis* section of chapter 5.

[ArtyAdder4HLSWrapper.vhd](src/ArtyAdder4HLSWrapper.vhd) is a a VHDL wrapper for the HLS version of the 4-bit adder presented in the *High-level synthesis* section of chapter 5.

[oscilloscope-fpga project](src/oscilloscope-fpga) contains the Vivado project for the digital oscilloscope we worked through in Chapter 5.

[oscilloscope-software project](src/oscilloscope-software) contains the Vitis C language software project for the digital oscilloscope we worked through in Chapter 5.
