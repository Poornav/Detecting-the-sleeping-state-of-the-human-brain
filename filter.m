function out=filter(sig)

range=1:rows(sig);
val1=100;
for i=range,
if(sig(i,3)==0 && sig(i,1) >(-val1) && sig(i,1) < val1 ),
if(sig(i,1)>0),
sig(i,1)=val1;
else,
sig(i,1)=-val1;
end;
end;

if(sig(i,3)==1 && sig(i,1) >(val1) && sig(i,1) < -val1 ),
if(sig(i,1)>val1),
sig(i,1)=val1;
elseif(sig(i,1)< -val1),
sig(i,1)=-val1;
end;
end;
end;
out=sig;
