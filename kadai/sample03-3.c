#include <stdio.h>
#include <math.h>
#include<stdint.h>


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
	uint32_t	biWidth;
	uint32_t	biHeight;
	unsigned short  biPlanes;
	unsigned short  biBitCount;
	uint32_t   biCompression;
	uint32_t   biSizeImage;
	uint32_t	 biXPelsPerMeter;
	uint32_t	 biYPelsPerMeter;
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

int main(){
    
    BITMAPFILEHEADER    BmpFileHeader;
    BITMAPINFOHEADER    BmpInfoHeader;
    RGBQUAD             RGBQuad[256];

    unsigned char img[256][256];

    FILE *fp;

    int i,j;

    BmpFileHeader.bfType                =19778;
    BmpFileHeader.bfSize                =14+40+1024+(256*256);
    BmpFileHeader.bfReserved1           =0;
    BmpFileHeader.bfReserved2           =0;
    BmpFileHeader.bf0ffBits             =14+40+1024;

    BmpInfoHeader.biSize                =40;   
    BmpInfoHeader.biWidth               =256;
    BmpInfoHeader.biHeight              =256;
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


    for(i=0;i<256;i++){
       for(j=0;j<256;j++){
          img[i][j] = 0;
       }
    }

    img[255][1] = 255;
    img[255][1] = 255;
    img[255][0] = 255;
    img[255][0] = 255;

    fp = fopen("image3.bmp","wb");

    fwrite(&BmpFileHeader.bfType, sizeof(BmpFileHeader.bfType) , 1 ,fp);
    fwrite(&BmpFileHeader.bfSize, sizeof(BmpFileHeader.bfSize) , 1 ,fp);
    fwrite(&BmpFileHeader.bfReserved1, sizeof(BmpFileHeader.bfReserved1) , 1 ,fp);
    fwrite(&BmpFileHeader.bfReserved2, sizeof(BmpFileHeader.bfReserved2) , 1 ,fp);
    fwrite(&BmpFileHeader.bf0ffBits, sizeof(BmpFileHeader.bf0ffBits) , 1 ,fp);
    fwrite(&BmpInfoHeader, sizeof(BmpInfoHeader) , 1 ,fp);
    fwrite(&RGBQuad[0], sizeof(RGBQuad[0]) , 256 ,fp);

    for(i=0;i<256;i++){
	for(j=0;j<256;j++){
       fwrite(&img[i][j] , sizeof(img[i][j]) , 1 ,fp);
        }
    }

    fclose(fp);
    return 0;
}
