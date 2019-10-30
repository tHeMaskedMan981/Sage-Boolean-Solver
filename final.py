from sage.all_cmdline import *   # import sage library

_sage_const_3 = Integer(3); _sage_const_2 = Integer(2); _sage_const_1 = Integer(1); _sage_const_0 = Integer(0); _sage_const_7 = Integer(7); _sage_const_6 = Integer(6); _sage_const_5 = Integer(5); _sage_const_4 = Integer(4); _sage_const_8 = Integer(8)#!/usr/bin/env sage

import sys
from sage.all import *
from random import *

#--------------------------------------------------------------------------------------------------------
#Define Function to convert ANF form to standard input/output form
def outputform(func):
	p = func.terms()
	output = []
	constant = _sage_const_0 
	for i in p:
		term = []
		elements = i.set()
		for j in elements:
			for k in j:
					term.append(demapp[k])
		if term == []:
			constant = _sage_const_1 
			continue
		else:
			output.append(term)

	output = [constant,output]
	return output

	
#--------------------------------------------------------------------------------------------------------
#Question 1

def booleanAdd(f, g):
	# print("in add")
	h1 = f+g
	print('f xor g = ') 
	print("ANF form : ", h1)
	print("\n")
	print("list representation : ", outputform(h1))


#Question 2

def booleanMultiply(f, g):
	h2 = f*g
	print('f*g = ')
	print("ANF form : ", h2)
	print("\n")
	print(outputform(h2))
    
#Question 3    
def composition(f,g,h):
    #B2 = BooleanPolynomialRing(_sage_const_2,names=('u,v'),order='deglex')
    #u,v = B2.gens()
    #h = u+u*v  #Define the Input function h
	h = h.subs({x0:f, x1:g})
	print('h(f,g) = ')
	print("ANF form : ", h)
	print(outputform(h))


#Question 4
def booleanSubs(f, t):
	dict = {mapp[i]:_sage_const_1  for i in t}
	substi = f.subs(dict)
	print('f/t = ')
	print("ANF form : ", substi)
	print("\n")
	print(outputform(substi))

if __name__ == '__main__':
	B=BooleanPolynomialRing(_sage_const_8 ,'x',order='deglex')
	x0,x1,x2,x3,x4,x5,x6,x7 = B.gens()
	mapp = {_sage_const_0 :x0,_sage_const_1 :x1,_sage_const_2 :x2,_sage_const_3 :x3,_sage_const_4 :x4,_sage_const_5 :x5,_sage_const_6 :x6,_sage_const_7 :x7} #Create a dictionary with {0,1,2,....7} mapping to {x0,x1,....x7}
	demapp = {x0:_sage_const_0 ,x1:_sage_const_1 ,x2:_sage_const_2 ,x3:_sage_const_3 ,x4:_sage_const_4 ,x5:_sage_const_5 ,x6:_sage_const_6 ,x7:_sage_const_7 } #Create a dictionary with {x0,x1,....x7} mapping to {0,1,2,....7,}

	#inp_f = [_sage_const_1 ,[[_sage_const_0 ],[_sage_const_3 ],[_sage_const_4 ,_sage_const_5 ],[_sage_const_6 ,_sage_const_7 ],[_sage_const_0 ,_sage_const_1 ,_sage_const_2 ,_sage_const_4 ],[_sage_const_1 ,_sage_const_2 ,_sage_const_5 ,_sage_const_6 ,_sage_const_7 ]]] #Feed in Input function f
	#inp_g = [_sage_const_0 ,[[_sage_const_1 ],[_sage_const_2 ,_sage_const_4 ],[_sage_const_5 ,_sage_const_6 ],[_sage_const_1 ,_sage_const_2 ,_sage_const_6 ],[_sage_const_0 ,_sage_const_5 ,_sage_const_6 ,_sage_const_7 ]]] #Feed in Input function g
	#inp_t = [_sage_const_0 ,_sage_const_4 ,_sage_const_5 ] #Feed in the substitution term t
	#inp_h=[_sage_const_0,[[_sage_const_0],[_sage_const_0,_sage_const_1]]]
	inp_f = input("Give first function f =")
	inp_g = input("Give second function g =")
	inp_h = input("Give composition function h(u,v) =")
	inp_t = input("Give term t for f/t =")
	#--------------------------------------------------------------------------------------------------------
	#Build function 'f' from inp1
	f = inp_f[_sage_const_0 ]
	for i in inp_f[_sage_const_1 ]:
		term = _sage_const_1 
		for j in i:
			term = term*mapp[j]
		f = f+term	

	#Build function 'g' from inp2
	g = inp_g[_sage_const_0 ]
	for i in inp_g[_sage_const_1 ]:
		term = _sage_const_1 
		for j in i:
			term = term*mapp[j]
		g = g+term
        
    #Build function 'h' from inp3
	h = inp_h[_sage_const_0 ]
	for i in inp_h[_sage_const_1 ]:
		term = _sage_const_1 
		for j in i:
			term = term*mapp[j]
		h = h+term
        
	#Build substitution term t from input t 
	t = _sage_const_1 
	for i in inp_t:
		t = t*mapp[i]

	

	print("function 1 : ", f)
	print("function 2 : ", g)
	print("composition function : ", h)
	print("substitution term t : ", t)
	print("\n")
	
	while True : 
		print("\n\n")
		operation = input("Choose one of the operations from 1. Add, 2. Multiply, 3. Composition, 4. Subs: ")
		if operation == _sage_const_1 :
			booleanAdd(f, g)
		elif operation == _sage_const_2 :
			booleanMultiply(f, g)
		elif operation == _sage_const_3 :
			composition(f,g,h)  
		elif operation == _sage_const_4 :
			booleanSubs(f, inp_t)
		else : 
			print("command not recognized")