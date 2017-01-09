function returnval=PlotLinear(X,y)
hold on;
range=30120:31120;
axis([-400,400,-1,2]);
for i=range,
	if(y(i)==0),
		plot(X(i,1),0);
	elseif(y(i)==1),
		plot(X(i,1),1);
	end;
end;
hold off;
