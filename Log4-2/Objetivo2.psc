Funcion LeerPalabras(palabras Por Referencia,n)
	i = 1
	Para i = 1 Hasta n Hacer
		Repetir
			Borrar Pantalla
			Mostrar "Introduzca la " i "°  palabra (Recuerde solo un maximo 5 caracteres)"
			Leer palabra
			//Hacemos un condicional para que no almacene valores en blanco
			Si palabra = caracter  Entonces
				Rep = Falso
				Escribir 'Usted no ingreso nada'
				Esperar Tecla
			SiNo
				Rep = Verdadero
			FinSi
		Hasta Que Rep = Verdadero
			para x <- 1 hasta 1 Hacer
				almacenPalabras = Subcadena(palabra,1,5)
			FinPara
			Palabras[i] = almacenPalabras
			
	FinPara
		
FinFuncion
Funcion OrdenarAscendente(palabras Por Referencia,n)
	para i = 1 hasta n-1 Hacer
		para j = 1 hasta n-1 Hacer
			si palabras[j] > palabras[j+1] Entonces
				temporal = palabras[j]
				palabras[j] = palabras[j + 1 ]
				palabras[j + 1] = temporal
			FinSi
		FinPara
	FinPara
FinFuncion
Funcion MostrarPalabras(palabras,n)
	Borrar Pantalla
	Mostrar "Las Palabras ingresadas fueron "
	Para i = 1 hasta n Hacer
		Mostrar  Palabras[i]
		Mostrar "  "
	FinPara
FinFuncion
Algoritmo Objetivo2
	
	n = 4
	Dimension Palabras[n]
	LeerPalabras(palabras,n)
	OrdenarAscendente(palabras,n)
	MostrarPalabras(palabras,n)
	
FinAlgoritmo
