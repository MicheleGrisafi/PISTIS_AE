################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: GNU Compiler'
	"/home/michele/Programs/ccs930/ccs/tools/compiler/msp430-gcc-9.2.0.50_linux64/bin/msp430-elf-gcc-9.2.0" -c -mmcu=msp430f5529 -mhwmult=f5series -I"/home/michele/Programs/ccs930/ccs/ccs_base/msp430/include_gcc" -I"/home/michele/Documents/KUL/IDE/workspace/PISTIS debug" -I"/home/michele/Programs/ccs930/ccs/tools/compiler/msp430-gcc-9.2.0.50_linux64/msp430-elf/include" -Og -g -gdwarf-3 -gstrict-dwarf -w -mlarge -mcode-region=none -mdata-region=lower -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)"  $(GEN_OPTS__FLAG) -o"$@" "$(shell echo $<)"
	@echo 'Finished building: "$<"'
	@echo ' '

%.o: ../%.s $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: GNU Compiler'
	"/home/michele/Programs/ccs930/ccs/tools/compiler/msp430-gcc-9.2.0.50_linux64/bin/msp430-elf-gcc-9.2.0" -c -mmcu=msp430f5529 -mhwmult=f5series -I"/home/michele/Programs/ccs930/ccs/ccs_base/msp430/include_gcc" -I"/home/michele/Documents/KUL/IDE/workspace/PISTIS debug" -I"/home/michele/Programs/ccs930/ccs/tools/compiler/msp430-gcc-9.2.0.50_linux64/msp430-elf/include" -Og -g -gdwarf-3 -gstrict-dwarf -w -mlarge -mcode-region=none -mdata-region=lower -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -x assembler-with-cpp $(GEN_OPTS__FLAG) -o"$@" "$(shell echo $<)"
	@echo 'Finished building: "$<"'
	@echo ' '


