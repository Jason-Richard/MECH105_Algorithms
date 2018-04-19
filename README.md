### MECH105_Algorithms
This repository contains multiple algorithms that I developed which apply different numerical methods using MatLab. Each one of these algorithms were created for my MECH 105 class at CSU in the Spring semester of 2018. The algorithms are able to perform different numerical methods, but they also were created to abide by certain guidelines that were based off of different input scenarios. The specific purpose of each algorithms is detailed below.
##Algorithms
#Simpson Rule
  * This is a function that numerically integrates experimental data using Simpson's 1/3 Rule
  * Although, an addition to this algorithm is that if there are an odd number of intervals in the data, the trapezoidal rule is used for the last interval.
  * The algorith function is used in the form: Simpson_Richard(x,y) where 
  **Inputs:**
  1. x - independant experimental data 
  2. y - dependant experimental data
  **Outputs:**
  1. I - the approximate integral
#False Position Method
  * This is another algorithm in the form of a function, and it is used to estimates the root of a given function
  * It uses the false position method to approximate the root of a function to a specific amount of accuracy (if no desired accuracy is given when calling the function, a given accuracy is provided)
  * This algorithm can be called using the form: falsePosition(func,xl,xu,es,maxiter) where
  **Inputs:**
  1. func - the function being evaluated
  2. xl - the lower guess
  3. xu - the upper guess
  4. es - the desired relative error
  5. maxiter - the maximum number of iterations desired
  **Outputs:**
  1. root - the estimated root location
  2. fx - the function evaluated at the root location
  3. ea - the approximate relative error (%)
  4. iter - how many iterations were performed
#LU Factorization
  * This algorithm, which is also in the form of a function, determines the LU factorization of a square matrix
  * This function takes the nxn matrix A, and uses forward gauss elimination with partial pivoting to aquire the upper triangular matrix U and the lower triangular matrix L. The pivoting is kept track of using the permutation matrix, P.
  * The following form can be used to call the function: luFactor(A) where
  **Inputs:**
  1. A - coefficient matrix
  **Outputs:**
  1. L - lower triangular matrix
  2. U - upper triangular matrix
  3. P - the pivot matrix
