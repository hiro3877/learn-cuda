#include <stdio.h>
#include <stdlib.h>

int main(void)
{
	FILE *fp;
	int inbuf[285]={};
	int i;

	char filename[100]={};

	printf("Please input filename : ");
	scanf("%s",filename);

	/* �o�C�i���ǂݍ��݃��[�h�Ńt�@�C�����I�[�v�� */
	if((fp = fopen(filename, "rb")) == NULL ) {
		printf("�t�@�C���I�[�v���G���[\n");
		exit(EXIT_FAILURE);
	}

	/* �t�@�C���̐擪�Ɉړ� */
	fseek(fp, 0L, SEEK_SET);

	/* �������񂾃f�[�^��ǂݍ���ł݂� */
	fread(inbuf, sizeof(int), 285, fp);

	/* �t�@�C���N���[�Y */
	fclose(fp);

	/* �ǂݍ��݃f�[�^�̊m�F */
	for (i=0; i<285; i++)
		printf("%7d",inbuf[i]);
	printf("\n");

	printf("%d\n",i);

	return 0;
}
