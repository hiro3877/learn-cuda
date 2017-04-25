#include <stdio.h>
#include <math.h>
#include<stdint.h>
#include<stdlib.h>

#define WID 1920
#define HEI 1080

#pragma pack(push,1)
typedef struct tagBITMAPFILEHEADER
{
  unsigned short bfType;
	uint32_t  bfSize;
	unsigned short bfReserved1;
	unsigned short bfReserved2;
	uint32_t  bf0ffBits;
}BITMAPFILEHEADER;
#pragma pack(pop)

typedef struct tagBITMAPINFOHEADER
{
	uint32_t  biSize;
	int32_t	biWidth;
	int32_t	biHeight;
	unsigned short  biPlanes;
	unsigned short  biBitCount;
	uint32_t   biCompression;
	uint32_t   biSizeImage;
	int32_t	 biXPelsPerMeter;
	int32_t	 biYPelsPerMeter;
	uint32_t   biCirUsed;
	uint32_t   biCirImportant;
}BITMAPINFOHEADER;

typedef struct tagRGBQUAD
{
	unsigned char  rgbBlue;
	unsigned char  rgbGreen;
	unsigned char  rgbRed;
	unsigned char  rgbReserved;
}RGBQUAD;

typedef struct tagBITMAPINFO
{
	BITMAPINFOHEADER bmiHeader;
	RGBQUAD          bmiColors[1];
}BITMAPINFO;


double distance_horo_objects(double xj,double yj,double zj,double xa,double ya){
  double r_ja;
  double dx;
  double dy;
  double dz;

  dx=xa-xj;
  dy=ya-yj;
  dz=zj;

  r_ja=sqrt(dx*dx+dy*dy+dz*dz); //暗黙の型変換　doubleで計算されてるはず


  return r_ja;


}


int main(){

    int tensuu;

    BITMAPFILEHEADER    BmpFileHeader;
    BITMAPINFOHEADER    BmpInfoHeader;
    RGBQUAD             RGBQuad[256];

    FILE *fp;
    int i,j,k;

    BmpFileHeader.bfType                =19778;
    BmpFileHeader.bfSize                =14+40+1024+(256*256);
    BmpFileHeader.bfReserved1           =0;
    BmpFileHeader.bfReserved2           =0;
    BmpFileHeader.bf0ffBits             =14+40+1024;

    BmpInfoHeader.biSize                =40;
    BmpInfoHeader.biWidth               =WID;
    BmpInfoHeader.biHeight              =HEI;
    BmpInfoHeader.biPlanes              =1;
    BmpInfoHeader.biBitCount            =8;     //256階調
    BmpInfoHeader.biCompression         =0L;
    BmpInfoHeader.biSizeImage           =0L;
    BmpInfoHeader.biXPelsPerMeter       =0L;
    BmpInfoHeader.biYPelsPerMeter       =0L;
    BmpInfoHeader.biCirUsed             =0L;
    BmpInfoHeader.biCirImportant        =0L;

    /*
    char filename[20]={};
    printf("ファイル名を入力してください :  ");
    scanf("%s",filename);
    */

    fp=fopen("cube284.3d","rb");
    if(fp==NULL){
      printf("ファイルオープンエラー\n");
    }

    fread(&tensuu,sizeof(int),1,fp);
    printf("物体点数は%dです\n",tensuu);

    int *x,*y;
    double *z;

    x = (int *)malloc(sizeof(int) * tensuu);
    y = (int *)malloc(sizeof(int) * tensuu);
    z = (double *)malloc(sizeof(double) * tensuu);

    int x_buf,y_buf,z_buf;

    for(i=0;i<tensuu;i++){
      fread(&x_buf,sizeof(int),1,fp);
      fread(&y_buf,sizeof(int),1,fp);
      fread(&z_buf,sizeof(int),1,fp);

      x[i]=x_buf*40;
      y[i]=y_buf*40;
      z[i]=((double)z_buf)*40;
    }
    fclose(fp);

    /*
    for(i=0;i<tensuu;i++){
      printf("%d   %d   %d   %f\n",i,x[i],y[i],z[i]);
    }
    */

    double *img_buf;

    img_buf=(double *)malloc(sizeof(double)*WID*HEI);
    for(i=0;i<WID*HEI;i++){
      img_buf[i]=0.0;
    }


    double lamda,goukei;

    lamda=0.633;
    goukei=2.0*M_PI/lamda;


    for(i=0;i<HEI;i++){
      for(j=0;j<WID;j++){
        for(k=0;k<tensuu;k++){
          img_buf[i*HEI+j]=img_buf[i*HEI+j]+cos(goukei*distance_horo_objects(x[k],y[k],z[k],j,i));
        }
      }
    }

    printf("%f\n",img_buf[15]);

    free(img_buf);

    free(x);
    free(y);
    free(z);

    return 0;



}
