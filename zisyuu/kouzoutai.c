#include <stdio.h>
#include <math.h>
#define sqr(n) ((n)*(n))
typedef struct{
	double x,y;
}Point;

typedef struct{
	Point pt;
	double fuel;
}Car;

void put_info(Car c)
{
	printf("���݈ʒu : (%.2f,%.2f)\n",c.pt.x,c.pt.y);
	printf("�c��R�� : %.2f���b�g��\n",c.fuel);
}

double distance_of(Point pa,Point pb)
{
	return sqrt(sqr(pa.x-pb.x)+sqr(pa.y-pb.y));
}

int move(Car *c,Point dest)
{
	double d=distance_of(c->pt,dest);
	if(d>c->fuel)
		return 0;
	c->pt=dest;
	c->fuel-=d;
	return 1;
}

	int main(void)
{
	Car mycar={{0.0,0.0},90.0};
	
	while(1){
		int select;
		Point dest;
		
		put_info(mycar);
		
		printf("�ړ����܂����H [YES:1 NO:0] : ");
		scanf("%d",&select);
		if(select==0)
			break;
		printf("�ړI�n��X���W : "); scanf("%lf",&dest.x);
		printf("�ړI�n��Y���W : "); scanf("%lf",&dest.y);
		if(!move(&mycar,dest))
			puts("\a�R���s���ňړ��ł��܂���B ");
	}
	return 0;
}
		