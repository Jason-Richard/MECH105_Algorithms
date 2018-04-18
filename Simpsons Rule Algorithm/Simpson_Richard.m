function [I] = Simpson_Richard(x,y)
%This function integrates experimental data using Simpson's 1/3 Rule
%   If there are an odd number of intervals, the trapezoidal rule is used
%   for the last interval.
%
%Inputs:
% x - independant experimental data
% y - dependant experimental data
%Outputs:
% I - the approximate integral
%

%check the number of inputs
if nargin<2 || nargin>2
    error('This function requires two inputs')
end

%check that the length of both sets of data are equal
if length(x)~=length(y)
    error('The length of x and y must be equal')
end

%find the spacing of x to make sure it has equal spacing
x_spacing=diff(x);
if range(x_spacing)~=0
    error('x is not equally spaced')
end

I=0; %initialize the integral approximation 
h=(x(2)-x(1)); %initialize the length of each interval

if mod(length(x),2)==0 %determine if the trapazoidal rule must be used
    warning('The trapazoidal rule will be used for the final interval')
    
    %use Simpson's 1/3 rule for the data
    for i=1:2:(length(x)-3) %don't incorporate the last interval
        yi=y(i:i+2); %use the next three data points
        I=I+(h/6)*(yi(1)+4*yi(2)+yi(3));
    end
    
    %use the trapazoidal rule to integrate the last interval
    I=I+(h/2)*(y(length(y)-1)+y(length(y)));
else
    %use Simpson's 1/3 rule for the data
    for k=1:2:(length(x)-2)
        yk=y(k:k+2); %use the next three data points
        I=I+(h/6)*(yk(1)+4*yk(2)+yk(3));
    end
end

end

