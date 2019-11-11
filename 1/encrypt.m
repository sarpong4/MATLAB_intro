%%
original = ('This is my top secret message!');
% Making a string of encoding indices
t = length(original);
vec = randperm(t);
encoded = original(vec);
% Determine the decoding key to match encoding key
pore = linspace(1, t, t);
temp = [vec; pore]';
sorted = sortrows(temp, 1);
decoded = sorted(:,2);
l = transpose(decoded);
new = encoded(l); % decoded the message
o = ('Original: ');
e = ('Encoded: ');
d = ('Decoded: ');
disp([o, original]);
disp([e, encoded]);
disp([d, new]);
%%%%%%%%%%%%%%%%%%%%%%%
correct = strcmp(original, new);
disp(['Decoded correctly (1 true, 0 false): ' num2str(correct)]);
%disp(put);disp(correct);
