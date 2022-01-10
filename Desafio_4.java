clase Fecha
    privado definir dia, mes, año como entero
     //getters
    publico metodo getDia() como entero
         retornar dia
    fin metodo 
    publico metodo getMes() como entero
         retornar mes
    fin metodo 
    publico metodo getAño() como entero
         retornar año
    fin metodo 
//constructor sin parametros
      publico metodo Fecha()
        Mostrar"Ingrese el dia"
        Leer dia
        Mostrar"Ingrese el mes"
        Leer mes
        Mostrar"Ingrese el año"
        Leer año
      fin metodo
fin clase 

fin clase

clase Cliente
     privado definir nombre como caracter 
     privado definir rif como caracter
     

     publico metodo getNombre() como caracter
         retornar nombre
     fin metodo 
     publico metodo getRif() como caracter
         retornar rif
     fin metodo 
     
     publico metodo LeerDatos()
        Mostrar"Ingrese los datos del cliente"
        Mostrar"Ingrese el nombre del cliente"
        Leer nombre
        Mostrar"Ingrese el RIF del Cliente ejemplo(V-12345-0)"
        Leer rif

     fin metodo
fin clase

clase Natural extiende Cliente
     privado definir sexo como caracter
     privado definir estadoCivil como caracter
             definir fechaN como Fecha

    publico metodo getSexo() como caracter
         retornar sexo
    fin metodo 
    publico metodo getEstadoCivil() como caracter
         retornar estadoCivil
    fin metodo 
    

     publico metodo LeerDatosNatural()
        Mostrar"Ingrese el sexo del cliente"
        Leer sexo
        Mostrar"Ingrese el Estado civil del Cliente"
        Leer estadoCivil
        Mostrar"Ingrese la fecha  del Cliente"
        fechaN.Fecha()//llamo el metodo de la clase fecha 

     fin metodo

fin clase 

clase Juridicos extiende Cliente 
             definir fechaFundacion como Fecha
     privado definir capital como real
     privado definir socios como caracter
             definir condicion como entero

    publico metodo getCapital() como real
         retornar capital
    fin metodo 
    publico metodo getSocios() como caracter
         retornar socios
    fin metodo 

    publico metodo LeerDatosJuridico()
        Mostrar"Ingrese la fecha de fundacion"
        fechaFundacion.Fecha()//LLamo el metodo de mi clase fecha
        Mostrar"Ingrese el capital del cliente"
        Leer capital
        Mostrar "Ingrese 1 si desea agregar un socio"
        Mostrar "Ingrese 2 si no desea agregar mas"
        Leer condicion
        repetir
        Si condicion = "1" Entonces      
        Mostrar"Ingrese el nombre del socio"
        Leer socios
        SiNo 
        Si condicion = "2" Entonces
        Mostrar "Ya se agregaron los socios"
        FinSi
        FinSi
        hasta que condicion = "2"

     fin metodo

fin clase 

clase CuentaBancaria
    privado definir numeroCuenta como entero
    privado definir tipoCuenta como caracter 
    privado definir saldo como real 

    publico metodo getNumeroCuenta() como entero
         retornar numeroCuenta
    fin metodo 
    publico metodo getTiopCuenta() como caracter
         retornar tipoCuenta
    fin metodo 
    publico metodo getSaldo() como real
         retornar saldo
    fin metodo 


    publico metodo Asignar(c,t,s)
           Mostrar "Su numero de cuenta es"
           numeroCuenta = c
           Mostrar "Su Tipo de cuenta es"
           tipoCuenta = t
           Mostrar "Su saldo es"
           saldo = s

    fin metodo 

    publico metodo Registrar()
           Mostrar"Ingrese el numero de cuenta"
           Leer numeroCuenta
           Mostrar"Ingrese el tipo de cuenta (corriente/ahorro)"
           Leer tipoCuenta
           Mostrar "Ingrese el saldo"
           Leer saldo
    fin metodo

fin clase 

clase Banco
    privado definir clientesNaturales como Coleccion
    privado definir clientesJuridicos como Coleccion
    privado definir cuentasBancarias como Coleccion

   

    publico metodo getClientesNaturales( i ) como caracter

       retornar clientesNaturales[ i ].getClientesNaturales()

    fin metodo
    publico metodo getClientesJuridicos( i ) como caracter

       retornar clientesJuridicos[ i ].getClientesJuridicos()

    fin metodo
    publico metodo getCuentasBancarias( i ) como caracter

       retornar cuentasBancarias[ i ].getCuentasBancarias()

    fin metodo

    publico metodo setClientesNaturales( i , nombre1 )

       clientesNaturales[ i ].setClientesNaturales(nombre1) 

    fin metodo
    publico metodo setClientesJuridicos( i , nombre2 )

       clientesJuridicos[ i ].setClientesJuridicos(nombre2) 

    fin metodo
    publico metodo setCuentasBancarias( i , numero )

       cuentasBancarias[ i ].setCuentasBancarias(numero) 

    fin metodo

fin clase 
