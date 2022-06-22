################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
ra/%.o: ../ra/%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: GNU Compiler'
	"C:/ti/msp430-gcc/bin/msp430-elf-gcc-9.3.1.exe" -c -mmcu=msp430f5529 -mhwmult=f5series -I"C:/ti/ccs1110/ccs/ccs_base/msp430/include_gcc" -I"D:/Documents/CCS projects/PISTIS RA/ra" -I"D:/Documents/CCS projects/PISTIS RA" -I"C:/ti/msp430-gcc/msp430-elf/include" -Og -g -gdwarf-3 -gstrict-dwarf -w -mlarge -mcode-region=none -mdata-region=lower -MMD -MP -MF"ra/$(basename $(<F)).d_raw" -MT"$(@)"  $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


