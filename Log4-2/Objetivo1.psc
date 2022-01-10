Funcion arregloDescendente(arreglo Por Referencia,n)
	mensaje =  "Por favor ingrese un dato valido"
	para i = 1 hasta n Hacer
		Repetir
			Borrar Pantalla
			Mostrar "Para el " i "° puesto ingrese un valor que este dentro del rango -9 y 9 para poder almacenar"
			Leer arreglo[i]
			Si arreglo[i] < -9 O arreglo[i] > 9  Entonces
				Mostrar mensaje
				Esperar Tecla
			FinSi
		Hasta Que arreglo[i] >= -9 Y arreglo[i] <= 9
		
	FinPara
	
	para i = 1 hasta n-1 Hacer
		para j = 1 hasta n-1 Hacer
			si arreglo[j] < arreglo[j+1] Entonces
				temporal = arreglo[j]
				arreglo[j] = arreglo[j + 1 ]
				arreglo[j + 1] = temporal
			FinSi
		FinPara
	FinPara
FinFuncion

Funcion mostrarArreglo(arreglo,n)
	Mostrar "ahora el arreglo ordenado de forma descendente"
	para i = 1 hasta n Hacer
		mostrar arreglo[i]
		mostrar "  "
	FinPara
FinFuncion

Algoritmo Objetivo1
	Repetir
		Mostrar "Ingrese cuantos valores quiere almacenar en el arreglo"
		Leer n
	Hasta Que n > 0
	Dimension arreglo[n]
	arregloDescendente(arreglo,n)
	mostrarArreglo(arreglo,n)
FinAlgoritmo
