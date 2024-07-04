Bienvenid@
Este proyecto consiste en una compra y venta de camisetas de fútbol utilizando Internet Identity, Motoko y DFX.

Instalación y Ejecución
Para utilizar el proyecto se necesita, inicialmente, ejecutar el comando:

dfx start --background --clean

Posteriormente:

dfx deploy

Luego, presiona Ctrl + clic izquierdo en el enlace del proyecto generado en la consola. En la barra superior del navegador, adiciona al enlace el parámetro &ii=el_enlace_del_localhost_que_aparece_en_la_consola.

Métodos del Proyecto
m1_registrarUsuario
Descripción: Registra un nuevo usuario utilizando el ID de Internet Identity.

m3_agregar_camiseta
Descripción: Agrega una nueva camiseta al inventario.

Los parámetros son:

c_equipo - El nombre del equipo de la camiseta.
c_talla - La talla de la camiseta.
c_edicion - La edición de la camiseta (Por ejemplo, HOME-2024, AWAY 2024).
c_precio - El precio de la camiseta.
c_existencias - El número de existencias de la camiseta.

m2_agregar_Recompensa
Descripción: Agrega una nueva recompensa al sistema.

Parámetros:

r_nombre - El nombre de la recompensa.
r_costo - El costo en tokens de la recompensa.

m4_camisetasExistentes
Descripción: Devuelve una lista de todas las camisetas disponibles en el inventario.

m2_obtenerLoyaltyTokens
Descripción: Obtiene el número de tokens de lealtad de un usuario.

Parámetros:

usuarioId - El ID del usuario.

m2_depositarEnWallet
Descripción: Deposita una cantidad de dinero en la billetera de un usuario.

Parámetros:

usuarioId - El ID del usuario.
monto - La cantidad de dinero a depositar.

m2_visualizarSaldoWallet
Descripción: Devuelve el saldo actual de la billetera de un usuario.

Parámetros:

usuarioId - El ID del usuario.

m5_realizarVenta
Descripción: Realiza la venta de una camiseta a un usuario.

Parámetros:

usuarioId - El ID del usuario.
camisetaId - El ID de la camiseta.

m6_devolverCamiseta
Descripción: Procesa la devolución de una camiseta por parte de un usuario.

Parámetros:

usuarioId - El ID del usuario.
camisetaId - El ID de la camiseta.

m7_visualizar_recompensas
Descripción: Devuelve una lista de todas las recompensas disponibles.

m8_canjearRecompensa
Descripción: Permite a un usuario canjear una recompensa utilizando tokens de lealtad.

Parámetros:

usuarioId - El ID del usuario.
id - El ID de la recompensa.

Estructura del Código
El proyecto está dividido en varios módulos y tipos definidos en types y state. Los métodos principales se encuentran en el actor principal y gestionan las operaciones de usuario, camisetas y recompensas.