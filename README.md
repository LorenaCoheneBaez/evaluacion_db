# Creación de base de datos | Script SQL
## Objetivo
Realizar un script SQL que cree por completo una base de datos para la administración de una app de notas, así como también generar por cada tabla 10 registros con datos de prueba.

A partir del script, se crea un diagrama de entidad y relación. En el mismo se señalan las tablas con los atributos que son clave primaria y los que son
clave foránea. Además, por cada atributo se especifica si aceptan nulos o no y qué tipo de dato pueden almacenar. También se representar qué
relación y la cardinalidad que existe entre las diferentes tablas de la base de datos para la administración de las notas.

### Pautas
- En el caso de los usuarios, se necesita registrar el nombre y un e-mail que los identifique.
- Además es importante conocer qué nota es la que fue gestionada (creada, modificada y/o eliminada) por dicho usuario. 
- Ahora bien, una nota solo puede ser gestionada por un único usuario y para la misma necesitamos registrar:
    - un título (el cual no debe superar los 100 caracteres)
    - una fecha de creación
    - la fecha de la última modificación
    - una descripción (es decir, la nota en sí)
    - un mecanismo para identificar si dicha nota puede ser o no eliminada una vez que sea creada
   - cada nota debe estar asociada a una o varias categorías, es decir, una categoría puede contener de cero a muchas notas. Por ejemplo: la categoría música almacenará si existen, todas las notas que poseen dicha categoría.
