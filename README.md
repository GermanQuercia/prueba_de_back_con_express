no hace falta npm init
hay que instalar express, cors, mysql2, y nodemon
se puede hacer todo en la misma linea con "npm install express cors mysql2 nodemon"
cada uno tiene que modificar el archivo conexion.js (guarda con el nombre parecido conectar.js) que esta en la carpeta mysql-conexion con sus propios datos de usuario y contraseña (y puerto si hace falta)
el archivo para correr el servidor es index.js, ya sea con "npm run dev" o sino "node index.js"
el front esta tal cual en la carpeta static, cosa que no creo que se haga directamente asi. De ahi hay que abrir el index.html para ver en el naviegador.
