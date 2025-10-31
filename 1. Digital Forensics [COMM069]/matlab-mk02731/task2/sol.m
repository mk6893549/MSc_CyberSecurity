% Requirements before solving this task
    % must have have all the necessary function files ie. utility_function
    % and it should be in the same directory (use add to the path option)
    % must have task files

img = imread('stego.png');              % loads the image into a matrix format

p = [1,50];
p_class = 'char';                    % char is for string (default is 'uint8')

% This function extracts a plaintext image "p" from the LSB bitplane of a stego-image "s"
% p = LSB_steg_extract(s, k, p_size, p_class)

plaintext = LSB_steg_extract(img, [], p, p_class);        % [] empty array or an omitted argument

disp(plaintext);         %display the plain