#!/usr/bin/env sage

import sys
from sage.all import *
from random import *

#--------------------------------------------------------------------------------------------------------
B=BooleanPolynomialRing(8,'x',order='deglex')
x0,x1,x2,x3,x4,x5,x6,x7 = B.gens()
mapp = {0:x0,1:x1,2:x2,3:x3,4:x4,5:x5,6:x6,7:x7} #Create a dictionary with {0,1,2,....7} mapping to {x0,x1,....x7}
demapp = {x0:0,x1:1,x2:2,x3:3,x4:4,x5:5,x6:6,x7:7} #Create a dictionary with {x0,x1,....x7} mapping to {0,1,2,....7,}

inp1 = [1,[[0],[3],[4,5],[6,7],[0,1,2,4],[1,2,5,6,7]]] #Feed in Input function f
inp2 = [0,[[1],[2,4],[5,6],[1,2,6],[0,5,6,7]]] #Feed in Input function g
t = [0,4,5] #Feed in the substitution term t

#--------------------------------------------------------------------------------------------------------
#Build function 'f' from inp1
f = inp1[0]
for i in inp1[1]:
	term = 1
	for j in i:
		term = term*mapp[j]
	f = f+term	

#Build function 'g' from inp2
g = inp2[0]
for i in inp2[1]:
	term = 1
	for j in i:
		term = term*mapp[j]
	g = g+term	

#--------------------------------------------------------------------------------------------------------
#Define Function to convert ANF form to standard input/output form
def outputform(func):
	p = func.terms()
	output = []
	constant = 0
	for i in p:
		term = []
		elements = i.set()
		for j in elements:
			for k in j:
					term.append(demapp[k])
		if term == []:
			constant = 1
			continue
		else:
			output.append(term)

	output = [constant,output]
	return output

	
#--------------------------------------------------------------------------------------------------------
#Question 1
h1 = f+g
print('f xor g = ') 
print(outputform(h1))


#Question 2
h2 = f*g
print('f*g = ')
print(outputform(h2))


#Question 4
dict = {mapp[i]:1 for i in t}
substi = f.subs(dict)
print('f/t = ')
print(outputform(substi))