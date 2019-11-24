# Implementation of Boolean Arithmetic in SAGE math

Given Boolean polynomials in several variables in ANF form the code will return their addition, products, compositions and substitutions. <br/>
## Running the Script:
1. Install sagemath via: https://doc.sagemath.org/html/en/installation/
2. Run the main file using: sage boolean_arithmetic.sage
## Functions Implemented:
The various functions implemented and the formats the user is expected to follow while inputting functions. <br/>
1. **Addition** <br/>

Input <br/>
```python 
f = [1, [ [0], [3], [4,5], [6,7], [0,1,2,4] ] ] =  1 + x0 + x3 + x4*x5 + x6*x7 + x0*x1*x2*x4
g = [1, [ [0], [3], [4,2], [6,5], [0,2,4] ] ] =  1 + x0 + x3 + x4*x2 + x6*x5 + x0*x2*x4
``` 
Output <br/>
```python 
f + g = [0, [[0, 1, 2, 4], [0, 2, 4], [2, 4], [4, 5], [5, 6], [6, 7]]] =  x0*x1*x2*x4 + x0*x2*x4 + x2*x4 + x4*x5 + x5*x6 + x6*x7
``` 
2. **Product** <br/>

Input <br/>
```python 
f = [1, [ [3], [4,5] ] ] =  1 + x3 + x4*x5  
g = [1, [ [0], [4,2] ] ] =  1 + x0 + x4*x2
``` 
Output <br/>
```python 
f * g = [1, [[0, 4, 5], [2, 3, 4], [2, 4, 5], [0, 3], [2, 4], [4, 5], [0], [3]]] =  x0*x4*x5 + x2*x3*x4 + x2*x4*x5 + x0*x3 + x2*x4 + x4*x5 + x0 + x3 + 1
``` 
3. **Composition** <br/>

Input <br/>
```python 
f = [1, [ [0], [3], [4,5] ] ] =  1 + x0 + x3 + x4*x5 
g = [0, [ [0], [3], [4,2] ] ] =  x0 + x3 + x4*x2 
h(u, v) = [ 0, [ [0], [0,1] ] ] = u + uv
``` 
Output <br/>
```python 
h(f, g) = [1, [[0, 2, 4], [0, 4, 5], [2, 3, 4], [2, 4, 5], [3, 4, 5], [2, 4], [4, 5], [0], [3]]] =  x0*x2*x4 + x0*x4*x5 + x2*x3*x4 + x2*x4*x5 + x3*x4*x5 + x2*x4 + x4*x5 + x0 + x3 + 1
``` 
4. **Substitution** <br/>

Input <br/>
```python 
f = [1, [ [0], [3], [4,5], [6,7], [0,1,2,4] ] ] =  1 + x0 + x3 + x4*x5 + x6*x7 + x0*x1*x2*x4
t = [0, 3, 5] = x0*x3*x5
```
Output <br/>
```python 
f/t = [1, [[1, 2, 4], [6, 7], [4]]] =  x1*x2*x4 + x6*x7 + x4 + 1  
``` 

The Output are given in **ANF form** and **Standard Form**



