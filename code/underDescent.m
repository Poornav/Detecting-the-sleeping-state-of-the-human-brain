function theta = underDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

   % hyp=X*theta;
   % ans=sum((hyp-y).*X(:,2));
   % theta=theta-(alpha/m)*ans;

    product = X * theta;
    htheta=1./(1+exp(-product));
    theta0 = theta(1) - alpha * sum((htheta - y) .* X(:,1));
    theta1 = theta(2) - alpha * sum((htheta - y) .* X(:,2));
    theta2 = theta(3) - alpha * sum((htheta - y) .* X(:,3));
    theta3 = theta(4) - alpha * sum((htheta - y) .* X(:,4));
    theta = [theta0; theta1; theta2; theta3];
    if(iter==100),
    	alpha=0.01;




    % ============================================================

    % Save the cost J in every iteration    
    %J_history(iter) = computeCost(X, y, theta);

end

end
