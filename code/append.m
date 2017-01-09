function out=append(tme,stage)

col=ones(rows(tme),1);
range=1:rows(stage);
lowerlim=1;
for i=range,
	upperlim=stage(i,2)+stage(i,1);
	stg=stage(i,3);
	innerrange=lowerlim:upperlim;
	for j=innerrange,
		col(j)=stg;
	end;
	lowerlim=upperlim;
end;
out=[tme col];


