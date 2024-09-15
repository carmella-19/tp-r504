import fonctions as f


print("hello, World!")

while True : 

    nombre = int(input("Entrez un nombre: "))
    print("Le carré de ce nombre est:", nombre*nombre)

    v1 = int(input("Entrer la premiere valeur: "))
    v2 = int(input("Entrer la deuxième valeur: "))

    res = f.puissance (v1,v2)
    print (res)
