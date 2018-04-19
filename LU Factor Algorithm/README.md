### LU Factorization
  * This algorithm, which is also in the form of a function, determines the LU factorization of a square matrix
  * This function takes the nxn matrix A, and uses forward gauss elimination with partial pivoting to aquire the upper triangular matrix U and the lower triangular matrix L. The pivoting is kept track of using the permutation matrix, P.
  * The following form can be used to call the function: luFactor(A) where
  
  **Inputs:**
  
     A - coefficient matrix
  
  **Outputs:**
  
     L - lower triangular matrix
     U - upper triangular matrix
     P - the pivot matrix
