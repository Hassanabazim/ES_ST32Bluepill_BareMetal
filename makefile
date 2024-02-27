CC = arm-none-eabi
CTOOL = -gcc
CSIZE = -size
CDUMP = -objdump
CFMT = -objcopy
MACH = cortex-m3

CFLAGS =-mcpu=$(MACH) -march=armv7-m   -mfloat-abi=soft -save-temps -O0 -mthumb @path.list
LFLAGS = --specs=nano.specs -Wl,-Map,"out.map" -Wl,-T"linker.ld"  
LFLAGS_SH = --specs=rdimon.specs -Wl,-Map,"out.map" -Wl,-T"linker.ld" 

OPENOCD_Debug = "board\stm32f103c8_blue_pill.cfg"
STLINK_Prog = "STM32_Programmer_CLI.exe"


out.o:
	$(CC)$(CTOOL) -c $(CFLAGS) @src.list
	@echo 'intermediate and assembly saved'
	@echo 'Finished building : objects generated(compiler)'

out.elf:
	$(CC)$(CTOOL) $(CFLAGS) $(LFLAGS) *.o -o $@
	@echo 'Finished building : out.elf(linker)'
	
out_sh.elf:
	rm -rf syscalls.o
	$(CC)$(CTOOL) $(CFLAGS) $(LFLAGS_SH) *.o -o $@

out.hex:out.elf 
	$(CC)$(CFMT)  -O ihex  $^  $@
	@echo 'Finished building : $@'
 
out.bin:out.elf
	$(CC)$(CFMT) -O binary  $^  $@
	@echo 'Finished building : $@'
	
out.size:out.elf
	$(CC)$(CSIZE)   $^ > $@
	@echo 'Finished building : $@'

out.lst:out.elf
	$(CC)$(CDUMP) -h -S  $^  > $@
	@echo 'Finished building : $@'

all.symtab:*.o
	$(CC)$(CDUMP) --syms $^ > $@
	@echo 'Finished building : $@'

out.symtab:out.elf
	$(CC)$(CDUMP) --syms $^ > $@
	@echo 'Finished building : $@'
	
all.section :
	$(CC)$(CDUMP) -h *.o > $@
	@echo 'Finished building : $@'
	
out.section:out.elf
	$(CC)$(CDUMP) -h $^ > $@
	@echo 'Finished building : $@'
	

out.debug:
	openocd -f  $(OPENOCD_Debug)
	
out.flash : out.hex
	$(STLINK_Prog) --connect port=SWD freq=4000 shared sn="300008000C0000544334544E" --download $^
	
clean:
	rm -rf *.o *.elf *.hex *.bin *.s *.size *.i *map *.symtab *.section *.lst
	@echo 'project successfully  cleaned'

	