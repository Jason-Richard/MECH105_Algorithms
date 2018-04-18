function [root,fx,ea,iter] = falsePosition(func,xl,xu,es,maxiter)
%falsePosition: estimates the root of a given function
%   this function will use the false position method to approximate
%   the root of a function to a specific amount of accuracy.
%Inputs:
% func - the function being evaluated
% xl - the lower guess
% xu - the upper guess
% es - the desired relative error
% maxiter - the maximum number of iterations desired
%
%Outputs:
% root - the estimated root location
% fx - the function evaluated at the root location
% ea - the approximate relative error (%)
% iter - how many iterations were performed

if nargin < 3 % check if enough inputs were given
    error ('at least three input arguments required');
end
if nargin<4||isempty(es) %check if a "close enough" value was given
    es=0.0001;
end
if nargin<5||isempty(maxiter) %chech if a max # of iterations was given
    maxiter=200;
end
if sign(func(xl))==sign(func(xu)) %check if there is a root
    error ('the sign does not change within the given interval');
end
if xl>=xu % check if the given bracket values are acceptable
    error ('The given brackets cannot be used')
end
iter=0; %set the iteration count to zero
ea=1; %set the approximate percent error to 100%
xr=xl; %set the first approximate equal to the left bracket
while ea >= es && iter<=maxiter
    xrlast=xr; %keep the value of the last estimated
    %root for the error approximation calulation
    
    xr=xu-(func(xu)*(xl-xu))/(func(xl)-func(xu));
    %use the false position equation to estimate the root
    
    if xr ~= 0
        ea = abs((xr - xrlast)/xr) * 100; 
        %calculate the approximate percent error
    end
    if func(xr)*func(xu) < 0 
        %Determine which side of the approximate root should be used
        
        xl = xr; %reset the brackets
    elseif func(xr)*func(xl) < 0
        %Determine which side of the approximate root should be used
        
        xu = xr; %reset the brackets
    else
        ea = 0;
    end
    iter=iter+1; %count the number of iterations
end
root=double(xr); %calculate the approximate root
fx=func(xr); %calculate the function at the discovered root value
end

