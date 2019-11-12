%%
a = 10;
b = 2.5*10^23;
c = 2 + 3i;
d = exp((2j*pi)/3);
%%%%%%%%%%%%%%%%%%%%
aVec = [3.14 15 9 26];
bVec = [2.71; 8; 28; 182];
cVec = linspace(5, -5, 50);
dVec = logspace(0, 1, 100);
eVec = ['Hello'];
%%%%%%%%%%%%%%%%%%%%%
aMat = ones(9)*2;
v = [1 2 3 4 5 4 3 2 1];
bMat = diag(v);
cMat = reshape(1:100, [10, 10]);
dMat = nan(3, 4);
eMat = [13 -1 5; -22 10 -87];
fMat = randi([-3 3], 5, 3);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
j = (a-15)/6;
k = exp(-j);
x = 1/(1+k);
y = (sqrt(a) + nthroot(b, 21))^pi;
l =real([(c+d)*(c-d)]);
m = sin((a*pi)/3);
z = (log(l*m))/(c*conj(c));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
xMat = (aVec*bVec)*(aMat)^2;
yMat = (bVec*aVec);
zMat = det(cMat)*transpose(aMat*bMat);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cSum = sum(cMat);
eMean = transpose(mean(eMat));
eMat(1, 1) = 1;
eMat(1, 2) = 1;
eMat(1, 3) = 1;
cSub = cMat([2 9], [2 9]);
lin = [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20];
evenInd = rem(lin, 2)==0;
lin(evenInd) = lin(evenInd) * -1;
r = rand(1, 5);
r(r < 0.5) = 0;
%%%%%%%%%%%%%%%%%%%%%%%%%%%

disp(r)
