; hello-os
; TAB=4
		ORG  0x7c00  ; このプログラムがどこに読み込まれるか

; ディスク記述

    JMP  entry
    DB   0x90
    DB   "HELLOIPL" ; ブーとセクタの名前
    DW   512        ; １セクタの大きさ
    DB   1          ; クラスタの大きさ
    DW   1          ; fatの開始地点
    DB   2          ; fatの個数
    DW   224        ; root directoryの大きさ
    DW   2880       ; このドライブの大きさ
    DB   0xf0       ; メディアのタイプ
    DW   9          ; fatの長さ
    DW   18         ; 1トラックにいくつのセクタがあるか
    DW   2          ; ヘッドの数
    DD   0          ; パーティションの数
    DD   2880       ; このドライブの大きさをもう一度書く
    DB   0,0,0x29
    DD   0xffffffff
    DB   "HELLO-OS   "
    DB   "FAT12   "
    RESB 18

entry:
  MOV AX,0
  MOV SS,AX
  MOV SP,0x7c00
  MOV DS,AX
  MOV ES,AX

  MOV SI,msg
putloop:
  MOV AL,[SI]
  ADD SI,1
  CMP AL,0
  JE fin
  MOV AH,0x0e
  MOV BX,15
  INT 0x10
  JMP putloop
fin:
  HLT
  JMP fin

msg:
  DB 0x0a, 0x0a
  DB "HELLO, WORLD i am koki"
  DB 0x0a
  DB 0

  RESB 0x1fe-($-$$)
  DB 0x55, 0xaa