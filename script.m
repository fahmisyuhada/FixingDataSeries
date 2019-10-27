clc;
close all;
clear;

data = csvread('data.csv');
time = data(1:300,1);
value = data(1:300,2);

cek = value;

delta = calDelta(value);

deltaOri = delta;

tolerant = 3;
cDtCom = 5;

figure
subplot(2,1,1)
plot(value)
legend('Data');
subplot(2,1,2)
plot(abs(delta))
legend('Delta');


% for i=1:size(value) - cDtCom
%    dtVal = value(i:i+(cDtCom-1))
%    dtDel = delta(i:(i-2)+cDtCom)
%    dtCom = dtDel(1:end-1)
%    dtRes = dtDel(end)
%    dtCom = abs(dtCom)
%    mDtCom = mean(dtCom)
%    minOrPlus = dtDel(end-1)/abs(dtDel(end-1));
%    % If more than mean data comparation 
%    if(abs(dtRes) > mDtCom+tolerant)
%        value(i+(cDtCom-1)) = dtVal(end-1)+(mDtCom*minOrPlus)
%        delta = calDelta(value);
%    end
% end
% 
% 
% plot(delta,'*')
% hold on
% plot(value)
% plot(cek)
% plot(deltaOri,'*')
% legend('Delta','Hasil','Original','Delta Original')
