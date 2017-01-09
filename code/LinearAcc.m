function acc=LinearAcc(output)

tp=0;
tn=0;
fp=0;
fn=0;
p=0;
n=0;
range=1:rows(output);
for i=range,
	if(output(i,2)==1),
		if(output(i,1)<0.5),
			fp++;
		else
			tp++;
		end;
		p++;
	end;
	if(output(i,2)==0),
		if(output(i,1)>=0.5),
			fn++;
		else
			tn++;
		end;
		n++;
	end;
end;
acc=(tp+tn)/(p+n)*100;
