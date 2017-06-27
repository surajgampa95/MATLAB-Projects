clc;
clear all;
close all;
a = VideoReader('Sunrise_out.avi');
b = a.read();
c11=b(:,:,:,1);
c12=b(:,:,:,2);
c13=b(:,:,:,3);
c14=b(:,:,:,4);
c15=b(:,:,:,5);
c16=b(:,:,:,6);
c17=b(:,:,:,7);
c18=b(:,:,:,8);
c19=b(:,:,:,9);
c10=b(:,:,:,10);

for i1=1:10
if i1==1
d=c11(:,:,1);
h2=zeros(1,104);
for i=1:104
    h1=d(1,i);               
    h2(1,i)=bitand(h1,1,'uint8');
end

j1=1;j11=1;i=1;
b1=zeros(1,8);
c1 = '';
while j1<=numel(h2)/8
    for i=1:8
        b1(i)=h2(j11);
        j11 = j11 + 1;
        c1 = strcat(c1,num2str(b1(i)));
        f1=fliplr(c1);
    end
    d1=bin2dec(f1);
    e1(1,j1)=char(d1);
    c1 = '';
    j1=j1+1;
end
end


if i1==2
d=c12(:,:,1);
h2=zeros(1,72);
for i=1:72
    h1=d(1,i);               
    h2(1,i)=bitand(h1,1,'uint8');
end

j1=1;j11=1;i=1;
b1=zeros(1,8);
c1 = '';
while j1<=numel(h2)/8
    for i=1:8
        b1(i)=h2(j11);
        j11 = j11 + 1;
        c1 = strcat(c1,num2str(b1(i)));
        f1=fliplr(c1);
    end
    d1=bin2dec(f1);
    e2(1,j1)=char(d1);
    c1 = '';
    j1=j1+1;
    
end
end

if i1==3
d=c13(:,:,1);
h2=zeros(1,64);
for i=1:64
    h1=d(1,i);               
    h2(1,i)=bitand(h1,1,'uint8');
end

j1=1;j11=1;i=1;
b1=zeros(1,8);
c1 = '';
while j1<=numel(h2)/8
    for i=1:8
        b1(i)=h2(j11);
        j11 = j11 + 1;
        c1 = strcat(c1,num2str(b1(i)));
        f1=fliplr(c1);
    end
    d1=bin2dec(f1);
    e3(1,j1)=char(d1);
    c1 = '';
    j1=j1+1;
    
end
end

if i1==4
d=c14(:,:,1);
h2=zeros(1,104);
for i=1:104
    h1=d(1,i);               
    h2(1,i)=bitand(h1,1,'uint8');
end

j1=1;j11=1;i=1;
b1=zeros(1,8);
c1 = '';
while j1<=numel(h2)/8
    for i=1:8
        b1(i)=h2(j11);
        j11 = j11 + 1;
        c1 = strcat(c1,num2str(b1(i)));
        f1=fliplr(c1);
    end
    d1=bin2dec(f1);
    e4(1,j1)=char(d1);
    c1 = '';
    j1=j1+1;
    
end
end

if i1==5
d=c15(:,:,1);
h2=zeros(1,112);
for i=1:112
    h1=d(1,i);               
    h2(1,i)=bitand(h1,1,'uint8');
end

j1=1;j11=1;i=1;
b1=zeros(1,8);
c1 = '';
while j1<=numel(h2)/8
    for i=1:8
        b1(i)=h2(j11);
        j11 = j11 + 1;
        c1 = strcat(c1,num2str(b1(i)));
        f1=fliplr(c1);
    end
    d1=bin2dec(f1);
    e5(1,j1)=char(d1);
    c1 = '';
    j1=j1+1;
    
end
end


if i1==6
d=c16(:,:,1);
h2=zeros(1,72);
for i=1:72
    h1=d(1,i);               
    h2(1,i)=bitand(h1,1,'uint8');
end

j1=1;j11=1;i=1;
b1=zeros(1,8);
c1 = '';
while j1<=numel(h2)/8
    for i=1:8
        b1(i)=h2(j11);
        j11 = j11 + 1;
        c1 = strcat(c1,num2str(b1(i)));
        f1=fliplr(c1);
    end
    d1=bin2dec(f1);
    e6(1,j1)=char(d1);
    c1 = '';
    j1=j1+1;
    
end
end

if i1==7
d=c17(:,:,1);
h2=zeros(1,104);
for i=1:104
    h1=d(1,i);               
    h2(1,i)=bitand(h1,1,'uint8');
end

j1=1;j11=1;i=1;
b1=zeros(1,8);
c1 = '';
while j1<=numel(h2)/8
    for i=1:8
        b1(i)=h2(j11);
        j11 = j11 + 1;
        c1 = strcat(c1,num2str(b1(i)));
        f1=fliplr(c1);
    end
    d1=bin2dec(f1);
    e7(1,j1)=char(d1);
    c1 = '';
    j1=j1+1;
    
end
end


if i1==8
d=c18(:,:,1);
h2=zeros(1,64);
for i=1:64
    h1=d(1,i);               
    h2(1,i)=bitand(h1,1,'uint8');
end

j1=1;j11=1;i=1;
b1=zeros(1,8);
c1 = '';
while j1<=numel(h2)/8
    for i=1:8
        b1(i)=h2(j11);
        j11 = j11 + 1;
        c1 = strcat(c1,num2str(b1(i)));
        f1=fliplr(c1);
    end
    d1=bin2dec(f1);
    e8(1,j1)=char(d1);
    c1 = '';
    j1=j1+1;
    
end
end


if i1==9
d=c19(:,:,1);
h2=zeros(1,176);
for i=1:176
    h1=d(1,i);               
    h2(1,i)=bitand(h1,1,'uint8');
end

j1=1;j11=1;i=1;
b1=zeros(1,8);
c1 = '';
while j1<=numel(h2)/8
    for i=1:8
        b1(i)=h2(j11);
        j11 = j11 + 1;
        c1 = strcat(c1,num2str(b1(i)));
        f1=fliplr(c1);
    end
    d1=bin2dec(f1);
    e9(1,j1)=char(d1);
    c1 = '';
    j1=j1+1;
    
end
end


if i1==10
d=c10(:,:,1);
h2=zeros(1,128);
for i=1:128
    h1=d(1,i);               
    h2(1,i)=bitand(h1,1,'uint8');
end

j1=1;j11=1;i=1;
b1=zeros(1,8);
c1 = '';
while j1<=numel(h2)/8
    for i=1:8
        b1(i)=h2(j11);
        j11 = j11 + 1;
        c1 = strcat(c1,num2str(b1(i)));
        f1=fliplr(c1);
    end
    d1=bin2dec(f1);
    e10(1,j1)=char(d1);
    c1 = '';
    j1=j1+1;
    
end
end
end
e11=strcat(e1,{' '},e2,{' '},e3,{' '},e4,{' '},e5,{' '},e6,{' '},e7,{' '},e8,{' '},e9,{' '},e10);
celldisp(e11);