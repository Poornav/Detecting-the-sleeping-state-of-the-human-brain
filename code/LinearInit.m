function [X,y,theta]=LinearInit()

first=load("OutputST.txt");
second=load("hyp_export_annotations.txt");
prefinal=append(first,second);
range=1:rows(first);
for i=range,
	if(prefinal(i,9)>0)
		prefinal(i,9)=1;
	end;
end;		
final=prefinal(:,[4,9]);
X(:,1)=ones(rows(final),1);
X(:,2)=final(:,1);
y=final(:,3);
theta=ones(columns(X),1);
