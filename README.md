# Estudiantes
Nuestro equipo está conformado por 3 integrantes. Trabajaremos 15 escenarios con cada herramienta.
|Nombre |Correo|
|--|--|
|Cesar Andrade |co.andrade86@uniandes.edu.co|
|Wilson Beltran |w.beltran@uniandes.edu.co|
|Marby Leguizamón|m.leguizamong@uniandes.edu.co|

# Funcionalidades
- Login
- Agregar post 
- Editar post
- Publicar post
- Revertir publicación de post
- Borrar post
- Crear tags
- Editar tags
- Borrar tags
- Editar usuario
- Invitar usuarios
- Suspender usuario

# Cypress
[![Cypress.io](https://img.shields.io/badge/tested%20with-Cypress-04C38E.svg)](https://www.cypress.io/)

## Para tener en cuenta
En las pruebas de Cypress usamos el patrón Given when Then de la siguiente manera: 
- Given: el código que se ejecuta antes de cada prueba en beforeEach
- When: encontrando los elementos del dom
- Then: el assert

## Pasos para ejecutar los escenarios Versión 3.3.0

1. Instalar la versión 3.3.0 de ghost.  En el siguiente enlace podrá encontrar un tutorial que servirá de guía: https://www.coursera.org/learn/pruebas-automatizadas-software/supplement/gjD9z/como-desplegar-ghost-de-forma-local
2. Inicie ghost. Desde el sitio del administrador cree el siguiente usuario:

|Correo|Clave|
|--|--|
|m.leguizamong@uniandes.edu.co|123456789!|

3. Instalar cypress. En el siguiente enlace podrá encontrar un tutorial que servirá de guía: https://misovirtual.virtual.uniandes.edu.co/codelabs/cypress-tutorial/index.html#1
4. Descargue el repositorio del código en su máquina. Desde powershell ingrese el siguiente comando: git clone https://github.com/marbyl/Sistema-de-TSDC.git
5. Dentro de la ruta escogida para contener el código del paso anterior y desde powershell ubíquese en el siguiente directorio : Sistema-de-TSDC/Cypress/Pruebas_V3.3.0/
6. Ejecute el comando cypress open. Le aparecerá una imagen como la siguiente: 


![image](https://user-images.githubusercontent.com/78806424/118421599-0a06f380-b687-11eb-9b93-beceafadb1f4.png)

7. Haga clic en cada enlace teniendo en cuenta el orden de numeración para ejecutar las pruebas.
8. Los screenshot de las pruebas realizadas se encuentran en el siguiente directorio del repositorio clonado: Sistema-de-TSDC/Cypress/Pruebas_V3.3.0/cypress/screenshots/
  https://github.com/marbyl/Sistema-de-TSDC/tree/main/Cypress/Pruebas_V3.3.0/cypress/screenshots

## Pasos para ejecutar los escenarios Versión 3.42.5
1. Instalar la versión 3.42.5 de ghost.  En el siguiente enlace podrá encontrar un tutorial que servirá de guía: https://www.coursera.org/learn/pruebas-automatizadas-software/supplement/gjD9z/como-desplegar-ghost-de-forma-local
2. Inicie ghost. Desde el sitio del administrador cree el siguiente usuario:

|Correo|Clave|
|--|--|
|m.leguizamong@uniandes.edu.co|123456789!|

3. Instalar cypress. En el siguiente enlace podrá encontrar un tutorial que servirá de guía: https://misovirtual.virtual.uniandes.edu.co/codelabs/cypress-tutorial/index.html#1
4. Descargue el repositorio del código en su máquina. Desde powershell ingrese el siguiente comando: git clone https://github.com/marbyl/Sistema-de-TSDC.git
5. Dentro de la ruta escogida para contener el código del paso anterior y desde powershell ubíquese en el siguiente directorio : Sistema-de-TSDC/Cypress/Pruebas_V3.3.0/
6. Ejecute el comando cypress open. Le aparecerá una imagen como la siguiente: 
![image](https://user-images.githubusercontent.com/78806424/118421599-0a06f380-b687-11eb-9b93-beceafadb1f4.png)
7. Haga clic en cada enlace teniendo en cuenta el orden de numeración para ejecutar las pruebas.
8. Los screenshot de las pruebas realizadas se encuentran en el siguiente directorio del repositorio clonado: Sistema-de-TSDC/Cypress/Pruebas_V3.3.0/cypress/screenshots/
  https://github.com/marbyl/Sistema-de-TSDC/tree/main/Cypress/Pruebas_V3.3.0/cypress/screenshots

## Escenarios Cypress
1. Intento de login con contraseña inválida
2. Intento de login con usuario inválido
3. Inicio de sesión sin información
4. Inicio de sesión con usuario válido
5. Dado una sesión válida- Crear post con título - navegación
6. Dado una sesión válida-Crear post con título navegación segundo nivel
7. Dado una sesión válida-Crear post con título
8. Dado una sesión válida-Crear post con título - ir al listado de post
9. Dado una sesión válida-Crear post con título - buscar en el listado
10. Dado una sesión válida, con un post existente - publicarlo
11. Dado una sesión válida, un post publica - despublicarla
12. Dado una sesión válida- Crear page con título - navegación
13. Dado una sesión válida-Crear page con título navegación segundo nivel
14. Dado una sesión válida-Crear page con título
15. Dado una sesión válida-Crear page con título - ir al listado de page
16. Dado una sesión válida-Crear page con título - buscar en el listado

# Kraken
## Escenarios Kraken
1. Intento de login con contraseña inválida
2. Intento de login con usuario inválido
3. Inicio de sesión con usuario válido
3. Crear post con título y consultar en el listado
4. Publicar post existente inmediatamente. Plublished view post
5. Update publicación existente actualizando el contenido
6. Update publicación existente despublicando
7. Crear page con título y consultar en el listado
8. Publicar page existente inmediatamente. Plublished view page
9. Update publicación page existente actualizando el contenido
10. Update publicación page existente despublicando
11. Crear tag sin información en la metadata. 
12. Buscar tag creado en el listado.
13. Asociar tag a post existente
14. Asociar tag a page existente 
15. Agregar opción en el menú. Consultar que aparezca en la vista del cliente.

| Application  |  Feature File | Steps Definition | Properties file | Report Link |
|:-------------|:-------------|:-------------|:------------------|:-------|
| Ghost| [.feature](/KrakenMobile/ghost.feature)|--- | [kraken_properties ](/KrakenMobile/kraken_properties.json) |[report](/KrakenMobile/Report.zip) |
