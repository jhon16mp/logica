Funcion LeerEntrada(NumIdentificador Por Referencia)
	Repetir
		Borrar Pantalla
		Mostrar "Ingrese la parte numerica del codigo de identificacion (solo ingrese 3 valores numericos)"
		Leer NumIdentificador
		Si NumIdentificador < 100 O NumIdentificador >= 1000 Entonces
			Mostrar "Por favor ingrese 3 valores numericos"
			Esperar Tecla
		FinSi
	Hasta Que NumIdentificador >= 100 Y NumIdentificador < 1000
	
FinFuncion
Funcion PegarDatos(CodigoIdentificacion,NumIdentificador,union Por Referencia)
	union = CodigoIdentificacion + ConvertirATexto(NumIdentificador)
FinFuncion

Funcion MostrarUnion(union)
	Mostrar "el codigo de identificacion es " union
FinFuncion


Algoritmo objetivo4
	Definir pegar,union,CodigoIdentificacion Como Caracter
	Definir NumIdentificador, Resultado Como Entero
	CodigoIdentificacion = "IDN-"
	
	LeerEntrada(NumIdentificador)
	PegarDatos(CodigoIdentificacion,NumIdentificador,union)
	MostrarUnion(union)
	
	
FinAlgoritmo
