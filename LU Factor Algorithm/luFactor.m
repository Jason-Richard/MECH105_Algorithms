function [L,U,P] = luFactor(A)
%luFactor determines the LU factorization of a square matrix
%   This function takes the nxn matrix A, and uses forward gauss 
%   elimination with partial pivoting to aquire the upper triangular 
%   matrix U and the lower triangular matrix L. The pivoting is kept 
%   track of using the permutation matrix, P.
%Inputs:
%   A - coefficient matrix
%Outputs:
%   L - lower triangular matrix
%   U - upper triangular matrix
%   P - the pivot matrix

if nargin<1 || nargin>1 % check validity of the number of inputs
    error('This function only allows a single input')
end 
if ismatrix(A)==0 % check that a matrix was given as the input
    error('You must input a matrix')
end
if isnumeric(A)==0 % chech validity of the contents of the given matrix
    error('Your matrix must contain numeric values')
end
[m,n]=size(A); % find the size of A
if m~=n % make sure the given matrix is a square matrix
    error('This function only works for square matrices')
end

L=eye(m); % initialize the empty lower triangular matrix
P=L; % initialize the permutation matrix
U=A; % begin the upper triangular matrix as A
for i=1:m-1
    pivot=max(abs(U(i:m,i))); % store the magnitudes of the row
    for j=i:m
        if(abs(U(j,i))==pivot) % check if there should be a pivot
            ind=j; % store the correct value for indexing
            break;
        end
    end
    % reorient the upper triangular matrix in accordance with the pivoting
    U([i,ind],i:m)=U([ind,i],i:m);
    % reorient the lower triangular matrix in accordance with the pivoting
    L([i,ind],1:i-1)=L([ind,i],1:i-1);
    % reorient the permutation matrix in accordance with the pivoting
    P([i,ind],:)=P([ind,i],:);
    for j=i+1:m
        % determine the factor to multiply the row by
        L(j,i)=U(j,i)/U(i,i); 
        % zero out the next row's left most value
        U(j,i:m)=U(j,i:m)-L(j,i)*U(i,i:m);
    end
end
end