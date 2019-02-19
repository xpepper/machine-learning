function[jVal,gradient] = costFunction(theta)
  jVal = (theta(1)-9)^2 + (theta(2)-5)^2;
  gradient = zeros(2,1);
  gradient(1) = 2 * (theta(1)-9);
  gradient(2) = 2 * (theta(2)-5);
end

options = optimset('GradObj', 'on', 'MaxIter', 100);
iTheta=zeros(2,1);
[optTheta, fVal, exitFlag] = fminunc(@costFunction, iTheta, options)
