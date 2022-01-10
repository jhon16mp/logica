Funcion Agregarpalabras()
	Signos<-"!#$%&/()=?*][_:;,.|°<> +-*/-"
	Letras<- "abcdefghijklmnñopqrstuvwxyz"
	Numer <- "0123456789"
	cantSignos<-0
	Repetir
		Escribir "Ingrese una frase"
		Leer palabras
		palabras<-Mayusculas(palabras)
		
		Para i<-1 hasta Longitud(palabras) Hacer
			Para j<-1 hasta Longitud(Signos) Hacer
				
				Si Subcadena(palabras,i,i)=Subcadena(Signos,j,j) Entonces
					cantSignos = cantSignos + 1
					Mostrar "ERROR USTED INGRESO CARACTERES ESPECIALES"
				FinSi
				
			FinPara
			Para  k <- 1 Hasta Longitud(Numer) Hacer
				Si Subcadena(palabras,i,i)=Subcadena(Numer,k,k) Entonces
					Mostrar "Error usted ingreso numeros"
				FinSi
			FinPara
		FinPara
		
		Escribir "La frase contiene ",cantSignos," caracteres especiales"
		Mostrar "quiere seguir ingresando palabras escriba (S para SI o N para NO)"
		Leer Respuesta
	Hasta Que Mayusculas(Respuesta) = "N"
FinFuncion

Algoritmo Objetivo3
	
	Agregarpalabras()
FinAlgoritmo
