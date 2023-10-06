# AIOS
This is an os created entirely by AI (shocker) currently it is very basic, but if you have the time please contribute, remember, only use ChatGPT to add updates, features etc, no humans allowed. If you do help and add more AI code, thanks :)

This was compiled by running these commands on linux (in the location the source files are):

nasm -f bin -o bootloader.bin bootloader.asm
dd if=/dev/zero of=bootable.img bs=512 count=2880
dd if=bootloader.bin of=bootable.img conv=notrunc
