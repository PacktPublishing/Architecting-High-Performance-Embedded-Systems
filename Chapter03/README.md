__Architecting-High-Performance-Embedded-Systems__, by Jim Ledin. Published by Packt Publishing.
# Chapter 3 - Operating in real time

This chapter addresses the need for embedded systems to generate real-time responses to inputs measured from sensors and other sources. The concepts of real-time operating systems (RTOSes) and their key features are introduced, as well as some challenges that commonly occur when implementing multitasking real-time applications. The chapter concludes with a presentation of the important characteristics of some popular open source and commercial RTOS implementations.

After completing this chapter, you will understand what it means for a system to operate in real time and will know the key attributes a real-time system must exhibit. You will have learned what makes an operating system “real-time” and will understand the RTOS features that embedded systems rely upon, as well as some challenges that frequently occur in real-time embedded system designs. You will also have learned the key features of several popular RTOS implementations.

We will cover the following topics in this chapter: 
* What does real-time mean?
* Attributes of a real-time embedded system
* Understanding key RTOS features and challenges
* Popular real-time operating systems

# Chapter Files

[ControlLoop](src/ControlLoop/) is a Microsoft Visual Studio solution containing the first two C language versions of the motor control application presented in the *Performing multiple tasks* section of chapter 3.

[main_motor_control.c](src/main_motor_control.c) is the FreeRtos C language versions of the motor control application presented in the *Performing multiple tasks* section of chapter 3.