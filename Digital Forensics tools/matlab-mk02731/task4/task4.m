img = imread('stego.png');
img2 = num2bit(img);

img3 = Decipher(img2, 'union');


p_class = [512, 768]
extract_img = LSB_steg_extract(img3, 'month', p_class );


digest = crypto_hash(extract_img, 'SHA-256');
h  = dec2hex(digest);

h(:)'


imshow(extract_img);
title('Extracted Plaintext Image');

