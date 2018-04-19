
False Position Method
  * This is an algorithm in the form of a function, and it is used to estimates the root of a given function
  * It uses the false position method to approximate the root of a function to a specific amount of accuracy (if no desired accuracy is given when calling the function, a given accuracy is provided)
  * This algorithm can be called using the form: falsePosition(func,xl,xu,es,maxiter) where
  
  **Inputs:**
  
     func - the function being evaluated
     xl - the lower guess
     xu - the upper guess
     es - the desired relative error
     maxiter - the maximum number of iterations desired
  
  **Outputs:**
  
     root - the estimated root location
     fx - the function evaluated at the root location
     ea - the approximate relative error (%)
     iter - how many iterations were performed
  
