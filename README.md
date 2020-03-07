# MacでCコンパイラが作動しなかったため、ubuntuに切り替えてやってみる
#### 参考↓
https://blog.haramishio.xyz/entry/hariboteos

##### alias
ubuntu64 
os30 

##### ubuntu
vagrant up 
vagrant ssh 
exit 
vagrant halt 

catalinaで32bitアプリが動かせないのが原因？
他のgccをインストールした所、動きそうだったが、/varのファイルでエラーが出た。。。
# 『30日でできる！ OS自作入門』 for macOS
##### tatsumack/30nichideosjisaku
[URL](https://github.com/tatsumack/30nichideosjisaku)
からcloneしてやってみる。

naskでエラーが出るので、
nasmをinstall

##### アセンブラ内
```RESB 0x7dfe-$	→　RESB 0x1fe-($-$$)```
##### makefile内のnask部分を
```nasm helloos.nas -o helloos.img```
に変更

##### listも作成したいときは
```nasm ipl.nas -o ipl.bin -l ipl.lst```
##### ディスクイメージを作成するとき
```mformat -f 1440 -C -B ipl.bin -i helloos.img ::```

#### まとめ
Translator :一つのプログラミング言語で書かれたプログラムを他の言語のプログラムに変換する  
Compiler :高水準言語を低水準言語に翻訳するTranslator  
Assembler(アセンブラ) :アセンブリ言語を機械語に翻訳するTranslator  
Preprocessor :高水準言語を他の高水準言語に翻訳するTranslator  
アセンブリ言語 :最低限人間が理解できるようにしてある、低水準言語  
アセンブル :アセンブリ言語で書かれたプログラムを機械語に翻訳すること  
