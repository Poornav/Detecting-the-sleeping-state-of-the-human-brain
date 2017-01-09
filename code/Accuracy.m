function acc=Accuracy(output)

range=1:rows(output);
count=0;
for i=range,
	if((output(i,1)<0&&output(i,2)==0)||(output(i,1)>0&&output(i,2)==1)),
		count++;
	end;
end;
acc=count/79500*100;
