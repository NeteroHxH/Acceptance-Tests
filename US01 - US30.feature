Feature: HU01: Proceso de identificación de alimentos excedentes, cercanos a vencer o con defectos de fabrica

    Como vendedor y usuario de “Dame Tu Yapa”
    Quiero registrar y saber el tiempo apto de consumo humano de mis alimentos, fechas de vencimiento y de consumo preferente
    Para poder identificar de manera más rápida y sencilla los alimentos excedentes, cercanos a vencer o con defectos

Scenario: El usuario desea Registrar y saber el tiempo apto de consumo humano de mis alimentos 
Dado que nuestro usuario se encuentra dentro de nuestra plataforma
Y acceda a la herramienta de gestión de inventario personalizado para gestionar su inventario de productos
Entonces el sistema le mostrará los pasos a seguir para registrar su inventario de productos y poder 
gestionarlo para identificar los alimentos excedentes, prontos a vencer, etc.

Examples:
    | sección "Página principal" |
    | opción "Herramienta de gestión" |
    | Inventario | | Próximos a vencer | | Excedentes |

Scenario: El usuario desea Registrar y saber el tiempo apto de consumo de mis alimentos
Dado que nuestro usuario se encuentra dentro de nuestra plataforma. 
Y acceda a la herramienta de gestión de inventario personalizado para gestionar su inventario de productos, 
pero se presentan problemas para registrar ciertos productos. 
Entonces el aplicativo móvil le mostrará un mensaje notificando “Lo sentimos, no podemos encontrar información 
específica del producto y/o alimento para hacerle un seguimiento automático, ingrese otro producto”.

Example:
    | sección "Página principal" |
    | opción "Herramienta de gestión" | | selecciona producto | 
    | mensaje "Lo sentimos, no podemos encontrar información específica del producto, ingrese otro producto" |





Feature: HU02: Publicar un producto para la venta

    Como vendedor y usuario de “Dame Tu Yapa”
    Quiero publicar mis alimentos excedentes, cercanos a vencer o con defectos de fabrica
    Para poder venderlos y recuperar costos

Scenario: El usuario publica sus alimentos excedentes, cercanos a vencer o con defectos de fábrica. 
Dado que nuestro usuario se encuentra en el menú principal de nuestro aplicativo. 
Y accede a la opción “publicación de producto” 
Entonces el sistema le pedirá algunas fotos originales del producto, información básica del producto 
como fecha de vencimiento, defectos o motivo de venta. Además, de algunos datos de contacto del vendedor 
que publica el producto en nuestro aplicativo. 
Y cuando aprete el botón “publicar producto” 
Entonces el sistema validará que todos los campos requeridos estén completos antes de permitir la publicación. 
Además, le permitirá editar o eliminar la publicación del producto en cualquier momento. 

Example:
    | sección "Página principal" |
    | opción "Publicación de producto" |
    | selecciona fotos| | sube información sobre el producto |
    | opción "Publicar producto" |
    | mensaje "Producto publicado con éxito" | | Opciones "editar" , "eliminar" |





Feature: HU03: Notificaciones de vistas

    Como vendedor registrado en “Dame tu Yapa”
    Quiero recibir notificaciones cuando un cliente haya guardado uno de mis productos
    Para saber qué le interesa al público y así poder ofrecerles mejores productos 

Scenario: El usuario recibe un mensaje o un correo cuando guardan su producto.
Dado que nuestro usuario tiene vinculado un número de teléfono o correo electrónico a su cuenta
Y tiene productos publicados en la aplicación
Y un cliente guarde una de esas publicaciones
Entonces automáticamente el vendedor recibe un SMS o un correo electrónico indicando qué producto se guardó.

Example:
    | vendedor con teléfono vinculado |
    | cliente da click a "guarda producto" |
    | usuario vendedor recibe SMS o correo electrónico "Producto guardado" |





Feature: HU04: Publicar un producto para la venta

    Como vendedor y usuario de “Dame Tu Yapa” 
    Quiero poder realizar una venta de un producto y recibir el pago correspondiente
    Para recuperar costos

Scenario: El usuario publica sus alimentos excedentes, cercanos a vencer o con defectos de fábrica.
Dado que nuestro usuario se encuentra en el menú principal de nuestro aplicativo. 
Y accede a la opción “lista de productos publicados” 
Entonces el sistema le permitirá al vendedor seleccionar el producto que desea vender de su lista 
de productos publicados. Antes de la publicación se muestra al vendedor una vista previa 
de la información del producto y el precio antes de confirmar la venta. 
Y cuando aprete “publicar producto” 
Entonces el sistema publicará el producto, registrando la venta y actualizando el inventario 
de productos publicados. Una vez completada la venta, el vendedor recibe una confirmación 
de la transacción y los detalles del pago. 

Example:
    | sección "Página principal" |
    | opción "Lista de productos publicados" |
    | selecciona producto de "previamente publicados"|
    | opción "publicar producto" |
    | mensaje "publicado exitosamente" |





Feature: HU05: Verificar el estado de una venta

    Como vendedor y usuario de “Dame Tu Yapa” 
    Quiero verificar el estado de mis ventas
    Para poder realizar un seguimiento adecuado y saber mis ganancias totales

Scenario: El usuario verifica el estado de sus ventas
Dado que nuestro usuario se encuentra en el menú principal de nuestro aplicativo. 
Y accede a la opción “historial de ventas” 
Entonces el sistema le mostrará una lista de todas las ventas realizadas, 
incluyendo detalles como fecha, producto vendido y el monto. Además, 
le mostrará el estado actual de la venta (por ejemplo, pendiente para recojo, en proceso, completada). 
Y cuando acceda a la información detallada de cada venta 
Entonces el sistema le permitirá al vendedor ver los detalles de cada venta, 
incluyendo la información del comprador y los productos vendidos.

Example:
    | sección "Página principal" |
    | opción "Historial de ventas" | | lista de ventas realizadas |
    | opción "información detallada" |
    | visualización de detalles de venta |





Feature: HU06: Recibir información de las ventas realizadas

    Como vendedor y usuario de “Dame Tu Yapa” 
    Quiero recibir información detallada del total de mis ventas realizadas
    Para poder realizar un seguimiento adecuado y saber mis ganancias totales

Scenario: El usuario recibe información detallada del total de sus ventas realizadas 
Dado que nuestro usuario se encuentra en el apartado de historial de ventas 
Y accede a la opción de “ganancias” 
Entonces el sistema le mostrará un resumen total de las ventas realizadas y el monto total 
ganado en un período determinado. Además, le dará la opción de filtrar la búsqueda para 
facilitar la exploración de los períodos pasados de ventas.

Example:
    | sección "Historial de ventas" |
    | opción "Ganancias" |
    | visualización de ventas realizadas | | opción "Filtrar búsqueda" |





Feature: HU07: Integración con sistemas de pagos

    Como vendedor y usuario de “Dame Tu Yapa” 
    Quiero aceptar cualquier método de pago
    Para poder atraer mayor cantidad de clientes

Scenario: El usuario acepta la compra por diferentes medios de pago
Dado que nuestro usuario se encuentra en el apartado de publicación del producto 
Y accede a la opción de “elección de medios de pago”
Entonces el sistema le permitirá poder escoger los medios de pago que puede aceptar 
para adquirir el producto que está publicando. Una vez completada la venta, 
el vendedor recibirá una confirmación de la transacción y los detalles del pago.

Example:
    | sección "Publicación de producto" | 
    | opción "Elección de medios de pago" |
    | opcion "Depositar" "Contraentrega" "Tarjeta débito/credito" |
    | mensaje al vendedor "Información de la transacción" "Detalles de pago" |





Feature: HU08: Perfil de vendedor

    Como vendedor y usuario de “Dame Tu Yapa”
    Quiero agregar información relevante e importante en mi perfil
    Para poder generar confianza en los clientes y atraer a los usuarios 

Scenario: El usuario o cliente desea agregar información relevante sobre el para generar confianza 
Dado que nuestro usuario se encuentra en el menú principal 
Y accede a la opción de “perfil del usuario” 
Entonces el sistema le dará la opción de poder agregar información importante como 
nombre, edad, empresa, ubicación de tienda, etc. Esto le permitirá generar más confianza 
en los clientes que ven los productos que vende. 
Y cuando acceda a la opción “empresas relacionadas” 
Entonces el sistema le permitirá llenar un formulario sobre con qué empresas 
ha trabajado con anterioridad y se genere un perfil más profesional de nuestro usuario. 

Example:
    | sección "Página principal" |
    | opción "Perfil del usuario" |
    | opción "Agregar información" |
    | opción "Empresas relacionadas" |
    | completar formularios "Empresas trabajadas con anterioridad" |





Feature: HU09: Recibir y responder comentarios de los clientes

    Como vendedor y usuario de “Dame Tu Yapa”
    Quiero poder recibir comentarios de los clientes y responder sus inquietudes
    Para mejorar la satisfacción del cliente 

Scenario: El usuario recibe y responde diversos comentarios de los clientes que le han comprado en una oportunidad 
Dado que nuestro usuario se encuentra en el menú principal 
Y accede a la opción de “publicación de productos” 
Entonces el sistema le mostrará al vendedor todos los comentarios realizados 
por sus compradores y dándole la posibilidad de poder responder estos comentarios. 
Y cuando quiera eliminar un comentario porque infringe una norma comunitaria 
Entonces el sistema le dará la posibilidad de borrar comentarios de ciertos 
usuarios / compradores porque infringen las normas de comunidad que tiene nuestro aplicativo.

Example:
    | sección "Página principal" |
    | opción "Publicación de productos" |
    | sección "comentarios" |
    | opción "Borrar comentario" |





Feature: HU10: Integración con redes sociales 

Como vendedor y usuario de “Dame Tu Yapa” 
    Quiero integrar mis redes sociales en el aplicativo móvil
    Para aumentar la visibilidad y promover el producto

Scenario: El usuario vincula sus redes sociales personales con nuestro aplicativo móvil “Dame Tu Yapa”
Dado que nuestro usuario se encuentra en el menú principal 
Y accede a la opción de “redes sociales” 
Entonces el sistema le dará la opción de que los productos que publica en el aplicativo móvil 
“Dame Tu Yapa” se compartan automáticamente en sus redes sociales cuando se publiquen o estén en oferta. 
Y cuando aprete el botón “compartir publicación” 
Entonces la publicación del producto se publicará en sus redes sociales, donde los clientes 
podrán seguir y dar “me gusta” desde sus redes sociales. 

Example:
    | sección "Página principal" |
    | opción "Redes sociales" |
    | opción "Facebook" "Twitter" "Instagram" |
    | opción "Compatir publicación" |
    | mensaje "Publicados correctamente" |





Feature: HU11: Destacar ofertas

    Como vendedor registrado en la aplicación “Dame tu yapa”
    Quiero tener la opción de destacar mis ofertas especiales o productos más destacados
    Para aumentar su visibilidad en la plataforma y atraer más compradores

Scenario: Vendedor destaca una publicación mediante el impulso de una publicación.
Dado que el vendedor escoge una publicación para destacar en la página principal
Y paga por que la publicación aparezca en la página principal
Entonces dicha publicación permanecerá arriba por el tiempo definido que desee el vendedor

Example: 
    | sección "Página principal" |
    | selecciona "Publicación 4" |
    | opción "Impulsar publicación" |
    | mensaje "Ahora su publicxación aparece en la página principal" |





Feature: HU12: Acceder a información detallada del producto

    Como comprador de alimentos
    Quiero poder acceder a información detallada sobre los productos excedentes, con defectos de fábrica o cercanos a vencer
    Para tomar decisiones informadas

Scenario: El busca información relevante del producto que desea comprar
Dado que el usuario se encuentra en la parte de “catálogo de productos”
Y presiona la opción de “información relevante del producto” 
Entonces el sistema le permitirá al comprador ver que cada producto tiene una página de detalle que muestra información 
detallada, como descripción, fecha de vencimiento, ingredientes, tamaño/porción, condiciones de almacenamiento y cualquier 
defecto de fábrica. Además, se mostrará que, en caso de tener defectos de fábrica, se proporcionará una descripción 
honesta del vendedor y su impacto en la calidad del producto. 
Y si presiona en la opción de “disponibilidad” 
Entonces el sistema le mostrará la disponibilidad actual del producto y, si es necesario, 
una cantidad límite de compra por usuario. 

Example: 
    | sección "Catálogo de productos" |
    | opción "Información relevante del producto" | | Visualizar información |
    | opción "Disponibilidad" | | Visualizar disponibilidad |





Feature: HU13: Recibir notificaciones de nuevos productos

    Como comprador de alimentos
    Quiero recibir notificaciones cuando haya nuevos productos excedentes, con defectos de fábrica o cercanos a vencer disponibles 
    Para comprar esos alimentos

Scenario: El usuario busca saber las oportunidades donde podrá comprar este tipo de alimentos 
Dado que el usuario se encuentra en el apartado de “noticias” o usando su celular 
Y se ha suscrito con anterioridad para recibir actualizaciones sobre nuevos alimentos. 
Entonces el sistema le envía una notificación por correo electrónico o se muestra una notificación 
en la plataforma sobre nuevos alimentos publicados. La notificación incluye información relevante, 
como el nombre del producto, precio, estado (excedente, defecto de fábrica, cercano a vencer) y enlace directo al producto. 
Y si accede a la opción “gestión de notificaciones” 
Entonces el sistema le permitirá al usuario poder gestionar sus preferencias de notificación, 
como la frecuencia y el tipo de productos de interés. 

Example:
    | sección "Noticias" |
    | notificación por correo electrónico "Nuevos alimentos publicados" | | visualización información |
    | opción "Gestión de notificaciones" |





Feature: HU14: Carrito de compras

    Como cliente en “Dame tu yapa”
    Quiero poder agregar productos a mi carrito de compras
    Para poder gestionar mejor lo que estoy comprando

Scenario: El usuario navega en la aplicación y guarda productos
Dado que el usuario se encuentre en el apartado “Catálogo de alimentos”
Y seleccione diversos productos en un solo pedido
Entonces el sistema permitirá guardar todos estos productos agregados previamente en un apartado llamado 
“Carrito de compras” ubicado en la parte superior de “Catálogo de alimentos”

Example: 
    | sección "Catálogo de alimentos" |
    | opción "Agregar producto" |
    | opción "Carrito de compras" |





Feature: HU15: Gestionar compra

    Como comprador de alimentos en “Dame tu yapa”
    Quiero poder ver el resumen de mi carrito de compras previo a confirmar el pago
    Para gestionar mi pedido

Scenario: El usuario tiene su carrito de compras y quiere pasar al pago.
Dado que el usuario se encuentra en el apartado “Carrito de compras”
Y selecciona la opción “Visualizar pedido”
Entonces el sistema le mostrará un resumen de la cantidad de productos que tiene en su carrito de compras 
junto al precio total del mismo y una opción “Ir al pago”

Example:
    | sección "Catálogo de alimentos" |
    | opción "Carrito de compras" |
    | sección "Carrito de compras" |
    | opción "Visualizar pedido" |
    | opción "Ir al pago" |


Feature: HU16: Realizar una compra de productos 
    Como comprador de alimentos de "Dame Tu Yapa"
    Quiero poder realizar una compra de alimentos excedentes, 
    con defectos de fábrica o cercanos a vencer de manera segura y conveniente
    Para poder ahorrar

Scenario: El usuario quiere comprar este tipo de alimentos 
Dado que el usuario se encuentra en el apartado de “catálogo de alimentos” 
Y ha seleccionado los productos que desea comprar 
Entonces el sistema permitirá visualizar el carrito de compras. Además, se mostrará el cálculo 
automáticamente del monto total de la compra, aplicando los descuentos correspondientes. 
Y si selecciona la opción de método de pago 
Entonces el sistema le mostrará al comprador una lista de métodos de pagos seguros, 
como tarjeta de crédito o PayPal, para completar la transacción. 
Y el usuario selecciona “Confirmar compra”
Entonces el sistema confirma la compra y envía dicha información al cliente como al vendedor

Example: 
    |sección: Catálogo de alimentos|
    |opción: Agregar Producto|
    |opción: Carrito de compras|
    |sección: Carrito de compras|
    |opción: Método de pago|
    |sección: Método de pago|
    |opción: Confirmar Compra|

Feature: HU17: Recibo de compra
    Como comprador de alimentos en “Dame tu yapa”
    Quiero recibir un recibo de compra por correo electrónico
    Para poder confirmar mi compra 

Scenario: El usuario recibe un recibo de venta en su correo electrónico
Dado que seleccionó “Confirmar compra”
Y el pago se realizó de manera correcta
Entonces el sistema enviará automáticamente el recibo de compra del pedido al 
cliente a su correo electrónico registrado previamente

Example:
    |sección: Carrito de compras|
    |opción: Confirmar compra|
    |Correo electrónico de confirmación enviado|

Feature: HU18: Buscar y filtrar productos
    Como comprador de alimentos en “Dame tu yapa”
    Quiero poder buscar y filtrar productos para encontrar alimentos excedentes, 
    con defectos de fábrica o  cercanos a vencer que se ajusten a mis necesidades y preferencias
    Para poder ahorrar tiempo a la hora de buscar los alimentos que deseo comprar

Scenario: El usuario quiere comprar este tipo de alimentos de manera rápida y sencilla 
Dado que el usuario se encuentra en el apartado de “catálogo de alimentos” 
Y ha apretado la opción de “filtro de búsqueda” 
Entonces el sistema le dará la opción al comprador de poder ingresar una palabra clave 
o categorías de alimentos para buscar productos específicos. 
Además, el comprador puede aplicar filtros, como rango de precios, fecha de vencimiento 
y tipo de defecto, para refinar los resultados de búsqueda 
Y si aprieta la opción de “favoritos” 
Entonces el sistema permitirá que el comprador guarde ciertos productos deseados 
en una lista de “favoritos” para facilitar futuras compras

Example: 
    |sección: Catálogo de alimentos|
    |opción: Filtro de búsqueda|
    |sección: Filtro de búsqueda|
    |opción: favoritos|
    |Se muestran los productos favoritos del usuario|



Feature: HU19: Calificar y dejar reseñas de productos
    Como comprador de alimentos en “Dame tu yapa”
    Quiero poder calificar y dejar reseñas de los productos adquiridos
    Para compartir mi experiencia con otros usuarios

Scenario: El usuario quiere compartir su experiencia con otros compradores 
Dado que el usuario se encuentra en el apartado de “catálogo de alimentos” 
Y aprieta la opción de “comentarios” 
Entonces el usuario después de recibir los productos, el comprador puede calificarlos del 1 al 5 y 
dejar una reseña opcional. Las calificaciones promedio se muestran junto a cada producto 
para ayudar a otros compradores en su decisión de compra
Y si aprieta “publicar comentario” 
Entonces el sistema publicará el comentario en los resúmenes de calificaciones para que 
los demás usuarios puedan tomar decisiones informadas

Example:
    |sección: Catálogo de alimentos|
    |opción: Comentarios|
    |El usuario escribe su comentario|
    |opción: Publicar comentario|
    |Comentario Publicado|

Feature: HU20: Recepción de alimentos y opción de recojo 
    Como comprador de alimentos en “Dame tu yapa”
    Quiero poder elegir la opción de recojo en tienda o entrega delivery del producto
    Para poder facilitar mi compra según mi cercanía

Scenario: El usuario elige si recoje en tienda o la entrega es por delivery 
Dado que el usuario se encuentra en el apartado de “catálogo de alimentos” 
Y aprieta la opción de “recojo en tienda” 
Entonces el sistema le brindará los detalles de recojo en tienda y le permitirá elegir el día, la hora, 
y la tienda más cercana que tenga para ir a recoger su pedido
Y si aprieta la opción de “delivery” 
Entonces el sistema le pedirá ciertos datos importantes relacionados al punto de llegada del delivery 
para enviar los productos.
Una vez ingresados los datos el sistema le mostrará “datos correctos, 
el pedido le llegará en el día y hora

Example: 
    |sección: Catálogo de alimentos|
    |opción: recojo en tienda|
    |Detalles del recojo en tienda|


Feature: HU21: Seguir vendedores favoritos
    Como comprador de alimentos en “Dame tu yapa”
    Quiero poder seguir a mis vendedores favoritos para recibir actualizaciones 
            sobre nuevos productos y ofertas especiales
    Para hacer mi compra más fácil y sencillo

Scenario: El usuario elige a sus vendedores favoritos de la plataforma
Dado que el usuario se encuentra en el apartado de “catálogo de alimentos” 
Y aprieta en “lista de favoritos” 
Entonces el sistema le permitirá al comprador agregar a sus vendedores favoritos a
una lista de vendedores seguidos por el comprador. Cuando los vendedores favoritos publiquen 
nuevos productos u ofertas especiales, se envía una notificación al comprador. Además, el comprador 
puede gestionar su lista de vendedores favoritos y dejar de seguir a aquellos que ya no le interesen
Y si aprieta en “favoritos de la comunidad” 
Entonces el sistema le mostrará al comprador la lista de vendedores que tienen mejores calificaciones,
 reseñas y comentarios positivos dentro de nuestra plataforma.
 Además, se le detalla con esto información relevante del vendedor como qué tipo de productos vende y 
el rango de precio que establece en la plataforma

Example:
    |sección: catálogo de alimentos|
    |opción: favoritos de la comunidad|
    |Output: Lista de vendedores con mejores calificaciones|

Feature: HU22: Ubicación del vendedor
    Como comprador de alimentos en “Dame tu yapa”
    Quiero ver la ubicación del vendedor en un mapa
    Para  conocer su cercanía

Scenario: Ubicación del Vendedor
Dado que el comprador selecciona varios productos de un mismo vendedor dentro de la aplicación,
Y selecciona la opción “Ver ubicación”,
Entonces el sistema le muestra la ubicación del vendedor, junto con la estimación del tiempo de entrega 
si opta por la opción de delivery. Esto permite al usuario analizar si desea recoger 
los productos personalmente o prefiere la comodidad de la entrega a domicilio en sus pedidos

Example:
    |opción: Ver ubicación|
    |Output: Ubicación del vendedor con respecto al usuario|

Feature: HU23: Historial de compras
    Como comprador de alimentos en “Dame tu yapa”
    Quiero poder ver el historial de mis compras anteriores
    Para conocer el precio anterior y poder compararlo con los nuevos precios que ofrecen

Scenario: El usuario desea conocer el historial de compras que realizó.
Dado que el comprador se encuentra en la página principal de la aplicación.
Y seleccionó la opción “Historial de pedidos”
Entonces la aplicación le muestra todos los pedidos que realizó el usuario en mención, 
        mostrando la fecha de la compra, el total de cada compra y el vendedor de cada compra

Example:
    |sección: menu principal|
    |opción: Historial de pedidos|
    |Output: Historial de pedidos del usuario|

Feature: HU24: Recomendaciones de productos
    Como comprador de alimentos en “Dame tu yapa”
    Quiero recibir recomendaciones de productos basadas en mis compras anteriores
    Para poder visualizar de manera más rápida los productos que son de mi agrado

Scenario: El usuario desea agilizar la búsqueda de productos de su preferencia
Dado que soy un cliente que utiliza la plataforma de compras 
Y he realizado compras anteriores registradas en mi historial de compras,
Entonces deseo recibir recomendaciones de productos personalizadas basadas en 
        mis compras anteriores para mejorar mi experiencia de compra y descubrir productos relevantes

Example:
    |sección: Catálogo de alimentos|
    |output: Productos en base a la información del historial de compras del usuario|

Feature: HU25: Chat en tiempo real
    Como comprador de alimentos en “Dame tu yapa”
    Quiero tener un sistema de chat
    Para comunicarme con los vendedores en tiempo real

Scenario: El comprador desea comunicarse con el vendedor.
Dado que soy un cliente que utiliza la plataforma de compras en línea,
Y deseo tener la capacidad de comunicarme con los vendedores en tiempo real
 para obtener asistencia instantánea o hacer preguntas sobre productos y servicios,
Entonces necesito un sistema de chat integrado en la plataforma que me permita 
interactuar con los vendedores de manera eficiente y en tiempo real, mejorando así mi 
experiencia de compra y la comunicación con los proveedores

Example:
    |sección: Menu principal|
    |opción: Ver mi pedido|
    |opción: chat del vendedor|

Feature: HU26: Lista de favoritos
    Como comprador de alimentos en “Dame tu yapa”
    Quiero tener la opción de guardar productos en una lista de favoritos
    Para una próxima compra

Scenario: El usuario desea guardar productos para una próxima compra.
Dado que soy un cliente que utiliza la plataforma de compras en línea,
Y deseo tener la capacidad de guardar productos que me interesen en una lista de favoritos
 para acceder a ellos fácilmente en el futuro,
Entonces necesito una función que me permita agregar productos a una lista de favoritos dentro
 de la plataforma, lo que facilitará la organización y el acceso rápido a los productos que más 
 me gusten o me interesen

Example:
    |sección: Menu principal|
    |opcion: Mis favoritos|
    |output: Se muestran los productos favoritos del usuario|

Feature: HU27: Acceso a un servicio al cliente
    Como comprador de alimentos en “Dame tu yapa”
    Quiero tener acceso a un servicio de atención al cliente
    Para resolver problemas o inquietudes

Scenario: El usuario requiere de una atención 
Dado que soy un cliente que utiliza la plataforma de productos
Y deseo tener acceso a un servicio de atención al cliente para resolver problemas, 
hacer preguntas o abordar inquietudes relacionadas con mi experiencia como usuario,
Entonces necesito una vía clara y eficiente, como un número de teléfono, 
chat en vivo o correo electrónico, que me permita comunicarme con el servicio de atención al cliente, 
garantizando una respuesta o solución oportuna a mis problemas e inquietudes

Example:
    |sección: menu principal|
    |opción: Ajustes|
    |opción: Atención al cliente|
    |output: información de contactos|

Feature: HU28: Notificación de ofertas
    Como comprador de alimentos en “Dame tu yapa”
    Quiero recibir notificaciones sobre descuentos y ofertas especiales
    Para ahorrar más dinero del que se puede dentro de la aplicación

Scenario: El usuario recibe ofertas
Dado que soy un cliente que utiliza la plataforma de productos
Y la aplicación conoce mis gustos y preferencias
Y previamente acepté recibir notificaciones de ofertas 
Entonces necesito un sistema de notificaciones que me informe de manera oportuna sobre los descuentos 
y ofertas disponibles,  lo que me permitirá aprovechar oportunidades de ahorro y mejorar 
mi experiencia de compra

Example:
    |Notificación: ¡No te pierdas estos nuevos productos que recién salen a la venta!|

Feature: HU29: Registro de usuario
    Como usuario nuevo de “Dame tu yapa”
    Quiero poder registrarme en la aplicación
    Para comenzar a comprar o vender productos

Scenario: Usuario vendedor se registra en la aplicación por primera vez
Dado que un usuario decida comerciar en nuestra aplicación
Y esté en la primera página de nuestra aplicación
Y de click en registrar usuario
Entonces la aplicación empezará a tomar los datos del nuevo usuario 
        para poder guardarlo en su base de datos y tener la información más relevante de cada vendedor
Y da click en guardar datos para registrar el usuario
Entonces sale un mensaje donde indica “Usuario registrado con éxito”

Scenario: Usuario comprador se registra en la aplicación por primera vez
Dado que un usuario decida comprar en nuestra aplicación
Y esté en la primera página de nuestra aplicación
Y de click en registrar usuario
Entonces la aplicación empezará a tomar los datos del nuevo usuario para 
        poder guardarlo en su base de datos y tener la información más relevante de cada vendedor
Y da click en guardar datos para registrar el usuario
Entonces sale un mensaje donde indica “Usuario registrado con éxito”

Example:
    |sección: Inicio de sesión|
    |opción: Registrar usuario|
    |input: Datos del nuevo usuario|
    |opción: Guardar datos|
    |mensaje: Usuario registrado con éxito|

Feature: HU30: Acceso a la cuenta
    Como usuario de “Dame tu yapa”
    Quiero poder iniciar sesión en mi cuenta
    Para poder gestionar mis productos

Scenario: Usuario vendedor accede a la aplicación con su usuario registrado
Dado Que un usuario que se registró desee ingresar nuevamente a su información guardada en la aplicación 
Entonces da click en “Ingresar” ubicado en la página principal
Y ingresa su correo registrado junto a su contraseña
Entonces el sistema reconoce el usuario que ingresa 
Y le muestra la información que depositó en la aplicación 


Scenario: Usuario comprador accede a la aplicación con su usuario registrado
Dado que un usuario que se registró desee ingresar nuevamente a su información guardada en la aplicación 
Entonces da click en “Ingresar” ubicado en la página principal
Y ingresa su correo registrado junto a su contraseña
Entonces el sistema reconoce el usuario que ingresa 
Y le muestra la información que depositó en la aplicación

Example:
    |sección: Inicio de sesión|
    |input: Información de cuenta|
    |opción: Ingresar|
    |output: Menu principal|
    