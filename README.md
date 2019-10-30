# Implementation of Boolean Arithmetic in SAGE math

Given Boolean polynomials in several variables in ANF form the code will return their addition, products, compositions and substitutions. <br/>
## Running the Script:
1. Install sagemath via: https://doc.sagemath.org/html/en/installation/
2. Run the main file using: sage boolean_arithmetic.sage
## Giving the Inputs:
The user is expected to follow the given formats to input the input functions (`f`, `g`), composition function (`h`) and substitution function (`t`) <br/>
1. The input functions `f` and `g` are expected as follows: <br/>
```python 
f = [1, [ [0], [3], [4,5], [6,7], [0,1,2,4] ] ] =  1 + x0 + x3 + x4*x5 + x6*x7 + x0*x1*x2*x4
``` 
2. The composition function `h` is expected as follows: <br/>
```python
h(u, v) = [ 0, [ [0], [0,1] ] ] = u + uv
```
3. The substitution function `t` is expected as follows: <br/>
```python
t = [ 0, 3, 5 ] = x0*x3*x5
```

The outputs are given in **ANF form** and **Standard Form**



