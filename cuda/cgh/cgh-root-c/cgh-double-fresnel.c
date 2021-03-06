#include <stdio.h>
#include <math.h>
#include<stdint.h>
#include<stdlib.h>
#include <sys/time.h>
#include <sys/resource.h>

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


double getrusage_sec()
{
    struct rusage t;
    struct timeval tv;

    getrusage(RUSAGE_SELF,&t);
    tv = t.ru_utime;

    return tv.tv_sec + (double)tv.tv_usec*1e-6;
}


int main(){

    double starttime1,endtime1;

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

    char filename[20]={};
    printf("ファイル名を入力してください :  ");
    scanf("%s",filename);

    fp=fopen(filename,"rb");
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

      x[i]=x_buf*40+960;
      y[i]=y_buf*40+540;
      z[i]=((double)z_buf)*40+100000.0;
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

    double pi, kankaku,hatyou,goukei;

    pi=3.14159265;
    hatyou=0.633;
    kankaku=10.5;
    goukei=2.0*pi*kankaku/hatyou;

   double dx,dy,tmp;


starttime1 = getrusage_sec();
    for(i=0;i<HEI;i++){
      for(j=0;j<WID;j++){
        tmp=0.0;
        for(k=0;k<tensuu;k++){
	 dx=(double)(x[k]-j);
	 dy=(double)(y[k]-i);
	     tmp=tmp+cos(goukei*0.5*(dx*dx+dy*dy)/z[k]);
       //tmp=tmp+cos(goukei*sqrt(dx*dx+dy*dy+z[k]*z[k]));
       //tmp=tmp+cos(goukei*sqrt((x[k]-j)*(x[k]-j)+(y[k]-i)*(y[k]-i)+z[k]*z[k]));
        }
      img_buf[i*WID+j] = tmp;
      }
    }
endtime1 = getrusage_sec();

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
    fp1=fopen("cgh_root.bmp","wb");
    if(fp1==NULL){
      printf("ファイルオープンエラー\n");
    }

    fwrite(&BmpFileHeader, sizeof(BmpFileHeader) , 1 ,fp1);
    fwrite(&BmpInfoHeader, sizeof(BmpInfoHeader) , 1 ,fp1);
    fwrite(&RGBQuad[0], sizeof(RGBQuad[0]) , 256 ,fp1);
    fwrite(img,sizeof(unsigned char),WID*HEI,fp1);

    printf("Calculation time is %lf\n",endtime1-starttime1);

    free(img);
    free(img_buf);
    fclose(fp1);

    return 0;



}
