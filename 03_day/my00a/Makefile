TOOLPATH = ../../z_tools/
MAKE     = make -r
NASM     = nasm
NASK     = $(TOOLPATH)nask
EDIMG    = $(TOOLPATH)edimg
IMGTOL   = $(TOOLPATH)imgtol
COPY     = cp
DEL      = rm -f

# �f�t�H���g����

default :
	$(MAKE) img

# �t�@�C�������K��
ipl.bin : ipl.nas Makefile
	$(NASM) ipl.nas -o ipl.bin -l ipl.lst

haribote.img : ipl.bin Makefile
	mformat -f 1440 -C -B ipl.bin -i haribote.img ::

# �R�}���h

asm :
	$(MAKE) ipl.bin

img :
	$(MAKE) haribote.img

run :
	$(MAKE) img
	$(COPY) haribote.img ../../z_tools/qemu/fdimage0.bin
	$(MAKE) -C ../../z_tools/qemu

install :
	$(MAKE) img
	$(IMGTOL) w a: haribote.img

clean :
	-$(DEL) ipl.bin
	-$(DEL) ipl.lst

src_only :
	$(MAKE) clean
	-$(DEL) haribote.img
