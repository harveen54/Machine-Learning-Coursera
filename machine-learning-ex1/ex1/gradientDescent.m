function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);


for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    
%hypo= theta(1) + X(iter)*theta(2);
%diff= hypo - y(iter);

 
diff1=sum((X*theta-y).*X(:,1));
diff2=sum((X*theta-y).*X(:,2));

cons= 1/ length(y);
first = theta(1) - cons* alpha * diff1;
second= theta(2) - cons *alpha * diff2 ;

theta(1)= first;
theta(2)=second;


% delta = (1/m)*sum(X.*repmat((X*theta - y), 1, size(X,2)));
    
    
 %   theta = (theta' - (alpha * delta))';


    % ============================================================

    % Save the cost J in every iteration
    
    J_history(iter) = computeCost(X, y, theta);

   
end


end
