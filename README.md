# Implementation of Boolean Arithmetic in SAGE math

Given Boolean polynomials in several variables in ANF form the code will return their addition, products, compositions and substitutions. <br/>
## Running the Script:
1. Install sagemath via: https://doc.sagemath.org/html/en/installation/
2. Run the main file using: sage boolean_arithmetic.sage
## Functions Implemented:
The various functions implemented and the formats the user is expected to follow while inputting functions. <br/>
1. **Addition** <br/>

Inputs <br/>
```python 
f = [1, [ [0], [3], [4,5], [6,7], [0,1,2,4] ] ] =  1 + x0 + x3 + x4*x5 + x6*x7 + x0*x1*x2*x4
g = [1, [ [0], [3], [4,2], [6,5], [0,2,4] ] ] =  1 + x0 + x3 + x4*x2 + x6*x5 + x0*x2*x4
``` 
Outputs <br/>
```python 
f + g = [1, [ [0], [3], [4,5], [6,7], [0,1,2,4] ] ] =  1 + x0 + x3 + x4*x5 + x6*x7 + x0*x1*x2*x4
``` 
2. **Product** <br/>

Inputs <br/>
```python 
f = [1, [ [0], [3], [4,5], [6,7], [0,1,2,4] ] ] =  1 + x0 + x3 + x4*x5 + x6*x7 + x0*x1*x2*x4 
g = [1, [ [0], [3], [4,2], [6,5], [0,2,4] ] ] =  1 + x0 + x3 + x4*x2 + x6*x5 + x0*x2*x4
``` 
Outputs <br/>
```python 
f * g = [1, [ [0], [3], [4,5], [6,7], [0,1,2,4] ] ] =  1 + x0 + x3 + x4*x5 + x6*x7 + x0*x1*x2*x4
``` 
3. **Composition** <br/>

Inputs <br/>
```python 
f = [1, [ [0], [3], [4,5], [6,7], [0,1,2,4] ] ] =  1 + x0 + x3 + x4*x5 + x6*x7 + x0*x1*x2*x4
g = [1, [ [0], [3], [4,2], [6,5], [0,2,4] ] ] =  1 + x0 + x3 + x4*x2 + x6*x5 + x0*x2*x4
h(u, v) = [ 0, [ [0], [0,1] ] ] = u + uv
``` 
Outputs <br/>
```python 
h(f, g) = [1, [ [0], [3], [4,5], [6,7], [0,1,2,4] ] ] =  1 + x0 + x3 + x4*x5 + x6*x7 + x0*x1*x2*x4
``` 
4. **Substitution** <br/>

Inputs <br/>
```python 
f = [1, [ [0], [3], [4,5], [6,7], [0,1,2,4] ] ] =  1 + x0 + x3 + x4*x5 + x6*x7 + x0*x1*x2*x4
t = [0, 3, 5] = x0*x3*x5
```
Outputs <br/>
```python 
f/t = [1, [ [0], [3], [4,5], [6,7], [0,1,2,4] ] ] =  1 + x0 + x3 + x4*x5 + x6*x7 + x0*x1*x2*x4
``` 

The outputs are given in **ANF form** and **Standard Form**



