from sage.all_cmdline import *   # import sage library

_sage_const_3 = Integer(3); _sage_const_2 = Integer(2); _sage_const_1 = Integer(1); _sage_const_0 = Integer(0); _sage_const_7 = Integer(7); _sage_const_6 = Integer(6); _sage_const_5 = Integer(5); _sage_const_4 = Integer(4); _sage_const_8 = Integer(8)#!/usr/bin/env sage

import sys
from sage.all import *
from random import *
import pyfiglet
from colorama import Fore, Back, Style 
#--------------------------------------------------------------------------------------------------------
#Define Function to convert ANF form to standard input/output form
# for example : input - x0 + x1*x2, output - [[0],[ [0],[1,2] ]]
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
#Question 1 : Addition of boolean functions - f,g are n variable functions in Bo

def booleanAdd(f, g):
	# print("in add")
	h1 = f+g
	print("\n")
	print('f xor g = ') 
	print("Output in ANF form : ", h1)
	print("\n")
	print("Output in Standard Form")
	print(outputform(h1))


#Question 2 : Multiplication of Boolean functions - f,g are n variable functions in Bo

def booleanMultiply(f, g):
	h2 = f*g
	print("\n")
	print('f*g = ')
	print("Output in ANF form : ", h2)
	print("\n")
	print("Output in Standard Form")
	print(outputform(h2))
    
#Question 3  : Composition of functions - f,g are n variable functions in Bo, h is a function with 
#  2 variables in Bo. if h(u,v), g(X), f(X) are specified, output - h(f(X),g(X))
def composition(f,g,h):

	h = h.subs({x0:f, x1:g})
	print("\n")
	print('h(f,g) = ')
	print("Output in ANF form : ", h)
	print("\n")
	print("Output in Standard Form")
	print(outputform(h))


#Question 4 : partial substitution. input - f(X), and the implicant term t; output - f/t
def booleanSubs(f, t):
	dict = {mapp[i]:_sage_const_1  for i in t}
	substi = f.subs(dict)
	print("\n")
	print('f/t = ')
	print("Output in ANF form : ", substi)
	print("\n")
	print("Output in Standard Form")
	print(outputform(substi))

def build_function(inp_f):
	#Build function 'f' from inpf
	f = inp_f[_sage_const_0 ]
	for i in inp_f[_sage_const_1 ]:
		term = _sage_const_1 
		for j in i:
			term = term*mapp[j]
		f = f+term	
	return f

def print_error(e):
	print ("Error : ")
	print (e)
	print ("Check the input format and try again.")

if __name__ == '__main__':
	

	ascii_banner = pyfiglet.figlet_format("Boolean Solver")
	print(ascii_banner)
	B=BooleanPolynomialRing(_sage_const_8 ,'x',order='deglex')
	x0,x1,x2,x3,x4,x5,x6,x7 = B.gens()
	mapp = {_sage_const_0 :x0,_sage_const_1 :x1,_sage_const_2 :x2,_sage_const_3 :x3,_sage_const_4 :x4,_sage_const_5 :x5,_sage_const_6 :x6,_sage_const_7 :x7} #Create a dictionary with {0,1,2,....7} mapping to {x0,x1,....x7}
	demapp = {x0:_sage_const_0 ,x1:_sage_const_1 ,x2:_sage_const_2 ,x3:_sage_const_3 ,x4:_sage_const_4 ,x5:_sage_const_5 ,x6:_sage_const_6 ,x7:_sage_const_7 } #Create a dictionary with {x0,x1,....x7} mapping to {0,1,2,....7,}


	print("\n")
	print('Boolean Functions Implemented- Addition, Multiplication, Composition and Substitution')
	print('\n')
	print('Addition: f+g = f xor g (f and g are 8 variable functions)')
	print('\n')
	print('Multiplication: f*g = f And g (f and g are 8 variable functions)')
	print('\n')
	print('Composition: h(f(x),g(x)) (f and g are 8 variable functions, h is a 2 variable function - h(u,v))')
	print('\n')
	print('Substitution : f/t (f is a 8 variable function, t is any implicant term)')
    
	while True : 
		print("\n\n")
		print("Choose one of the operations to perform (enter the number - eg: 2, enter 0 to exit): ")
		operation = input("1. Addition, 2. Multiplication, 3. Composition, 4. Substitution: ")
		print("\n")
		if operation == _sage_const_1 :
			print('To perform Addition, provide two boolean functions f,g in Standard Input Form in atmost 8 variables')   
			print('For example, f=[1,[[0],[3],[4,5],[6,7],[0,1,2,4]]]=1+x0+x3+x4*x5+x6*x7+x0*x1*x2*x4')
			print("\n")
			inp_f = input("Give first function f =")
			inp_g = input("Give second function g =")
			print("\n")
			try:
				#Build function 'f' from inpf
				f = build_function(inp_f)

				# #Build function 'g' from inpg
				g = build_function(inp_g)

				print("function 1 : ", f)
				print("function 2 : ", g)                
				booleanAdd(f, g)

			except Exception as e: print_error(e)
            
		elif operation == _sage_const_2 :

			print('To perform Multiplication, provide two boolean functions f,g in _Standard Input Form_ in atmost 8 variables')   
			print('For example, f=[1,[[0],[3],[4,5],[6,7],[0,1,2,4]]]=1+x0+x3+x4*x5+x6*x7+x0*x1*x2*x4')   
			print("\n")
			inp_f = input("Give first function f =")
			inp_g = input("Give second function g =")
			print("\n")

			try:
				#Build function 'f' from inpf
				f = build_function(inp_f)

				# #Build function 'g' from inpg
				g = build_function(inp_g)

				print("function 1 : ", f)
				print("function 2 : ", g)
				
				booleanMultiply(f, g)
			except Exception as e: 
				print_error(e)

		elif operation == _sage_const_3 :
			print('To perform Composition, provide two boolean functions f,g in _Standard Input Form_ in atmost 8 variables')   
			print('And a boolean function for composition, h(u,v) in _Standard Input Form_ in 2 variables')
			print("\n")
			print('For example, f=[1,[[0],[3],[4,5],[6,7],[0,1,2,4]]]=1+x0+x3+x4*x5+x6*x7+x0*x1*x2*x4')  
			print('For example, h(u,v)=[0,[[0],[0,1]]]=u+u*v')       
			print("\n")
			inp_f = input("Give first function f =")
			inp_g = input("Give second function g =")
			inp_h = input("Give composition function h =")
			
			try:
				#Build function 'f' from inpf
				f = build_function(inp_f)

				# #Build function 'g' from inpg
				g = build_function(inp_g)

				# #Build function 'g' from inpg
				h = build_function(inp_h)
					
				print("function 1 : ", f)
				print("function 2 : ", g)
				print("Composition function h : ", h)
				
				composition(f,g,h)  
			except Exception as e: 
				print_error(e)

		elif operation == _sage_const_4 :
			print('To perform Substitutioin, provide one boolean functions f in _Standard Input Form_ in atmost 8 variables')
			print('and a term t in _Standard Input Form_ in atmost 8 variables')
			print("\n")            
			print('For example, f=[1,[[0],[3],[4,5],[6,7],[0,1,2,4]]]=1+x0+x3+x4*x5+x6*x7+x0*x1*x2*x4')  
			print('For example, t=[0,3,5]=x0*x3*x5')
			print("\n")
			inp_f = input("Give function f =")
			inp_t = input("Give term t =")
			
			try:
				# #Build function 'g' from inpg
				f = build_function(inp_f)

				#Build substitution term t from inp_t 
				t = _sage_const_1 
				for i in inp_t:
					t = t*mapp[i]
					
				print("function f : ", f)
				print("term t : ", t)
				booleanSubs(f, inp_t)
			except Exception as e:
				print_error(e)

		elif operation == 0:
			print("exiting...")
			print("See You Again")
			exit()

		else : 
			print("command not recognized")