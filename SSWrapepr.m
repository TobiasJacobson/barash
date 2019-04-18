
%0, active subspace (Default)
%1, normalized active subspace
%2, active subspace x
%3, normalized active subspace x
%4, swarm subspace
%5, ols, sdr
%6, qphd, sdr
%7, sir, sdr
%8, phd, sdr
%9, save, sdr
%10, mave, sdr
%11, opg, sdr

function [W,metric] = SSWrapepr(F,X,t)

% Setting path for active subspaces
AS_HOME = '~/Documents/ResearchGroup/GitHub/matlab';
addpath(AS_HOME);
addpath([AS_HOME,'/Subspaces']);
addpath([AS_HOME,'/ResponseSurfaces']);
addpath([AS_HOME,'/Domains']);

%Needed inputs
u =[1;1];
u = u/norm(u);

%Running 
sub = compute(X, F, [],[], t, 0);
w1 = sub.eigenvectors(:,1);
metric = 1-abs(u'*w1);
W = sub.eigenvectors;

end
    
    