Funcion opcion=mostrar_menu()
	Definir opcion como entero;
	Borrar Pantalla;
		Escribir "Menu de opciones";
		Escribir "======================";
		Escribir "1: Registrar tienda y sus productos";
		Escribir "2: Mostrar resultados de la cadena";
		Escribir "3: Salir";
		Leer opcion;	
		
FinFuncion
SubAlgoritmo CategoriaTienda(contcomida Por Referencia, contdeport Por Referencia, contelectro Por Referencia,cat Por Referencia,categoria Por Referencia)
	Repetir
		Borrar Pantalla;
		Escribir "Introduzca el tipo de categoria de su tienda";
		Escribir "1: Comida";
		Escribir "2: Deportes";
		Escribir "3: Electrodomesticos.";
		Leer categoria;
		Si categoria = 1 Entonces
			cat <- "Comida";
			contcomida <- contcomida + 1;
		SiNo
			Si categoria = 2 Entonces
				cat <- "Deportes";
				contdeport <- contdeport + 1;
			SiNo
				Si categoria = 3 Entonces
					cat <- "Electrodomesticos";
					contelectro <- contelectro + 1;
				SiNo
					Escribir "Ingrese alguna categoria";
				FinSi
			FinSi
		FinSi
	Hasta Que categoria = 1 O categoria = 2 O categoria = 3
	
FinSubAlgoritmo
SubAlgoritmo RegistrarTP(cantidad Por Referencia,categoria Por Referencia, contcomida Por Referencia, contdeport Por Referencia, contelectro Por Referencia,tienda Por Referencia,cat Por Referencia,producto Por Referencia, condicion Por Referencia,cuanto Por Referencia, i Por Referencia,Precio Por Referencia,cantProductos Por Referencia, PagoMayor Por Referencia,PagoMenor Por Referencia,acumPrecio Por Referencia)
	
	Escribir "Introduzca cuantas tiendas desea procesar";
	Leer cantidad;
	Para i <- 1 hasta cantidad Hacer
		Escribir "Introduzca el nombre de la tienda";
		Leer tienda;
		CategoriaTienda(contcomida, contdeport, contelectro,cat,categoria);
		
		Repetir
			Borrar Pantalla;
			Escribir "Desea agregar un producto a su tienda escriba (SI o NO)";
			Leer condicion;
			condicion <- Mayusculas(condicion);
			Si condicion = "SI" Entonces
				Escribir "Ingrese el nombre del producto acorde a su categoria ",cat;
				Leer producto;
				Escribir "Ingrese cuantos productos de ese tipo hay";
				Leer cuanto;
				Escribir "Ingrese el precio del producto : ", producto;
				Leer Precio;
				cantProductos <- cantProductos + 1;
				acumPrecio <- acumPrecio + 1;
				
			SiNo
				Si condicion <> "NO" Entonces
					Escribir "Por FAVOR INGRESE SI o NO";
				FinSi
			FinSi
			
		Hasta Que condicion = "NO"
		
	FinPara
FinSubAlgoritmo

SubAlgoritmo CalculoTP(Precio, PorcentajeComida Por Referencia,PorcentajeDeporte Por Referencia,PorcentajeElectrodomesticos Por Referencia,Inventario Por Referencia,MontoTotal Por Referencia,PromedioPrecio Por Referencia,cantidad,acumPrecio,cuanto,producto, contcomida, contdeport, contelectro,cantProductos )
	     
		PorcentajeComida <- contcomida/(cuanto* 100);
		PorcentajeDeporte <- contdeport/(cuanto*100);
		PorcentajeElectrodomesticos <- contelectro/(cuanto*100);
		Inventario <-  Precio * cuanto;
		MontoTotal<-acumPrecio*Precio;
		PromedioPrecio <- acumPrecio/cantProductos;

		
	
FinSubAlgoritmo
SubAlgoritmo DeterminarMayor(ProductoMayor Por Referencia,PagoMayor,Precio,producto)
	si Precio > PagoMayor entonces
		PagoMayor <- Precio;
		ProductoMayor <- producto;
	FinSi
FinSubAlgoritmo
SubAlgoritmo DeterminarMenor(ProductoMenor Por Referencia,PagoMenor,cuanto,producto)
	si cuanto < PagoMenor entonces
		PagoMenor <- cuanto;
		ProductoMenor <- producto;
	FinSi
FinSubAlgoritmo

SubAlgoritmo Mostrarresultados(Tienda,PorcentajeComida,PorcentajeDeporte,PorcentajeElectrodomesticos,ProductoMayor,ProductoMenor,Inventario,MontoTotal,PromedioPrecio )
	Borrar Pantalla;
	Escribir "El porcentaje de productos en la tienda ", Tienda," de las categorias :";
	Escribir "Comida :",PorcentajeComida;
	Escribir "Deporte :",PorcentajeDeporte;
	Escribir "Electrodomesticos :",PorcentajeElectrodomesticos;
	Escribir "El nombre producto más costoso es ",ProductoMayor;
	Escribir "El Producto  que hay menos existencia de esa tienda procesada es ",ProductoMenor;
	Escribir "Cuanto es el inventario que tiene ",Inventario;
	Escribir "El monto total del inventario de productos de toda la cadena de tiendas ",MontoTotal;
	Escribir "El precio promedio de los productos de toda la cadena ",PromedioPrecio;
	Esperar Tecla;
FinSubAlgoritmo
SubAlgoritmo Salir()
	Escribir "Hasta Pronto";
FinSubAlgoritmo

Proceso Desfio_4
	Definir ProductoMayor,ProductoMenor Como Caracter;
	Definir tienda,cat,producto, condicion Como Caracter;
	Definir i,acumPrecio,PagoMenor,cuanto Como Entero;
	Definir opcion,cantidad,categoria, contcomida, contdeport, contelectro,cantProductos como entero;
	Definir Precio, PorcentajeComida,PorcentajeDeporte,PorcentajeElectrodomesticos,Inventario,MontoTotal,PromedioPrecio,PagoMayor Como Real;
	PagoMayor<--1;
	PagoMenor <- 100000000;
	contcomida <- 0;
	contdeport <- 0;
	contelectro <- 0;
	cantProductos <-0;
	acumPrecio <- 0;
	opcion <- 0;
	Repetir
		opcion <- mostrar_menu();
		Segun opcion hacer
			1: RegistrarTP(cantidad,categoria, contcomida, contdeport, contelectro,tienda,cat,producto, condicion,cuanto,i,Precio,cantProductos, PagoMayor,PagoMenor,acumPrecio);
				CalculoTP(Precio, PorcentajeComida,PorcentajeDeporte,PorcentajeElectrodomesticos,Inventario,MontoTotal,PromedioPrecio,cantidad,acumPrecio,cuanto,producto, contcomida, contdeport, contelectro,cantProductos );
				DeterminarMayor(ProductoMayor,PagoMayor,Precio,producto);
				DeterminarMenor(ProductoMenor ,PagoMenor,cuanto,producto);
			2: Mostrarresultados(Tienda,PorcentajeComida,PorcentajeDeporte,PorcentajeElectrodomesticos,ProductoMayor,ProductoMenor,Inventario,MontoTotal,PromedioPrecio );
				
				
			3: Salir();	
		FinSegun
	Hasta Que opcion = 3
	
	
FinProceso
