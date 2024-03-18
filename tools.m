clc
clearvars

%% AES - Tool


% State
state = uint8([
    0x12, 0x00, 0xC6, 0x82;
    0xCF, 0xA4, 0x4E, 0xEC;
    0x21, 0xF4, 0xA9, 0x6B;
    0xDE, 0x05, 0x78, 0x60
]);

MixColumns(state);

% SBOX
w = dec2hex(SubBytes(state));
c_key=cellstr(w);
disp('----------SBOX')
c_key_1=reshape(c_key,4,4);
disp(c_key_1)

% ShiftRow
w = dec2hex(ShiftRows(SubBytes(state)));
c_key=cellstr(w);
disp('----------ShiftRow')
c_key_1=reshape(c_key,4,4);
disp(c_key_1)

% MixColumns
w = dec2hex(MixColumns(ShiftRows(SubBytes(state))));
c_key=cellstr(w);
disp('----------MixColumns')
c_key_1=reshape(c_key,4,4);
disp(c_key_1)


