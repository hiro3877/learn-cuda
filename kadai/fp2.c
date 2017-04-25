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

	/* バイナリ読み込みモードでファイルをオープン */
	if((fp = fopen(filename, "rb")) == NULL ) {
		printf("ファイルオープンエラー\n");
		exit(EXIT_FAILURE);
	}

	/* ファイルの先頭に移動 */
	fseek(fp, 0L, SEEK_SET);

	/* 書き込んだデータを読み込んでみる */
	fread(inbuf, sizeof(int), 285, fp);

	/* ファイルクローズ */
	fclose(fp);

	/* 読み込みデータの確認 */
	for (i=0; i<285; i++)
		printf("%7d",inbuf[i]);
	printf("\n");

	printf("%d\n",i);

	return 0;
}
