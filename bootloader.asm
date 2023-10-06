org 0x7c00   ; The bootloader should start at memory address 0x7c00

mov ah, 0x0e  ; Set up AH register for printing
mov al, 'H'   ; Load 'H' into AL register
int 0x10      ; Call BIOS interrupt to print character

mov al, 'e'   ; Load 'e' into AL register
int 0x10      ; Call BIOS interrupt to print character

mov al, 'l'   ; Load 'l' into AL register
int 0x10      ; Call BIOS interrupt to print character

mov al, 'l'   ; Load 'l' into AL register
int 0x10      ; Call BIOS interrupt to print character

mov al, 'o'   ; Load 'o' into AL register
int 0x10      ; Call BIOS interrupt to print character

mov al, ','   ; Load ',' into AL register
int 0x10      ; Call BIOS interrupt to print character

mov al, ' '   ; Load ' ' into AL register
int 0x10      ; Call BIOS interrupt to print character

mov al, 'W'   ; Load 'W' into AL register
int 0x10      ; Call BIOS interrupt to print character

mov al, 'o'   ; Load 'o' into AL register
int 0x10      ; Call BIOS interrupt to print character

mov al, 'r'   ; Load 'r' into AL register
int 0x10      ; Call BIOS interrupt to print character

mov al, 'l'   ; Load 'l' into AL register
int 0x10      ; Call BIOS interrupt to print character

mov al, 'd'   ; Load 'd' into AL register
int 0x10      ; Call BIOS interrupt to print character

cli           ; Disable interrupts
hlt           ; Halt the CPU
times 510 - ($ - $$) db 0  ; Fill the rest of the boot sector with zeros
dw 0xaa55     ; Magic number to mark it as a bootable sector