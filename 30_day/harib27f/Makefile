TOOLPATH = ../../z_tools/
INCPATH  = ../../z_tools/haribote/

MAKE     = make -r
EDIMG    = $(TOOLPATH)edimg
IMGTOL   = $(TOOLPATH)imgtol
COPY     = cp
DEL      = rm -f

# �f�t�H���g����

default :
	$(MAKE) haribote.img

# �t�@�C�������K��

haribote.img : haribote/ipl09.bin haribote/haribote.sys Makefile \
		a/a.hrb hello3/hello3.hrb hello4/hello4.hrb \
		winhelo/winhelo.hrb winhelo2/winhelo2.hrb winhelo3/winhelo3.hrb \
		star1/star1.hrb stars/stars.hrb stars2/stars2.hrb \
		lines/lines.hrb walk/walk.hrb noodle/noodle.hrb \
		beepdown/beepdown.hrb color/color.hrb color2/color2.hrb \
		sosu/sosu.hrb sosu2/sosu2.hrb sosu3/sosu3.hrb \
		cat/cat.hrb iroha/iroha.hrb \
		chklang/chklang.hrb notrec/notrec.hrb bball/bball.hrb \
		invader/invader.hrb calc/calc.hrb tview/tview.hrb \
		gview/gview.hrb
		mformat -f 1440 -C -B haribote/ipl09.bin -i haribote.img ::
		mcopy haribote/haribote.sys -i haribote.img ::
		mcopy haribote/ipl09.nas -i haribote.img ::
	  mcopy a/a.hrb -i haribote.img ::
	  mcopy hello3/hello3.hrb -i haribote.img ::
	  mcopy hello4/hello4.hrb -i haribote.img ::
	  mcopy winhelo/winhelo.hrb -i haribote.img ::
	  mcopy winhelo2/winhelo2.hrb -i haribote.img ::
	  mcopy winhelo3/winhelo3.hrb -i haribote.img ::
	  mcopy star1/star1.hrb -i haribote.img ::
	  mcopy stars/stars.hrb -i haribote.img ::
	  mcopy stars2/stars2.hrb -i haribote.img ::
	  mcopy lines/lines.hrb -i haribote.img ::
	  mcopy walk/walk.hrb -i haribote.img ::
	  mcopy noodle/noodle.hrb -i haribote.img ::
	  mcopy beepdown/beepdown.hrb -i haribote.img ::
	  mcopy color/color.hrb -i haribote.img ::
	  mcopy color2/color2.hrb -i haribote.img ::
	  mcopy sosu/sosu.hrb -i haribote.img ::
	  mcopy sosu2/sosu2.hrb -i haribote.img ::
	  mcopy sosu3/sosu3.hrb -i haribote.img ::
	  mcopy cat/cat.hrb -i haribote.img ::
	  mcopy iroha/iroha.hrb -i haribote.img ::
	  mcopy chklang/chklang.hrb -i haribote.img ::
	  mcopy notrec/notrec.hrb -i haribote.img ::
	  mcopy bball/bball.hrb -i haribote.img ::
	  mcopy invader/invader.hrb -i haribote.img ::
	  mcopy calc/calc.hrb -i haribote.img ::
	  mcopy tview/tview.hrb -i haribote.img ::
	  mcopy gview/gview.hrb -i haribote.img ::
	  mcopy pictdata/fujisan.jpg -i haribote.img ::
	  mcopy pictdata/night.bmp -i haribote.img ::
	  mcopy nihongo/nihongo.fnt -i haribote.img ::
	  mcopy test.txt -i haribote.img ::

# �R�}���h

run :
	$(MAKE) haribote.img
	$(COPY) haribote.img ../../z_tools/qemu/fdimage0.bin
	$(MAKE) -C ../../z_tools/qemu

run_only :
	$(COPY) haribote.img ../../z_tools/qemu/fdimage0.bin
	$(MAKE) -C ../../z_tools/qemu

install :
	$(MAKE) haribote.img
	$(IMGTOL) w a: haribote.img

full :
	$(MAKE) -C haribote
	$(MAKE) -C apilib
	$(MAKE) -C a
	$(MAKE) -C hello3
	$(MAKE) -C hello4
	$(MAKE) -C hello5
	$(MAKE) -C winhelo
	$(MAKE) -C winhelo2
	$(MAKE) -C winhelo3
	$(MAKE) -C star1
	$(MAKE) -C stars
	$(MAKE) -C stars2
	$(MAKE) -C lines
	$(MAKE) -C walk
	$(MAKE) -C noodle
	$(MAKE) -C beepdown
	$(MAKE) -C color
	$(MAKE) -C color2
	$(MAKE) -C sosu
	$(MAKE) -C sosu2
	$(MAKE) -C sosu3
	$(MAKE) -C type
	$(MAKE) -C iroha
	$(MAKE) -C chklang
	$(MAKE) -C notrec
	$(MAKE) -C bball
	$(MAKE) -C invader
	$(MAKE) -C calc
	$(MAKE) -C tview
	$(MAKE) -C mmlplay
	$(MAKE) -C gview
	$(MAKE) haribote.img

run_full :
	$(MAKE) full
	$(COPY) haribote.img ../../z_tools/qemu/fdimage0.bin
	$(MAKE) -C ../../z_tools/qemu

install_full :
	$(MAKE) full
	$(IMGTOL) w a: haribote.img

run_os :
	$(MAKE) -C haribote
	$(MAKE) run

clean :
# �������Ȃ�

src_only :
	$(MAKE) clean
	-$(DEL) haribote.img

clean_full :
	$(MAKE) -C haribote		clean
	$(MAKE) -C apilib		clean
	$(MAKE) -C a			clean
	$(MAKE) -C hello3		clean
	$(MAKE) -C hello4		clean
	$(MAKE) -C hello5		clean
	$(MAKE) -C winhelo		clean
	$(MAKE) -C winhelo2		clean
	$(MAKE) -C winhelo3		clean
	$(MAKE) -C star1		clean
	$(MAKE) -C stars		clean
	$(MAKE) -C stars2		clean
	$(MAKE) -C lines		clean
	$(MAKE) -C walk			clean
	$(MAKE) -C noodle		clean
	$(MAKE) -C beepdown		clean
	$(MAKE) -C color		clean
	$(MAKE) -C color2		clean
	$(MAKE) -C sosu			clean
	$(MAKE) -C sosu2		clean
	$(MAKE) -C sosu3		clean
	$(MAKE) -C type			clean
	$(MAKE) -C iroha		clean
	$(MAKE) -C chklang		clean
	$(MAKE) -C notrec		clean
	$(MAKE) -C bball		clean
	$(MAKE) -C invader		clean
	$(MAKE) -C calc			clean
	$(MAKE) -C tview		clean
	$(MAKE) -C mmlplay		clean
	$(MAKE) -C gview		clean

src_only_full :
	$(MAKE) -C haribote		src_only
	$(MAKE) -C apilib		src_only
	$(MAKE) -C a			src_only
	$(MAKE) -C hello3		src_only
	$(MAKE) -C hello4		src_only
	$(MAKE) -C hello5		src_only
	$(MAKE) -C winhelo		src_only
	$(MAKE) -C winhelo2		src_only
	$(MAKE) -C winhelo3		src_only
	$(MAKE) -C star1		src_only
	$(MAKE) -C stars		src_only
	$(MAKE) -C stars2		src_only
	$(MAKE) -C lines		src_only
	$(MAKE) -C walk			src_only
	$(MAKE) -C noodle		src_only
	$(MAKE) -C beepdown		src_only
	$(MAKE) -C color		src_only
	$(MAKE) -C color2		src_only
	$(MAKE) -C sosu			src_only
	$(MAKE) -C sosu2		src_only
	$(MAKE) -C sosu3		src_only
	$(MAKE) -C type			src_only
	$(MAKE) -C iroha		src_only
	$(MAKE) -C chklang		src_only
	$(MAKE) -C notrec		src_only
	$(MAKE) -C bball		src_only
	$(MAKE) -C invader		src_only
	$(MAKE) -C calc			src_only
	$(MAKE) -C tview		src_only
	$(MAKE) -C mmlplay		src_only
	$(MAKE) -C gview		src_only
	-$(DEL) haribote.img

refresh :
	$(MAKE) full
	$(MAKE) clean_full
	-$(DEL) haribote.img
