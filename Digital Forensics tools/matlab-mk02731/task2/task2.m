stego_img = imread('stego.png');

p = [1,50]
text = LSB_steg_extract(stego_img, [], p, 'char')