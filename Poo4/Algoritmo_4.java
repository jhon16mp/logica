Algoritmo Poo4
     definir cliente1 como Cliente
     definir clientes como Coleccion
     definir cuenta1 como CuentasBancarias
     definir cuentas como Coleccion
     definir proceso como Banco
     definir tipo, opcion como Entero

     cliente1 = nuevo Cliente()
     cuenta1 = nuevo CuentasBancarias()


repetir 
     Mostrar"Seleccione el tipo de Persona "
     Mostrar"Ingrese 1 para Persona Natural"
     Mostrar"Ingrese 2 para Persona Juridica"
     Leer tipo 

     Si tipo = "1" Entonces
           cliente1.LeerDatos()
           cliente1.Natural()
           clientes.agregar(cliente1)
     Sino 
        Si tipo = "2" Entonces
           cliente1.LeerDatos()
           cliente1.Juridica()
           clientes.agregar(cliente1)
     Sino 
        Mostrar "Por favor seleccione un tipo"
    FinSi
    FinSi
hasta que tipo="1" O tipo="2"

repetir 
     Mostrar "seleccione lo que desea hacer en su cuenta"
     Mostrar "Ingrese 1 para asignar cuenta bancaria"
     Mostrar "Ingrese 2 para registrar cuenta bancaria"
     Leer opcion
     Si opcion = "1" Entonces
           c = "0108493493493943949"
           t = "Corriente"
           s = "2000"
           cuenta1.Asignar(c,t,s)
     Sino 
        Si opcion = "2" Entonces
           cuenta1.Registrar()
           cuentas.agregar(cuenta1)
     Sino 
        Mostrar "Por favor seleccione una opcion"
    FinSi
    FinSi
hasta que opcion = "1" O opcion = "2"

   

 proceso.setClientesNaturales( 1, "jose")//se colo
 proceso.setClientesJuridicos( 1, "jenny")
 proceso.setCuentasBancarias(1,"01082456745665745")

  mostrar "El nombre del cliente Natural " proceso.getClientesNaturales(1)
  mostrar "El nombre del cliente Juridico " proceso.getClientesJuridicos(1)
  mostrar "El numero de cuenta es " proceso.getCuentasBancarias(1)

   mostrar "Se han procesado " proceso.tamano " clientes"

         mostrar "Los nombres de los clientes Naturales son:"

    
         // se recorren todos los elementos de la colección

         para i=0 hasta proceso.tamano-1 hacer

              mostrar proceso[i].getClientesNaturales() //mostramos totos los clientes naturales

         fin para

Fin Algoritmo