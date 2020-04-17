function fusion=lowpass_fuse(X1,X2)
%WLE
e1=WLE(X1);
e2=WLE(X2);
%WSEML
v1=WSEML(X1);
v2=WSEML(X2);
wa=v1.*e1;
wb=v2.*e2;
map=(wa>=wb);
fusion=map.*X1+~map.*X2;
end