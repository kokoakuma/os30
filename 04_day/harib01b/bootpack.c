void io_hlt(void);
void write_mem8(int addr, int data);


void HariMain(void)
{
	int i; /* �ϐ��錾�Bi�Ƃ����ϐ��́A32�r�b�g�̐����^ */

	for (i = 0xa0000; i <= 0xaffff; i++) {
		write_mem8(i, i & 0x0f);
	}
	for (;;) {
		io_hlt();
	}
}
