%% 類神經網路 Neural_Network_Design homework 2013/3/18   M0154013 
%E4.7 (ii) (classify [2 3] [4 3] [1 2] on (ii) (you need to show these classification in MATLAB)) )
%     Please email your m-file to me
% 
%% input (P,T)
P = [1 1 2 2 3 3 4 4 ;
     4 5 4 5 1 2 1 2 ];
T = [0 0 0 0 1 1 1 1 ];
net = newp(minmax(P),1);% 1 neuron
%% initial condition
%net.iw{1} = [-1 1];
net.b{1} = 2;

net.trainParam.epochs = 100;%train 100 times
net = train(net,P,T);%start to train
%net.adaptParam.passes = 5;
%net = adapt(net,P,T);
W = net.iw{1}
bias = net.b{1} 
%% input classify [2 3] [4 3] [1 2]
p = [2 4 1;
     3 3 2];

a = sim(net,p);
plotpv(p,a);
point = findobj(gca,'type','line');
set(point,'Color','red');

hold on;
plotpv(P,T);
plotpc(net.iw{1},net.b{1});
hold off;