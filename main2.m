clc;clear;
num=100000;
A=zeros(100);
for i=1:num
    x=randi([1 100]);
    y=randi([1 100]);
    r1=randi([0 1]);
    r2=randi([0 1]);
    if r1==0
        rx=-1;
    else
        rx=1;
    end
    if r2==0
        ry=-1;
    else
        ry=1;
    end
    if A(x,y)==1
        while x>=0&&x<=100&&y>=0&&y<=100&&A(x,y)==0
            x=x+rx;
            y=y+ry;
            A(x,y)=1;
        end
    else
        A(x,y)=1;
    end
    n=length(find(A==0));
    text(0,102,'ʣ����:','FontSize',12);%ʣ�������ֱ�ע
    text(10,102,int2str(n),'FontSize',12);%ʣ��������
    text(80,102,'������:','FontSize',12);%���������ֱ�ע
    text(90,102,int2str(i),'FontSize',12);%����������
    pause(0.0001);
    surf(A);
    view(0,90);
    title('��Ĥ��������ģ��','FontSize',15);
end
text(80,102,'������:','FontSize',12);%���������ֱ�ע
text(90,102,int2str(num),'Fontsize',12);%����������
text(5,102,'finish','fontsize',12);