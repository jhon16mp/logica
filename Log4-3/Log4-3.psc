SubProceso Menu(opc Por Referencia)
	Borrar Pantalla
	Mostrar " Menu de opciones "
	Mostrar "----------------------"
	Mostrar "Ingrese (1) para ingresar productos "
	Mostrar "Ingrese (2) para calucar Iva "
	Mostrar "Ingrese (3) para mostrar listado de productos"
	Mostrar "Ingrese (4) para cargar Matriz"
	Mostrar "Ingrese (5) para buscar temperatura en fecha "
	Mostrar "Ingrese (6) para salir "
	Mostrar "  "
	Mostrar "Ingrese una opcion"
	Leer opc
FinSubProceso


//Validamos que no se repitan los productos
Funcion Encontro <- Buscar(arreglo,n,elemento)
	Encontro = Falso
	i = 1
	Repetir
		Si arreglo[i] = elemento Entonces
			Mostrar "El Producto ya se encuentra registrado(ARREGLO)"
			Encontro = Falso
		SiNo
			i = i + 1
			Mostrar "El producto no se encuentra registrado (ARREGLO)"
			Mostrar "Se agrego con exito el producto"
			Encontro = Verdadero
		FinSi
		
	Hasta Que Encontro = Verdadero  O Encontro = Falso
FinFuncion
SubProceso CargarInformacion(arreglo Por Referencia,n,producto Por Referencia,cant Por Referencia,nombres Por Referencia,Precios Por Referencia,precio Por Referencia)
	i = 1
	cant = 0
	
	Repetir
		Repetir
			Borrar Pantalla
			Escribir 'Ingrese el nombre del producto (no dejar en blanco)'
			Leer producto
			//Hacemos un condicional para que no almacene valores en blanco
			Si producto = caracter  Entonces
				Rep = Falso
				Escribir 'Usted no ingreso nada'
				Esperar Tecla
				
			SiNo
				nombres[i] = producto
				Rep = Verdadero
			FinSi
			
		Hasta Que Rep = Verdadero
		existe = Buscar(arreglo,n,producto)
		Si existe = Falso  Entonces
			Mostrar "El producto que ingreso ya esta registrado"
		SiNo
			arreglo[i]=producto
			i=i+1
			cant = cant + 1
			
		FinSi
		
		
		Mostrar "Desea continuar ingresando productos? escriba (S) para si o (N) para no"
		Leer Respuesta
		
		
	Hasta Que Mayusculas(Respuesta)="N" O cant = n
	
	Para i = 1 hasta n
		Repetir 
			Borrar Pantalla
			Mostrar "Ingrese el precio del " i "° producto el cual es : " nombres[i] 
			Leer  precio
			
			Si precio < 0
				Mostrar "El precio debe ser un valor positivo"
				
				Esperar Tecla
			FinSi
			
		Hasta Que precio > 0
		Precios[i] =precio
	FinPara
	
FinSubProceso

SubProceso CalcularPagos(nombres,Precios,n,MontoIva,Pagototal,Iva,MontoIvas Por Referencia,Pagostotales Por Referencia)
	Iva = 16
	i= 1
	
	Para i = 1 Hasta  n
		
		MontoIva = Precios[i] * (Iva/100)
		Pagototal = Precios[i] + MontoIva
		MontoIvas[i] = MontoIva
		Pagostotales[i] = Pagototal
		
	FinPara
	
	
FinSubProceso

SubProceso MostrarSalidas(nombres,n,Precios,MontoIvas,Pagostotales)
	Borrar Pantalla
	Para i = 1 hasta n
		Mostrar  "  "
		Mostrar "El producto " i " el cual es " nombres[i] " Tiene un costo de " Precios[i] " $"
		Mostrar "el iva es de " MontoIvas[i] " $"
		Mostrar "y el total a pagar es " Pagostotales[i] " $"
		
	FinPara
	Esperar Tecla
FinSubProceso

SubProceso LlenarMatriz(Fechas)
	
	para i=1 hasta 5 hacer //filas
		mostrar "semana " i
		para j=1 hasta 7 //columnas
			
			grados = Aleatorio(7,38)
			Mostrar "Dia " j "  " grados "°" 
			Fechas[i,j]=grados
		FinPara
	FinPara
	Esperar Tecla
FinSubProceso

SubProceso BuscarTemperatura(Fechas)
	Repetir
		Mostrar "Ingrese una semana entre 1 y 5"
		Leer i
	Hasta Que i > 0 Y i < 6
	Repetir
		Mostrar "Ingrese un dia entre 1 y 7"
		Leer j
	Hasta Que j > 0 Y j < 8
	
	Mostrar "La temperatura en la semana " i " del dia " j " es "  Fechas[i,j] "°"
	Esperar Tecla
FinSubProceso

Algoritmo Desafio_3
	
	
	Repetir
		Menu(opc)
		Segun opc hacer
		    1: Repetir
				Borrar Pantalla
				Mostrar "Ingrese cuantos productos va ha procesar"
				Leer n
			Hasta Que n > 0	
			Dimension productos[n]
			Dimension nombres[n]
			Dimension Precios[n]
			Dimension MontoIvas[n]
			Dimension Pagostotales[n]
			
			   CargarInformacion(productos,n,producto,cant,nombres,Precios,precio)
		   2: Si n = 0 Entonces
				   Mostrar "No se ha procesado nada"
				   Esperar Tecla
			   SiNo
				   CalcularPagos(nombres,Precios,n,MontoIva,Pagototal,Iva,MontoIvas,Pagostotales)
			   FinSi
			
		   3: Si n = 0 Entonces
				   Mostrar "No hay nada que mostrar"
				   Esperar Tecla
			   SiNo
				   MostrarSalidas(nombres,n,Precios,MontoIvas,Pagostotales)  
			   FinSi
			   
		   4:  Dimension Fechas[5,7]
			   LlenarMatriz(Fechas)   
			   
		   5:  BuscarTemperatura(Fechas)
		FinSegun
	Hasta Que opc = 6
	
	
	
	
	
FinAlgoritmo
