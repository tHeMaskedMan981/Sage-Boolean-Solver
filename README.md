# Implementation of Boolean Arithmetic in SAGE math

Given Boolean polynomials in several variables in ANF form the code will return their addition, products, compositions and substitutions. <br/>
## Running the Script:
1. Install sagemath via: https://doc.sagemath.org/html/en/installation/
2. Run the main file using: sage boolean_arithmetic.sage
## Giving the Inputs:
The user is expected to follow the given formats to input the input functions (**f**, **g**), composition function (**h**) and substitution function (**t**) <br/>
1. The input functions **f** and **g** are expected as follows: <br/>
f = [1, [ [0], [3], [4,5], [6,7], [0,1,2,4] ] ] corresponds to  1 + x<sub>0</sub> + x<sub>3</sub> + x<sub>4</sub>x<sub>5</sub> + x<sub>6</sub>x<sub>7</sub> + x<sub>0</sub>x<sub>1</sub>x<sub>2</sub>x<sub>4</sub>  
2. The composition function **h** is expected as follows: <br/>
h(u,v) = [ 0, [ [0], [0,1] ] ] = u + uv
3. The substitution function **t** is expected as follows: <br/>
t = [ 0, 3, 5 ] = x<sub>0</sub>x<sub>3</sub>x<sub>5</sub>

The outputs are given in **ANF form** and **Standard Form**



