%cd ..\Dataset\cut
%DatasetDir = dir('..\Dataset\cut\*.png');
I = imread('image.bmp');
I_new = imresize(I,[64 64]);

image_txt = [dec2bin(I_new(:,:,3)),dec2bin(I_new(:,:,2)),dec2bin(I_new(:,:,1))];
f=fopen('image.txt','w');%i=1:4096;
for i=1:4096
    for j=1:24
    fprintf(f,'%c',image_txt(i,j));
    end
    %fprintf(f,'\n');
end
fclose(f);
f=fopen('image_dec.txt','w');%i=1:4096;
for i=1:64
    for j=1:64
    %fprintf(f,'%c',image_txt(i,j));
    for k=1:3
    fprintf(f,'%.3d',I_new(i,j,k));
    end
    end
    %fprintf(f,'\n');
end
fclose(f);
image = [zeros(2,67,3);zeros(64,2,3),I_new,zeros(64,1,3);zeros(1,67,3)];

f=fopen('C1_W1_R.txt_signed.txt','r');
C1_W1_R = fscanf(f,'%d\n');
fclose(f);

f=fopen('C1_W1_G.txt_signed.txt','r');
C1_W1_G = fscanf(f,'%d\n');
fclose(f);

f=fopen('C1_W1_B.txt_signed.txt','r');
C1_W1_B = fscanf(f,'%d\n');
fclose(f);

f=fopen('C1_W2_R.txt_signed.txt','r');
C1_W2_R = fscanf(f,'%d\n');
fclose(f);

f=fopen('C1_W2_G.txt_signed.txt','r');
C1_W2_G = fscanf(f,'%d\n');
fclose(f);

f=fopen('C1_W2_B.txt_signed.txt','r');
C1_W2_B = fscanf(f,'%d\n');
fclose(f);

f=fopen('C1_W3_R.txt_signed.txt','r');
C1_W3_R = fscanf(f,'%d\n');
fclose(f);

f=fopen('C1_W3_G.txt_signed.txt','r');
C1_W3_G = fscanf(f,'%d\n');
fclose(f);

f=fopen('C1_W3_B.txt_signed.txt','r');
C1_W3_B = fscanf(f,'%d\n');
fclose(f);

f=fopen('C1_W4_R.txt_signed.txt','r');
C1_W4_R = fscanf(f,'%d\n');
fclose(f);

f=fopen('C1_W4_G.txt_signed.txt','r');
C1_W4_G = fscanf(f,'%d\n');
fclose(f);

f=fopen('C1_W4_B.txt_signed.txt','r');
C1_W4_B = fscanf(f,'%d\n');
fclose(f);

f=fopen('C1_W5_R.txt_signed.txt','r');
C1_W5_R = fscanf(f,'%d\n');
fclose(f);

f=fopen('C1_W5_G.txt_signed.txt','r');
C1_W5_G = fscanf(f,'%d\n');
fclose(f);

f=fopen('C1_W5_B.txt_signed.txt','r');
C1_W5_B = fscanf(f,'%d\n');
fclose(f);

f=fopen('C1_W6_R.txt_signed.txt','r');
C1_W6_R = fscanf(f,'%d\n');
fclose(f);

f=fopen('C1_W6_G.txt_signed.txt','r');
C1_W6_G = fscanf(f,'%d\n');
fclose(f);

f=fopen('C1_W6_B.txt_signed.txt','r');
C1_W6_B = fscanf(f,'%d\n');
fclose(f);

f=fopen('C1_W7_R.txt_signed.txt','r');
C1_W7_R = fscanf(f,'%d\n');
fclose(f);

f=fopen('C1_W7_G.txt_signed.txt','r');
C1_W7_G = fscanf(f,'%d\n');
fclose(f);

f=fopen('C1_W7_B.txt_signed.txt','r');
C1_W7_B = fscanf(f,'%d\n');
fclose(f);

f=fopen('C1_W8_R.txt_signed.txt','r');
C1_W8_R = fscanf(f,'%d\n');
fclose(f);

f=fopen('C1_W8_G.txt_signed.txt','r');
C1_W8_G = fscanf(f,'%d\n');
fclose(f);

f=fopen('C1_W8_B.txt_signed.txt','r');
C1_W8_B = fscanf(f,'%d\n');
fclose(f);

C1_W1 = zeros(4,4,3);
C1_W1(:,:,1)=reshape(C1_W1_R,4,4)';
C1_W1(:,:,2)=reshape(C1_W1_G,4,4)';
C1_W1(:,:,3)=reshape(C1_W1_B,4,4)';

C1_W2 = zeros(4,4,3);
C1_W2(:,:,1)=reshape(C1_W2_R,4,4)';
C1_W2(:,:,2)=reshape(C1_W2_G,4,4)';
C1_W2(:,:,3)=reshape(C1_W2_B,4,4)';

C1_W3 = zeros(4,4,3);
C1_W3(:,:,1)=reshape(C1_W3_R,4,4)';
C1_W3(:,:,2)=reshape(C1_W3_G,4,4)';
C1_W3(:,:,3)=reshape(C1_W3_B,4,4)';

C1_W4 = zeros(4,4,3);
C1_W4(:,:,1)=reshape(C1_W4_R,4,4)';
C1_W4(:,:,2)=reshape(C1_W4_G,4,4)';
C1_W4(:,:,3)=reshape(C1_W4_B,4,4)';

C1_W5 = zeros(4,4,3);
C1_W5(:,:,1)=reshape(C1_W5_R,4,4)';
C1_W5(:,:,2)=reshape(C1_W5_G,4,4)';
C1_W5(:,:,3)=reshape(C1_W5_B,4,4)';

C1_W6 = zeros(4,4,3);
C1_W6(:,:,1)=reshape(C1_W6_R,4,4)';
C1_W6(:,:,2)=reshape(C1_W6_G,4,4)';
C1_W6(:,:,3)=reshape(C1_W6_B,4,4)';

C1_W7 = zeros(4,4,3);
C1_W7(:,:,1)=reshape(C1_W7_R,4,4)';
C1_W7(:,:,2)=reshape(C1_W7_G,4,4)';
C1_W7(:,:,3)=reshape(C1_W7_B,4,4)';

C1_W8 = zeros(4,4,3);
C1_W8(:,:,1)=reshape(C1_W8_R,4,4)';
C1_W8(:,:,2)=reshape(C1_W8_G,4,4)';
C1_W8(:,:,3)=reshape(C1_W8_B,4,4)';

im = double(image);
CONV1 = zeros(64,64,8);

%CONV1(:,:,1) = convn(im,flip(flip(C1_W1,1),2),'valid');
CONV1(:,:,1) = convn(im(:,:,1), flip(flip(C1_W1(:,:,1),1),2),'valid')+convn(im(:,:,2), flip(flip(C1_W1(:,:,2),1),2),'valid')+convn(im(:,:,3), flip(flip(C1_W1(:,:,3),1),2),'valid');
CONV1(:,:,2) = convn(im(:,:,1), flip(flip(C1_W2(:,:,1),1),2),'valid')+convn(im(:,:,2), flip(flip(C1_W2(:,:,2),1),2),'valid')+convn(im(:,:,3), flip(flip(C1_W2(:,:,3),1),2),'valid');
CONV1(:,:,3) = convn(im(:,:,1), flip(flip(C1_W3(:,:,1),1),2),'valid')+convn(im(:,:,2), flip(flip(C1_W3(:,:,2),1),2),'valid')+convn(im(:,:,3), flip(flip(C1_W3(:,:,3),1),2),'valid');
CONV1(:,:,4) = convn(im(:,:,1), flip(flip(C1_W4(:,:,1),1),2),'valid')+convn(im(:,:,2), flip(flip(C1_W4(:,:,2),1),2),'valid')+convn(im(:,:,3), flip(flip(C1_W4(:,:,3),1),2),'valid');
CONV1(:,:,5) = convn(im(:,:,1), flip(flip(C1_W5(:,:,1),1),2),'valid')+convn(im(:,:,2), flip(flip(C1_W5(:,:,2),1),2),'valid')+convn(im(:,:,3), flip(flip(C1_W5(:,:,3),1),2),'valid');
CONV1(:,:,6) = convn(im(:,:,1), flip(flip(C1_W6(:,:,1),1),2),'valid')+convn(im(:,:,2), flip(flip(C1_W6(:,:,2),1),2),'valid')+convn(im(:,:,3), flip(flip(C1_W6(:,:,3),1),2),'valid');
CONV1(:,:,7) = convn(im(:,:,1), flip(flip(C1_W7(:,:,1),1),2),'valid')+convn(im(:,:,2), flip(flip(C1_W7(:,:,2),1),2),'valid')+convn(im(:,:,3), flip(flip(C1_W7(:,:,3),1),2),'valid');
CONV1(:,:,8) = convn(im(:,:,1), flip(flip(C1_W8(:,:,1),1),2),'valid')+convn(im(:,:,2), flip(flip(C1_W8(:,:,2),1),2),'valid')+convn(im(:,:,3), flip(flip(C1_W8(:,:,3),1),2),'valid');

RELU1 = CONV1;
RELU1(RELU1 < 0) = 0;

MAXPOOL1 = zeros(8,8,8);
for i=0:7
    for j=0:7
        for k=1:8
            MAXPOOL1(i+1,j+1,k) = max(max(RELU1(i*8+1:i*8+8,j*8+1:j*8+8,k)));
        end
    end
end

f=fopen('C2_W1.txt_signed.txt','r');
C2_W1 = fscanf(f,'%d\n');
fclose(f);

f=fopen('C2_W2.txt_signed.txt','r');
C2_W2 = fscanf(f,'%d\n');
fclose(f);

f=fopen('C2_W3.txt_signed.txt','r');
C2_W3 = fscanf(f,'%d\n');
fclose(f);

f=fopen('C2_W4.txt_signed.txt','r');
C2_W4 = fscanf(f,'%d\n');
fclose(f);

f=fopen('C2_W5.txt_signed.txt','r');
C2_W5 = fscanf(f,'%d\n');
fclose(f);

f=fopen('C2_W6.txt_signed.txt','r');
C2_W6 = fscanf(f,'%d\n');
fclose(f);

f=fopen('C2_W7.txt_signed.txt','r');
C2_W7 = fscanf(f,'%d\n');
fclose(f);

f=fopen('C2_W8.txt_signed.txt','r');
C2_W8 = fscanf(f,'%d\n');
fclose(f);

MEMORY = [zeros(1,9,8);MAXPOOL1,zeros(8,1,8)];

CONV2 = zeros(8,8,16);
for i=0:15
CONV2(:,:,i+1) = convn(MEMORY(:,:,1), flip(flip(reshape(C2_W1(4*i+1:4*i+4),2,2)',1),2),'valid')+convn(MEMORY(:,:,2), flip(flip(reshape(C2_W2(4*i+1:4*i+4),2,2)',1),2),'valid')+convn(MEMORY(:,:,3), flip(flip(reshape(C2_W3(4*i+1:4*i+4),2,2)',1),2),'valid')+convn(MEMORY(:,:,4), flip(flip(reshape(C2_W4(4*i+1:4*i+4),2,2)',1),2),'valid')+convn(MEMORY(:,:,5), flip(flip(reshape(C2_W5(4*i+1:4*i+4),2,2)',1),2),'valid')+convn(MEMORY(:,:,6), flip(flip(reshape(C2_W6(4*i+1:4*i+4),2,2)',1),2),'valid')+convn(MEMORY(:,:,7), flip(flip(reshape(C2_W7(4*i+1:4*i+4),2,2)',1),2),'valid')+convn(MEMORY(:,:,8), flip(flip(reshape(C2_W8(4*i+1:4*i+4),2,2)',1),2),'valid');
end

RELU2 = CONV2;
RELU2(RELU2 < 0) = 0;

MAXPOOL2 = zeros(2,2,16);
for i=0:1
    for j=0:1
        for k=1:16
            MAXPOOL2(i+1,j+1,k) = max(max(RELU2(i*4+1:i*4+4,j*4+1:j*4+4,k)));
        end
    end
end

FLATTEN = zeros(1,64);
for i=1:16
    FLATTEN(i*4-3:i*4) = reshape(MAXPOOL2(:,:,i)',1,4);
end

% FC
f=fopen('FC_W.txt_signed.txt','r');
FC_W = fscanf(f,'%d\n');
fclose(f);

f=fopen('FC_B.txt_signed.txt','r');
FC_B = fscanf(f,'%d\n');
fclose(f);

FC_B = FC_B';
FC_W = reshape(FC_W,64,16);

OUTPUT = FLATTEN*FC_W + FC_B
%OUTPUT/10000000
