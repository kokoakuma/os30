void io_hlt(void);

void HariMain(void)
{
	int i; /* �ϐ��錾�Bi�Ƃ����ϐ��́A32�r�b�g�̐����^ */
	char *p;
//	char *p; /* p�Ƃ����ϐ��́ABYTE [...]�p�̔Ԓn */

	for (i = 0xa0000; i <= 0xaffff; i++) {

		p = (char *) i;
		*p = i & 0x0f;

		/* ����� write_mem8(i, i & 0x0f); �̑���ɂȂ� */
	}

	for (;;) {
		io_hlt();
	}
}
