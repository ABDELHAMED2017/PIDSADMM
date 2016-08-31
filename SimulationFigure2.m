%% ��������������Ҫ����image��CPUtime PSNR iSNR��i�������ֻ�Ǽ򵥵�  PSNR CPUtime��i ����
%% ��Ҫ�ģ��������alpha=0.6��tolerance ��1e-6,1e-5��1e-4
clc
clear
close all

%% LASSO data of tempY
% tempY{1}=[39,34;34,30;36,30;36,30;37,31];
% tempY{2}=[38,35;33,30;35,31;35,31;36,32];
%% TV data which extracted from simulationTable2.m
tempY{1}=[214,185;260,209;231,206;57,44;121,106];
tempY{2}=[176,154;213,174;189,171;47,37;99,88];
for i=1:2% ��ͬ��tolerance 
subplot(1,2,i)
% C=[1e-6;1e-5;1e-4];
% tempY{i}=rand(5,2);
bar(tempY{i},1)
% bar(tempY,1)
%  title('$\alpha=-0.3$','Interpreter','latex','fontsize',12) 
%  xlabel('Tolerance=$10^{-6}$','Interpreter','latex','fontsize',12);
xlabel('Dimension of $D$','Interpreter','latex','fontsize',12);
ylabel('Iteration Numbers')
legend('PD-SADMM','PID-SADMM')
set(gca,'XTickLabel',{'100*100','200*200','300*300','400*400','500*500'})
end
