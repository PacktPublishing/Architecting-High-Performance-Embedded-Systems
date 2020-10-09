#
# This file was created by Xilinx Vitis tool.
#


#
# tools
#

RM = rm -f
RMDIR = rm -rf



#
# variables
#


#
# primary build targets
#

all: package

package:
	-@echo Skipping SD card image generation. Reason: "The system project only has applications for microblaze processors."

clean:
	$(RMDIR) ./_sds
	${RMDIR} package
	${RM} system.bif

.PHONY: all package clean


