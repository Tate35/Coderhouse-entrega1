CREACIÓN BASE DE DATOS PARA AGENCIA DE MARKETING DIGITAL

Alumno: Carlos Muller Court
Problema:
Se necesita crear una base de datos para estructurar el área comercial de una importante agencia de marketing digital, la cual gestiona y administra inversiones realizadas por sus clientes en canales digitales. El objetivo de generar esta base de datos es que permita monitorear distintos campos relevantes para el negocio para su posterior análisis y control.
Descripción del Problema:

1.- Gestión de clientes: Se necesita una base de datos para mantener registro de la información de los clientes de la agencia de marketing digital ya que actualmente no existe un registro exacto.

2.- Gestión de inversión: Realizar base de datos respecto a las inversiones que realiza cada cliente a través de nuestra agencia, detallando cada una de estas acciones.

3.- Gestionar formas de pago: Mantener en orden la forma de pago de cada cliente y plazos para verificar si existen cuentas por cobrar.



Tablas:
CLIENTE:
Almacena información sobre los clientes que realizan reservas.
Atributos: IDCLIENTE, NOMBRE, TELÉFONO, CORREO
.
INVERSIONES:
Contiene información sobre el monto de las inversiones realizadas por nuestros clientes a través de la agencia.
Atributos: IDINVERSIÓN, IDCLIENTE, IDTIPOINVERSION, IDPROVEEDOR, MONTOINVERTIDO.

TIPOINVERSIÓN:
Registrar el tipo de inversión realizada por el cliente
Atributos: IDTIPOINVERSION, TIPOINVERSION

POVEEDORINVERSION
Define el proveedor por el cual se realiza la inversión
Atributos: IDPROVEEDOR, PROVEEDOR.

OBJETIVOCLIENTE
Definir cual es el objetivo principal del cliente a traves de nuestra agencia.
Atributos: IDOBJETIVO, IDCLIENTE, OBJETIVO.

FECHAPAGOFACTURA
forma de pago de cada cliente con fecha de venciminto
Atributos: IDFACTURA, IDCLIENTE, FORMADEPAGO, FECHAVENCIMIENTO.

RUBROCLIENTE:
Rubro al que pertenece el cliente.
Atributos: IDRUBRO, IDCLIENTE, RUBRO, IDEMPLEADO, IDTIPORESERVA, FECHA.



