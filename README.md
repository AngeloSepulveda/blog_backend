![proyecto blog1](https://github.com/AngeloSepulveda/blog_backend/assets/160551968/1e821091-2dd9-46c4-8448-0c34443d619f)
este es el ERD del funcionamiento del backend.
*********************************************************************************SCHEMAS/POSTS/INDEX.JS
**Documentación del Código en Español
Este código define los resolvers para un esquema GraphQL que interactúa con publicaciones y autores. Se utilizan las dependencias fs, path, PostService y errorHandler.

Funciones:

getPostsWithAuthors: Es una función auxiliar que se encarga de obtener las publicaciones y enriquecerlas con la información de sus autores.
Recibe una función de callback cb que se utiliza para recuperar las publicaciones en sí.
Devuelve un resolver que:
Obtiene las publicaciones mediante cb y maneja errores con errorHandler.
Si no hay publicaciones, devuelve una lista vacía.
Obtiene información de los autores mediante PostService.getPostsAuthors basándose en los IDs de autor únicos de las publicaciones.
Crea un mapa de autores donde la clave es el ID y el valor es el nombre completo (concatenando nombre y apellido).
Recorre las publicaciones, procesa cada una:
Separa las categorías de la cadena almacenada en una coma.
Desestructura el resto de propiedades (eliminando "categories" y "author_id").
Agrega la propiedad "author" usando el nombre completo del autor obtenido del mapa.
Devuelve la lista de publicaciones enriquecidas.
Exportaciones:

resolvers: Objeto que define los resolvers para las consultas y mutaciones de GraphQL:
Query: Contiene resolvers para consultas:
getPostsByType: Utiliza la función auxiliar getPostsWithAuthors con un callback que llama a PostService.getPosts(type) para obtener publicaciones por tipo.
getPostsByCategories: Utiliza la función auxiliar getPostsWithAuthors con un callback que llama a PostService.getPosts("default", category_id) para obtener publicaciones por categoría.
getPost: Obtiene una publicación específica por ID usando PostService.getPost(id).
Mutation: Contiene resolvers para mutaciones:
createPost: Crea una nueva publicación llamando a PostService.createPost(args).
schema: Contiene el esquema GraphQL como un string. Se lee del archivo "posts-schema.graphql" utilizando fs.readFileSync y path.resolve para obtener la ruta correcta.
Dependencias:

fs: Módulo de Node.js para trabajar con el sistema de archivos (usado para leer el esquema GraphQL).
path: Módulo de Node.js para manejar rutas de archivos.
PostService: Un servicio (no incluido en este código) que encapsula la lógica de interacción con las publicaciones y autores en la base de datos u otra fuente.
errorHandler: Función (no incluida en este código) que presumiblemente se encarga de manejar los errores ocurridos durante las operaciones con la base de datos.

***********************************************************************API/POSTS/INDEX.JS
**Documentación del Código en Español
Este código define un módulo que exporta funciones para interactuar con una base de datos relacionada a un blog. Se utilizan las dependencias db, errorHandler e intersection.

Dependencias:

db: Probablemente un módulo para interactuar con la base de datos (asumiendo mysql por el código de ejemplo).
errorHandler: Función (no incluida en este código) que presumiblemente se encarga de manejar los errores ocurridos durante las operaciones con la base de datos.
intersection (de lodash): Función para encontrar elementos comunes entre dos arreglos (posiblemente no utilizado en este código).
Funciones Exportadas:

getPost(id):

Obtiene una publicación específica por ID.
Devuelve un objeto con la información de la publicación, incluyendo:
Datos de la publicación obtenidos de la tabla blog_posts.
Comentarios de la publicación obtenidos de la tabla blog_post_comments.
Número total de "me gusta" para la publicación (obtenido contando el número de autores en la tabla blog_post_likes).
Arreglo de etiquetas de categoría para la publicación (obtenidas de las tablas blog_post_categories y blog_categories).
Enriquece los comentarios con el nombre completo y la imagen del autor:
Obtiene los IDs únicos de los autores de los comentarios.
Recupera la información detallada de los autores de la tabla users.
Recorre los comentarios y asigna el nombre completo y la imagen del autor correspondiente a cada comentario.
createPost(args):

Crea una nueva publicación en la base de datos.
Recibe un argumento args con los datos de la publicación.
Inserta los datos en la tabla blog_posts y devuelve el resultado.
getPosts(type, category_id):

Recupera publicaciones según el tipo y opcionalmente filtra por categoría.
Soporta diferentes tipos de consulta (trending, featured, recent) y un tipo predeterminado (default).
Utiliza consultas complejas con JOIN y GROUP_CONCAT para obtener información relacionada (comentarios, categorías) de forma eficiente.
Si se proporciona category_id, filtra las publicaciones para incluir solo las que pertenecen a esa categoría.
getPostsLikeCounts(ids):

Obtiene el número de "me gusta" para un conjunto de IDs de publicaciones.
Consulta la tabla blog_post_likes para contar el número de autores por publicación.
getPostComments(id):

Obtiene todos los comentarios para una publicación específica por ID.
Consulta la tabla blog_post_comments para recuperar los comentarios asociados a la publicación.
getPostsAuthors(ids):

Obtiene la información detallada de un conjunto de autores por ID.
Consulta la tabla users para recuperar los datos de los autores especificados en el arreglo ids.
![documentacion de codigo ](https://github.com/AngeloSepulveda/blog_backend/assets/160551968/e520b854-4820-4073-b20a-057572dab63b)

*****************************************************************API/UTILS.JS
**Documentación del Código en Español
Este código define un módulo que exporta una función llamada errorHandler.

Función Exportada:

errorHandler(err):
Recibe un argumento err que representa un error.
Lanza un nuevo error con el mensaje del error original (err).
Propósito:

La función errorHandler se utiliza para manejar errores que ocurren en el código. Al lanzar un nuevo error, se propaga el error a la siguiente capa de manejo de errores en la aplicación.

comandos a considerar y tener instalado node.js y phpmysql
comandos de node.js
npm init 
npm install -S mysql2 knex dotenv
npm install -S bluebird
npm i -S apollo-server-koa graphql-tools koa moment

el codigo esta probado y funcionado, con esta extencion de chrome se ejecuta en el navegador.
https://chromewebstore.google.com/detail/graphql-playground-for-ch/kjhjcgclphafojaeeickcokfbhlegecd?hl=es

para la ejecicion del proyecto 

node app 

se ejecuta en el port 4000
http://localhost:4000/graphql




