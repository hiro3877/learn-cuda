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


double distance_horo_objects(int xj,int yj,double zj,int xa,int ya){
  double r_ja;
  int dx;
  int dy;
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
    BmpFileHeader.bfSize                =14+40+1024+(WID*HEI);
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

    for(i=0;i<256;i++){
       RGBQuad[i].rgbBlue                =i;
       RGBQuad[i].rgbGreen               =i;
       RGBQuad[i].rgbRed                 =i;
       RGBQuad[i].rgbReserved            =0;
    }

    /*
    char filename[20]={};
    printf("ファイル名を入力してください :  ");
    scanf("%s",filename);
    */

    fp=fopen("ten1.3d","rb");
    if(fp==NULL){
      printf("ファイルオープンエラー\n");
    }

    fread(&tensuu,sizeof(int),1,fp);
    printf("物体点数は%dです\n",tensuu);

    int x[tensuu];
    int y[tensuu];
    double z[tensuu];

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
          img_buf[i*WID+j]=img_buf[i*WID+j]+cos(goukei*distance_horo_objects(x[k],y[k],z[k],j,i));
        }
      }
    }

    double min,max,mid;

    min=img_buf[0];
    max=img_buf[0];

    for(i=0;i<HEI;i++){
      for(j=0;j<WID;j++){
        if(min>img_buf[i*WID+j]){
          min=img_buf[i*WID+j];
        }
        if(max<img_buf[i*WID+j]){
          max=img_buf[i*WID+j];
        }
      }
    }

    mid=0.5*(min+max);

    printf("min = %lf  max = %lf  mid = %lf\n",min,max,mid);


    unsigned char *img;
    img=(unsigned char *)malloc(sizeof(unsigned char)*WID*HEI);

    for(i=0;i<WID*HEI;i++){
      if(img_buf[i]<mid){
        img[i]=0;
      }
      if(img_buf[i]>mid){
        img[i]=255;
      }
    }

    FILE *fp1;
    fp1=fopen("cgh1.bmp","wb");
    if(fp1==NULL){
      printf("ファイルオープンエラー\n");
    }

    fwrite(&BmpFileHeader, sizeof(BmpFileHeader) , 1 ,fp1);
    fwrite(&BmpInfoHeader, sizeof(BmpInfoHeader) , 1 ,fp1);
    fwrite(&RGBQuad[0], sizeof(RGBQuad[0]) , 256 ,fp1);
    fwrite(img,sizeof(unsigned char),WID*HEI,fp1);

    free(img);
    free(img_buf);
    fclose(fp1);

    return 0;



}
