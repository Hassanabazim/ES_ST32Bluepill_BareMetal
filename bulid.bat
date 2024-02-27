@echo off
echo ------------------------------------------------------------------------------
echo Author : Hassan Abdelazeam Abdelsalam elsayed
echo Tool   : GNU ARM Toolchain building process for cortex-m3 and armv7-m  
echo Target : STM32F103C8
echo version: Version 1.0.0 
echo ------------------------------------------------------------------------------

REM Define variables
set CC=arm-none-eabi
set CTOOL=-gcc
set CSIZE=-size
set CDUMP=-objdump
set CFMT=-objcopy
set MACH=cortex-m3
set CFLAGS=-mcpu=%MACH% -march=armv7-m -mfloat-abi=soft -save-temps -O0 -mthumb @path.list
set LFLAGS=--specs=nano.specs -Wl,-Map,"out.map" -Wl,-T"linker.ld"
set OPENOCD_Debug="board\stm32f103c8_blue_pill.cfg"
set STLINK_Prog="STM32_Programmer_CLI.exe"

REM Clean the workspace
:clean
rm -rf *.o *.elf *.hex *.bin *.s *.d *.i *map *.symtab *.section *.lst
echo project successfully cleaned

REM Build object files
:build_objects
%CC%%CTOOL% -c %CFLAGS% @src.list
echo intermediate and assembly saved
echo Finished building : objects generated(compiler)

REM Link objects to create ELF file
:link_elf
%CC%%CTOOL% %CFLAGS% %LFLAGS% *.o -o out.elf
echo Finished building : out.elf(linker)

REM Create HEX file from ELF
:hex_conversion
%CC%%CFMT% -O ihex out.elf out.hex
echo Finished building : out.hex

REM Create BIN file from ELF
:bin_conversion
%CC%%CFMT% -O binary out.elf out.bin
echo Finished building : out.bin

REM Generate symbol table for entire project
:symtab_project
%CC%%CDUMP% --syms *.o > all.symtab
echo Finished building : objects.symtab

REM Generate symbol table for output ELF
:symtab_output
%CC%%CDUMP% --syms out.elf > out.symtab
echo Finished building : out.symtab

REM Generate section information for entire project
:section_project
%CC%%CDUMP% -h *.o > all.section
echo Finished building : objects.section

REM Generate section information for output ELF
:section_output
%CC%%CDUMP% -h out.elf > out.section
echo Finished building : out.section

REM Generate list file
:list_file
%CC%%CDUMP% -h -S out.elf > out.lst
echo Finished building : out.lst

REM Generate size information
:size_info
%CC%%CSIZE% out.elf > out.d
echo Finished building : out.size
%CC%%CSIZE% out.elf



echo ------------------------------------------------------------------------------
echo Choose an option:
echo 1 - FLASH ON MCU
echo 2 - DEBUG ON MCU
echo ------------------------------------------------------------------------------

choice /c 12 /n /m "Enter your choice:"

if errorlevel 2 (
    goto out.debug
) else if errorlevel 1 (
    goto out.flash
)

:out.flash
%STLINK_Prog% --connect port=SWD freq=4000 shared sn="300008000C0000544334544E"   --download out.hex
pause
exit

:out.debug
openocd -f %OPENOCD_Debug%
pause
exit
