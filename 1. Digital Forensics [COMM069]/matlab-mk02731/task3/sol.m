% Requirements before solving this task
    % must have have all the necessary function files ie. utility_function
    % and it should be in the same directory (use add to the path option)
    % must have task files

%laod both the images into variables
cover_img = imread("cover.png");            
plaintext_img = imread("plaintext.png");

plaintext_img1 = bit2num(plaintext_img);            % convert plaintext image into numaric format

% ciphertext = Encipher(plaintext, key, ciphername, mode, IV, paddingname)
% most of the requirment for encipher in task are defult value ie. AES, CBC
encrypted_img = Encipher(plaintext_img1, 'uncle');

%s = LSB_steg_embed(c, p, k)
stego_img = LSB_steg_embed(cover_img, encrypted_img, 'pause');


digest = crypto_hash(stego_img, 'SHA-256');             %convert embeded image into crypto hash

h  = dec2hex(digest);
h(:)'

subplot(2,1,1),imshow(cover_img),title('Original');                  %Display the two images side by side
subplot(2,1,2),imshow(stego_img),title('Embeded');