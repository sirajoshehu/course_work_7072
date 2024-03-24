function []=fastICAdemoRun()
%This function runs the FasICA demo code for generating mixture signals and
%then calls FastICA code to unmix and visualise sinals
[sig,mixedsig]=demosig();
[icasig, A, W] = fastica (mixedsig);% outputs the estimated separating
figure,
for i=1:8
subplot(2,4,i)
if i<5
plot(sig(i,:),'b')
else
plot(icasig(i-4,:),'r')
end
end
legend('original signal','estimated by ICA')