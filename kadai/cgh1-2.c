#include <stdio.h>
#include <math.h>
#include <stdint.h>
#include<stdlib.h>

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

#define N_x 1920
#define N_y 1080

double distance_fromo(double x0, double y0, double z0, int i, int j)
{
    double rr;
    double dx;
    double dy;
    double dz;

    dx = x0 - (double) i;
    dy = y0 - (double) j;
    dz = z0;

    rr = sqrt(dx*dx + dy*dy + dz*dz);

    return rr;
}

double distance_fre(double x0, double y0, double z0, int i, int j)
{
    double rr;
    double dx;
    double dy;
    double dz;

    dx = x0 - (double) i;
    dy = y0 - (double) j;
    dz = z0;

    rr = dz + 0.5*(dx*dx + dy*dy)/dz;

    return rr;
}


int main(){

    BITMAPFILEHEADER    BmpFileHeader;
    BITMAPINFOHEADER    BmpInfoHeader;
    RGBQUAD             RGBQuad[256];

    int           *x,*y;
    double        *z;
    double        min_tmp,max_tmp,mid_tmp;
    unsigned char *img;
    double        *img_tmp;
    double        lambda,dtp,k,pi;

    FILE *fp,*fp1;

    int N_ten;
    int x_tmp,y_tmp,z_tmp;
    int i,j,ii;

    BmpFileHeader.bfType                =19778;
    BmpFileHeader.bfSize                =14+40+1024+(N_x*N_y);
    BmpFileHeader.bfReserved1           =0;
    BmpFileHeader.bfReserved2           =0;
    BmpFileHeader.bf0ffBits             =14+40+1024;

    BmpInfoHeader.biSize                =40;
    BmpInfoHeader.biWidth               =N_x;
    BmpInfoHeader.biHeight              =N_y;
    BmpInfoHeader.biPlanes              =1;
    BmpInfoHeader.biBitCount            =8;     //256�K��
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

    lambda = 0.633;
    dtp    = 10.5;
    pi     = 3.14159265;
    k      = 2.0 * pi * dtp /lambda;


    fp1 = fopen("ten1.3d","rb");

    fread(&N_ten, sizeof(int), 1, fp1);
    printf("Number of points = %d\n",N_ten);

    x = (int *)malloc(sizeof(int) * N_ten);
    y = (int *)malloc(sizeof(int) * N_ten);
    z = (double *)malloc(sizeof(double) * N_ten);


    for(i=0;i<N_ten;i++){
       fread(&x_tmp, sizeof(int), 1, fp1);
       fread(&y_tmp, sizeof(int), 1, fp1);
       fread(&z_tmp, sizeof(int), 1, fp1);

       x[i] = 40 * x_tmp + 700;
       y[i] = 40 * y_tmp + 500;
       z[i] = 40 * ((double) z_tmp) + 100000.0;
	}
    fclose(fp1);

    img_tmp = (double *)malloc(sizeof(double) * N_x*N_y);

    for(i=0;i<N_y*N_x;i++){
       img_tmp[i] = 0.0;
    }



    for(i=0;i<N_y;i++){
       for(j=0;j<N_x;j++){
          for(ii=0;ii<N_ten;ii++){
             img_tmp[i*N_x + j] = img_tmp[i*N_x + j] + cos(k * distance_fromo(x[ii],y[ii],z[ii],j,i));
//             img_tmp[i*N_x + j] = img_tmp[i*N_x + j] + cos(k * distance_fre(x[ii],y[ii],z[ii],j,i));
          }
       }
    }

    free(x);
    free(y);
    free(z);

    min_tmp = img_tmp[0];
    max_tmp = img_tmp[0];

    for(i=0;i<N_y;i++){
       for(j=0;j<N_x;j++){
          if(min_tmp > img_tmp[i*N_x + j]){
             min_tmp = img_tmp[i*N_x + j];
          }
          if(max_tmp < img_tmp[i*N_x + j]){
             max_tmp = img_tmp[i*N_x + j];
          }
       }
    }

    mid_tmp = 0.5*(max_tmp + min_tmp);

    printf("min = %lf  max = %lf  mid = %lf\n",min_tmp,max_tmp,mid_tmp);

    img = (unsigned char *)malloc(sizeof(unsigned char) * N_x*N_y);

    for(i=0;i<N_y*N_x;i++){
       if(mid_tmp > img_tmp[i]){
          img[i] = 255;
       }else{
          img[i] = 0;
       }
    }

    free(img_tmp);

    fp = fopen("cgh_direct.bmp","wb");

    fwrite(&BmpFileHeader, sizeof(BmpFileHeader) , 1 ,fp);
    fwrite(&BmpInfoHeader, sizeof(BmpInfoHeader) , 1 ,fp);
    fwrite(&RGBQuad[0], sizeof(RGBQuad[0]) , 256 ,fp);

    fwrite(img , sizeof(unsigned char) , N_x*N_y ,fp);


    free(img);
    fclose(fp);
    return 0;
}
