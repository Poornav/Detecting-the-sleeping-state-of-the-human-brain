function acc=Run()

theta=[1.2255e+05;-9.9675e+03;1.4734e+05];
first=load(argv(){5,1});
second=load(argv(){7,1});
prefinal=append(first,second);
range=1:rows(first);
for i=range,
	if(prefinal(i,9)>0)
		prefinal(i,9)=1;
	end;
end;
final=prefinal(:,[4,3,9]);
Xroot(:,1)=ones(rows(final),1);
Xroot(:,2)=final(:,1);
Xroot(:,3)=final(:,2);
X=power(Xroot,2);
result=X*theta;
result(:,2)=final(:,3);
acc=Confusion(result);
disp(acc);



