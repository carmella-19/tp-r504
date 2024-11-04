def puissance(a,b):

	if not type(a) is int :
		raise TypeError ("Only integers are allowed")
	if not type(b) is int :
		raise TypeError ("Only integers are allowed")
    
    #return a ** b

	resultat = 1
	if b < 0:
		b = -b
		for i in range(b):
			resultat *= a
		return 1/resultat

	else:
		for i in range(b):
			resultat *=a
		return resultat
