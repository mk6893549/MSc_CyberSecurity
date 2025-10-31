cover_img = imread("cover.png");
plaintext_img = imread("plaintext.png");


plaintext_img1 = bit2num(plaintext_img);
encrypted_img = Encipher(plaintext_img1, 'uncle');


stego_img = LSB_steg_embed(cover_img, encrypted_img, 'pause');


digest = crypto_hash(stego_img, 'SHA-256');

h  = dec2hex(digest);
