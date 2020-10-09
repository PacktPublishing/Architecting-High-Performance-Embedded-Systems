REM Use this batch file to set a drive letter for the project base directory.
REM This file assumes the GitHub repository has been cloned to C:\Projects\
REM This is necessary because Vivado complains about a 260 character path limit.

net use Z: \\localhost\c$\Projects\Architecting-High-Performance-Embedded-Systems\Chapter08\src
