//Validamos que no se repitan los repuestos
Funcion Encontro <- Buscar(arreglo,n,elemento)
	Encontro = Falso
	i = 1
	Repetir
		Si arreglo[i] = elemento Entonces
			Mostrar "El repuesto buscado ya esta en el taller(ARREGLO)"
			Encontro = Falso
		SiNo
			i = i + 1
			Mostrar "El repuesto no se encuentra en el taller(ARREGLO)"
			Mostrar "Se agrego con exito el repuesto"
			Encontro = Verdadero
		FinSi
		
	Hasta Que Encontro = Verdadero  O Encontro = Falso
FinFuncion

SubProceso CargaRepuestos(arreglo Por Referencia,n,repuesto Por Referencia,cant Por Referencia,nombres Por Referencia)
	i = 1
	cant = 0
	
	Repetir
	Repetir
		Borrar Pantalla
		Escribir 'Ingrese el nombre del repuesto (no dejar en blanco)'
		Leer repuesto
		//Hacemos un condicional para que no almacene valores en blanco
		Si repuesto = caracter  Entonces
			Rep = Falso
			Escribir 'Usted no ingreso nada'
			Esperar Tecla
			
		SiNo
			nombres[i] = repuesto
			Rep = Verdadero
		FinSi
		
	Hasta Que Rep = Verdadero
	existe = Buscar(arreglo,n,repuesto)
	Si existe = Falso  Entonces
		Mostrar "El repuesto que ingreso ya esta registrado"
	SiNo
		arreglo[i]=repuesto
		i=i+1
		cant = cant + 1
		
	FinSi
	
	
	Mostrar "Desea continuar ingresando repuestos? escriba (S) para si o (N) para no"
	Leer Respuesta
		
	
Hasta Que Mayusculas(Respuesta)="N" O cant = n

FinSubProceso
//Ingresamos los precios a los repuestos
Funcion P <- PrecioRepuesto(nombres,n,cant,Precios,precio)
	Rep = Falso
	i = 1
	//Se crean los valores de los rangos
	RangoI = 10000 
	RangoS =1000000
	Para i = 1 hasta n
		Repetir 
			Borrar Pantalla
			Mostrar "Ingrese el precio del " i "° repuesto el cual es : " nombres[i] 
			Leer  precio
			
			Si precio < RangoI O precio > RangoS
			Mostrar "El precio esta fuera del rango"
				
			Esperar Tecla
			  FinSi
			
		Hasta Que precio >= RangoI Y precio <= RangoS
		Precios[i] =precio
	FinPara
	 
FinFuncion
//Calulamos cuando paga cada cliente por su repuesto
SubProceso LeerYCalcularPagos(nombres,Precios,n,cantidades,MontoIva,Pagototal,Iva,MontoIvas Por Referencia,Pagostotales Por Referencia,Monto,Montos Por Referencia)
	Iva = 16
	i= 1
	Para i = 1 hasta n
		Repetir 
			Borrar Pantalla
			Mostrar "Ingrese la cantidad que desea el cliente para el repuesto " nombres[i] " El cual tiene un precio de  "  Precios[i] " $ "
			Leer  cantidad
			
		Hasta Que cantidad > 0
		cantidades[i] =cantidad
	FinPara
	Para i = 1 Hasta  n
		Monto = cantidades[i] * Precios[i]
		MontoIva = Monto * (Iva/100)
		Pagototal = Monto + MontoIva
		MontoIvas[i] = MontoIva
		Pagostotales[i] = Pagototal
		Montos[i] = Monto
	FinPara
	
	
FinSubProceso
//Aqui mostramos todo 
SubProceso SalidasDelTaller(nombres,MontoIvas,Pagostotales,cantidades,Precios,n,Montos)
	Borrar Pantalla
	i = 1
	Para i=1 Hasta n
		Mostrar "        "
		Mostrar "El cliente numero " i "° se llevo el repuesto que se llama: " nombres[i] " el cual tiene un precio de " Precios[i]
		Mostrar "Con una cantidad de " cantidades[i] " el cual su monto sin iva es : " Montos[i]  " $ "
		Mostrar "Su IVA es de " MontoIvas[i] " y Su Total a pagar es de " Pagostotales[i] " $ "
	FinPara
FinSubProceso

Algoritmo Desafio_1
	//Definir repuesto,repuestos,Precios,Montos cantidades 
	//Definir Rep Como Logico
	//Definir precio,i,n Como Entero
	//Definir cantidad,Iva,RangoI,RangoS Como Entero
	//Definir MontoIva,Pagototal Como Real
	Repetir
		Borrar Pantalla
		Mostrar "Ingrese cuantos repuestos va ha procesar"
		Leer n
	Hasta Que n > 0	
	 
	Dimension repuestos[n]
	Dimension nombres[n]
	Dimension Precios[n]
	Dimension cantidades[n]
	Dimension MontoIvas[n]
	Dimension Pagostotales[n]
	Dimension montos[n]
	 CargaRepuestos(repuestos,n,repuesto,cant,nombres)
	 precio = PrecioRepuesto(nombres,n,cant,Precios,precio)
	 LeerYCalcularPagos(nombres,Precios,n,cantidades,MontoIva,Pagototal,Iva,MontoIvas,Pagostotales,Monto,Montos)
	 SalidasDelTaller(nombres,MontoIvas,Pagostotales,cantidades,Precios,n,Montos)
FinAlgoritmo
