clc;
clear all;
close all;

%creating temporary working folder
WorkingDir=tempname;
mkdir(WorkingDir)
mkdir(WorkingDir,'images')

%create video recorder for reading frames
sunriseVideo=VideoReader('Sunrise.mp4');

%create image sequence
ii = 1;

numFrames = get(sunriseVideo,'NumberOfFrames');

 for k=1:numFrames
   s(k).cdata = read(sunriseVideo,k);
   filename = [sprintf('%03d',ii) '.jpg'];
   fullname = fullfile(WorkingDir,'images',filename);
   imwrite(s(k).cdata,fullname)    % Write out to a JPEG file (img1.jpg, img2.jpg, etc.)
   ii = ii+1;
 end
 
%Find all the JPEG file names in the images folder. Convert the set of image names to a cell array. 
imageNames = dir(fullfile(WorkingDir,'images','*.jpg'));
imageNames = {imageNames.name}';

%Construct a VideoWriter object, which creates a Motion-JPEG AVI file by default.
outputVideo = VideoWriter('Sunrise_out.avi','Uncompressed AVI');
outputVideo.FrameRate = 1;
open(outputVideo)

%Loop through the image sequence, load each image, and then write it to the video.
for ii = 1:10
   img = imread(fullfile(WorkingDir,'images',imageNames{ii}));
   if ii==1
   c=img(:,:,1);  %Red part of RGB Image.
   e=double('every sunset '); %converts text into double and stores in e (12 values)
   e2=numel(e); %count of values in e, that would be 12.
   q3=zeros(1,e2*8); %initializing matrix - number of pixels effected by this method.
   ia=1;
   for j=1:e2
     f=e(1,j);
     f1=de2bi(f,8);
      for j1=1:8
         q3(1,ia)=f1(1,j1);
         ia=ia+1;
      end
   end
   l=zeros(1,e2*8);
   q1=zeros(1,e2*8);
for i=1:e2*8
      d=c(1,i);%pixel location in Red Part.
      l(1,i)=bitand(d,254,'uint8'); % Converts LSB value of pixel to 0
      q=q3(1,i);
      img(1,i)=bitor(l(1,i),q,'uint8'); %OR q with final pixel value that has to be embedded
end
writeVideo(outputVideo,img)
   end
   



if ii==2
   ca=img(:,:,1);  %Red part of RGB Image.
   ea=double('gives us '); %converts text into double and stores in e (12 values)
   e2a=numel(ea); %count of values in e, that would be 12.
   q3a=zeros(1,e2a*8); %initializing matrix - number of pixels effected by this method.
   iaa=1;
   for j=1:e2a
     fa=ea(1,j);
     f1a=de2bi(fa,8);
      for j1=1:8
         q3a(1,iaa)=f1a(1,j1);
         iaa=iaa+1;
      end
   end
   la=zeros(1,e2a*8);
   q1a=zeros(1,e2a*8);
 for i=1:e2a*8
      da=ca(1,i);%pixel location in Red Part.
      la(1,i)=bitand(da,254,'uint8'); % Converts LSB value of pixel to 0
      qa=q3a(1,i);
      img(1,i)=bitor(la(1,i),qa,'uint8'); %OR q with final pixel value that has to be embedded
 end
  writeVideo(outputVideo,img)
 end
 


if ii==3
   cb=img(:,:,1);  %Red part of RGB Image.
   eb=double('one day '); %converts text into double and stores in e (12 values)
   e2b=numel(eb); %count of values in e, that would be 12.
   q3b=zeros(1,e2b*8); %initializing matrix - number of pixels effected by this method.
   iab=1;
   for j=1:e2b
     fb=eb(1,j);
     f1b=de2bi(fb,8);
      for j1=1:8
         q3b(1,iab)=f1b(1,j1);
         iab=iab+1;
      end
   end
   lb=zeros(1,e2b*8);
   q1b=zeros(1,e2b*8);
 for i=1:e2b*8
      db=cb(1,i);%pixel location in Red Part.
      lb(1,i)=bitand(db,254,'uint8'); % Converts LSB value of pixel to 0
      qb=q3b(1,i);
      img(1,i)=bitor(lb(1,i),qb,'uint8'); %OR q with final pixel value that has to be embedded
 end
 writeVideo(outputVideo,img)
end


if ii==4
   cc=img(:,:,1);  %Red part of RGB Image.
   ec=double('less to live '); %converts text into double and stores in e (12 values)
   e2c=numel(ec); %count of values in e, that would be 12.
   q3c=zeros(1,e2c*8); %initializing matrix - number of pixels effected by this method.
   iac=1;
   for j=1:e2c
     fc=ec(1,j);
     f1c=de2bi(fc,8);
      for j1=1:8
         q3c(1,iac)=f1c(1,j1);
         iac=iac+1;
      end
   end
   lc=zeros(1,e2c*8);
   q1c=zeros(1,e2c*8);
 for i=1:e2c*8
      dc=cc(1,i);%pixel location in Red Part.
      lc(1,i)=bitand(dc,254,'uint8'); % Converts LSB value of pixel to 0
      qc=q3c(1,i);
      img(1,i)=bitor(lc(1,i),qc,'uint8'); %OR q with final pixel value that has to be embedded
 end
 writeVideo(outputVideo,img)
end
 

if ii==5
   cd=img(:,:,1);  %Red part of RGB Image.
   ed=double('every sunrise '); %converts text into double and stores in e (12 values)
   e2d=numel(ed); %count of values in e, that would be 12.
   q3d=zeros(1,e2d*8); %initializing matrix - number of pixels effected by this method.
   iad=1;
   for j=1:e2d
     fd=ed(1,j);
     f1d=de2bi(fd,8);
      for j1=1:8
         q3d(1,iad)=f1d(1,j1);
         iad=iad+1;
      end
   end
   ld=zeros(1,e2d*8);
   q1d=zeros(1,e2d*8);
 for i=1:e2d*8
      dd=cd(1,i);%pixel location in Red Part.
      ld(1,i)=bitand(dd,254,'uint8'); % Converts LSB value of pixel to 0
      qd=q3d(1,i);
      img(1,i)=bitor(ld(1,i),qd,'uint8'); %OR q with final pixel value that has to be embedded
 end
 writeVideo(outputVideo,img)
end
 
if ii==6
   cd=img(:,:,1);  %Red part of RGB Image.
   ed=double('gives us '); %converts text into double and stores in e (12 values)
   e2d=numel(ed); %count of values in e, that would be 12.
   q3d=zeros(1,e2d*8); %initializing matrix - number of pixels effected by this method.
   iad=1;
   for j=1:e2d
     fd=ed(1,j);
     f1d=de2bi(fd,8);
      for j1=1:8
         q3d(1,iad)=f1d(1,j1);
         iad=iad+1;
      end
   end
   ld=zeros(1,e2d*8);
   q1d=zeros(1,e2d*8);
 for i=1:e2d*8
      dd=cd(1,i);%pixel location in Red Part.
      ld(1,i)=bitand(dd,254,'uint8'); % Converts LSB value of pixel to 0
      qd=q3d(1,i);
      img(1,i)=bitor(ld(1,i),qd,'uint8'); %OR q with final pixel value that has to be embedded
 end
 writeVideo(outputVideo,img)
end
 
if ii==7
   cd=img(:,:,1);  %Red part of RGB Image.
   ed=double('one day more '); %converts text into double and stores in e (12 values)
   e2d=numel(ed); %count of values in e, that would be 12.
   q3d=zeros(1,e2d*8); %initializing matrix - number of pixels effected by this method.
   iad=1;
   for j=1:e2d
     fd=ed(1,j);
     f1d=de2bi(fd,8);
      for j1=1:8
         q3d(1,iad)=f1d(1,j1);
         iad=iad+1;
      end
   end
   ld=zeros(1,e2d*8);
   q1d=zeros(1,e2d*8);
 for i=1:e2d*8
      dd=cd(1,i);%pixel location in Red Part.
      ld(1,i)=bitand(dd,254,'uint8'); % Converts LSB value of pixel to 0
      qd=q3d(1,i);
      img(1,i)=bitor(ld(1,i),qd,'uint8'); %OR q with final pixel value that has to be embedded
 end
 writeVideo(outputVideo,img)
end


if ii==8
   cd=img(:,:,1);  %Red part of RGB Image.
   ed=double('to hope '); %converts text into double and stores in e (12 values)
   e2d=numel(ed); %count of values in e, that would be 12.
   q3d=zeros(1,e2d*8); %initializing matrix - number of pixels effected by this method.
   iad=1;
   for j=1:e2d
     fd=ed(1,j);
     f1d=de2bi(fd,8);
      for j1=1:8
         q3d(1,iad)=f1d(1,j1);
         iad=iad+1;
      end
   end
   ld=zeros(1,e2d*8);
   q1d=zeros(1,e2d*8);
 for i=1:e2d*8
      dd=cd(1,i);%pixel location in Red Part.
      ld(1,i)=bitand(dd,254,'uint8'); % Converts LSB value of pixel to 0
      qd=q3d(1,i);
      img(1,i)=bitor(ld(1,i),qd,'uint8'); %OR q with final pixel value that has to be embedded
 end
 writeVideo(outputVideo,img)
end



if ii==9
   cd=img(:,:,1);  %Red part of RGB Image.
   ed=double('so hope for the best '); %converts text into double and stores in e (12 values)
   e2d=numel(ed); %count of values in e, that would be 12.
   q3d=zeros(1,e2d*8); %initializing matrix - number of pixels effected by this method.
   iad=1;
   for j=1:e2d
     fd=ed(1,j);
     f1d=de2bi(fd,8);
      for j1=1:8
         q3d(1,iad)=f1d(1,j1);
         iad=iad+1;
      end
   end
   ld=zeros(1,e2d*8);
   q1d=zeros(1,e2d*8);
 for i=1:e2d*8
      dd=cd(1,i);%pixel location in Red Part.
      ld(1,i)=bitand(dd,254,'uint8'); % Converts LSB value of pixel to 0
      qd=q3d(1,i);
      img(1,i)=bitor(ld(1,i),qd,'uint8'); %OR q with final pixel value that has to be embedded
 end
 writeVideo(outputVideo,img)
end


if ii==10
   cd=img(:,:,1);  %Red part of RGB Image.
   ed=double('have a good day.'); %converts text into double and stores in e (12 values)
   e2d=numel(ed); %count of values in e, that would be 12.
   q3d=zeros(1,e2d*8); %initializing matrix - number of pixels effected by this method.
   iad=1;
   for j=1:e2d
     fd=ed(1,j);
     f1d=de2bi(fd,8);
      for j1=1:8
         q3d(1,iad)=f1d(1,j1);
         iad=iad+1;
      end
   end
   ld=zeros(1,e2d*8);
   q1d=zeros(1,e2d*8);
 for i=1:e2d*8
      dd=cd(1,i);%pixel location in Red Part.
      ld(1,i)=bitand(dd,254,'uint8'); % Converts LSB value of pixel to 0
      qd=q3d(1,i);
      img(1,i)=bitor(ld(1,i),qd,'uint8'); %OR q with final pixel value that has to be embedded
 end
 writeVideo(outputVideo,img)
end

end
  

close(outputVideo)