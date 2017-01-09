function [X,y,theta]=underfit()

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
y=final(:,3);
X=power(Xroot,2);
X(:,4)=final(:,1)*final(:,2);
theta=ones(columns(X),1);
