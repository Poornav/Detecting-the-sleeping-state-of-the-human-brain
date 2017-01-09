function acc=Check(theta)

first=load("OutputST.txt");
second=load("hyp_export_annotations.txt");
prefinal=append(first,second);
range=1:rows(first);
for i=range,
	if(prefinal(i,9)>0)
		prefinal(i,9)=1;
	end;
end;		
final=filter(prefinal(:,[4,3,9]));
Xroot(:,1)=ones(rows(final),1);
Xroot(:,2)=final(:,1);
Xroot(:,3)=final(:,2);
X=power(Xroot,2);
result=X*theta;
result(:,2)=final(:,3);
acc=Confusion(result);



