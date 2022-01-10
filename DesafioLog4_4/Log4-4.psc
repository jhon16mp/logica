SubProceso Menu(opc Por Referencia)
	Borrar Pantalla
	Mostrar " Menu de opciones "
	Mostrar "----------------------"
	Mostrar "Ingrese (1) Registrar nombres y cédulas de los pacientes "
	Mostrar "Ingrese (2) cargar datos de pacientes"
	Mostrar "Ingrese (3) listado de pacientes"
	Mostrar "Ingrese (4) Historia medica y edad mayor"
	Mostrar "Ingrese (5) salir del sistema"
	Mostrar "  "
	Mostrar "Ingrese una opcion"
	Leer opc
FinSubProceso

//Validamos que no se repitan los pacientes
Funcion Encontro <- Buscar(arreglo,n,elemento)
	Encontro = Falso
	i = 1
	Repetir
		Si arreglo[i] = elemento Entonces
			Mostrar "El paciente ya se encuentra registrado(ARREGLO)"
			Esperar Tecla
			Encontro = Falso
		SiNo
			i = i + 1
			Mostrar "El paciente no se encuentra registrado (ARREGLO)"
			Mostrar "Se agrego con exito el paciente"
			Esperar Tecla
			Encontro = Verdadero
		FinSi
		
	Hasta Que Encontro = Verdadero  O Encontro = Falso
FinFuncion
SubProceso CargarInformacion(arreglo Por Referencia,nombres Por Referencia,nombre Por Referencia,n)
	i = 1
	cant = 0
	
	Repetir
		Repetir
			Borrar Pantalla
			Escribir 'Ingrese el nombre del paciente " i " (no dejar en blanco)'
			Leer nombre
			//Hacemos un condicional para que no almacene valores en blanco
			Si nombre = caracter  Entonces
				Rep = Falso
				Escribir 'Usted no ingreso nada'
				Esperar Tecla
				
			SiNo
				nombres[i] = nombre
				Rep = Verdadero
			FinSi
			
		Hasta Que Rep = Verdadero
		existe = Buscar(arreglo,n,nombre)
		Si existe = Falso  Entonces
			Mostrar "El paciente que ingreso ya esta registrado"
			Esperar Tecla
		SiNo
			arreglo[i]=nombre
			i=i+1
			cant = cant + 1
			
		FinSi
	Hasta Que cant = n
	
FinSubProceso
//Validamos que no se repitan las cedulas
Funcion Encontro2 <- Buscarced(arreglo,n,elemento)
	Encontro2 = Falso
	i = 1
	Repetir
		Si arreglo[i] = elemento Entonces
			Mostrar "La cedula ya se encuentra registrado(ARREGLO)"
			Esperar Tecla
			Encontro = Falso
		SiNo
			i = i + 1
			Mostrar "La cedula no se encuentra registrado (ARREGLO)"
			Mostrar "Se agrego con exito la cedula"
			Esperar Tecla
			Encontro2 = Verdadero
		FinSi
		
	Hasta Que Encontro2 = Verdadero  O Encontro2 = Falso
FinFuncion
SubProceso Cargarcedulas(arreglo Por Referencia,cedulas Por Referencia,cedula Por Referencia,n,nombres)
	i = 1
	cant = 0
	
	Repetir
		Repetir
			Borrar Pantalla
			Escribir 'Ingrese la cedula del paciente " nombres[i] " (no dejar en blanco)'
			Leer cedula
			//Hacemos un condicional para que no almacene valores en blanco
			Si cedula = caracter  Entonces
				Rep = Falso
				Escribir 'Usted no ingreso nada'
				Esperar Tecla
				
			SiNo
				cedulas[i] = cedula
				Rep = Verdadero
			FinSi
			
		Hasta Que Rep = Verdadero Y cedula > 0
		existe2 = Buscarced(arreglo,n,cedula)
		Si existe2 = Falso  Entonces
			Mostrar "La cedula que ingreso ya esta registrada"
			Esperar Tecla
		SiNo
			arreglo[i]=cedula
			i=i+1
			cant = cant + 1
			
		FinSi
	Hasta Que cant = n
	
FinSubProceso
SubProceso DatosPaciente(edades Por Referencia,pesos Por Referencia,temperaturas Por Referencia,hemoglobinas Por Referencia,n)
	para i = 1 Hasta n Hacer
		e = Aleatorio(10,100)
		t = Aleatorio(30,40)
		p = Aleatorio(50,150)
		h = Aleatorio(1,10)
		
		si h < 4 Entonces
			resultado = "Bajo"
		Sino 
			Si h >= 4 Y h <= 7 Entonces
				resultado = "Medio"
			SiNo
				Si h > 7 Entonces
					resultado = "Alto"
				FinSi
			FinSi
		FinSi
		edades[i] = e
		temperaturas[i] = t
		pesos[i] = p
		hemoglobinas[i] = resultado
	FinPara
	
FinSubProceso
SubProceso permitircargar(cedulas,dato,n)
	para i = 1 hasta n Hacer
		Mostrar "Ingrese cedula para buscar historial"
		leer dato
		si dato = cedulas[i] Entonces
			Mostrar " Si se encuentra en el arreglo"
			Esperar Tecla
		Sino 
			si dato <> cedulas[i] Entonces
				Mostrar "La cédula ingresada no se encuentra dentro del arreglo"
				Esperar Tecla
			FinSi
		FinSi
	FinPara
	
	Esperar 2 Segundos
FinSubProceso
SubProceso mostrardatosdelpaciente(nombres,edades,cedulas,pesos,temperaturas,hemoglobinas,n)
	Para i = 1 Hasta n Hacer
		Mostrar "El paciente " nombres[i] 
		Mostrar "Tiene la cedula " cedulas[i] 
		Mostrar " Su edad es de " edades[i] " años"
		Mostrar " Tiene una temperatura de " temperaturas[i] "°"
		Mostrar "Pesa " pesos[i] " kilos"
		Mostrar "Su hemoglobina es " hemoglobinas[i]
		Esperar Tecla
		Mostrar "     "
	FinPara
	
FinSubProceso
SubProceso buscarpaciente(nombres,edades,cedulas,pesos,temperaturas,hemoglobinas,n)
	Repetir
		para i = 1 hasta n Hacer
			Mostrar "Ingrese cedula para buscar el paciente"
			leer dato
			si dato = cedulas[i] Entonces
				Mostrar "El paciente " nombres[i] 
				Mostrar "Tiene la cedula " cedulas[i] 
				Mostrar " Su edad es de " edades[i] " años"
				Mostrar " Tiene una temperatura de " temperaturas[i] "°"
				Mostrar "Pesa " pesos[i] " kilos"
				Mostrar "Su hemoglobina es " hemoglobinas[i]
				Esperar Tecla
			Sino 
				si dato <> cedulas[i] Entonces
					Mostrar "el dato que ingreso no se encuentra en ningun paciente"
					Esperar Tecla
				FinSi
			FinSi
		FinPara
	Hasta Que dato = cedulas[i]
FinSubProceso
Algoritmo Desafio4
	n = 5
	Dimension nombres[n]
	Dimension cedulas[n]
	Dimension edades[n]
	Dimension pesos[n]
	Dimension pacientes[n]
	Dimension pacedulas[n]
	Dimension temperaturas[n]
	Dimension hemoglobinas[n]
	Repetir
		Menu(opc)
		Segun opc hacer
			1:  	CargarInformacion(pacientes,nombres,nombre,n)
				Cargarcedulas(pacedulas,cedulas,cedula,n,nombres)
				DatosPaciente(edades,pesos,temperaturas,hemoglobinas,n)
				
			2: permitircargar(cedulas,dato,n)
				
			3: mostrardatosdelpaciente(nombres,edades,cedulas,pesos,temperaturas,hemoglobinas,n)
			4: buscarpaciente(nombres,edades,cedulas,pesos,temperaturas,hemoglobinas,n)   
				
		FinSegun
	Hasta Que opc = 5
FinAlgoritmo
