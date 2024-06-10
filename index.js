import express from 'express';
import bodyParser from 'body-parser';
import { consultar } from "./mysql-conexion/conectar.js"
import cors from "cors"
const app = express();
const port = 3000;

// Middleware para parsear datos URL-encoded
app.use(bodyParser.urlencoded({ extended: true }));

// Middleware para parsear datos JSON (si lo necesitas)
app.use(bodyParser.json());

// Middleware
app.use(cors())

/*app.get('/menu', async (req, res) => {
  const texto = `select * from carta`
  try {
    const resultado = await consultar(texto);
    //console.table(resultado);
    res.json(resultado)
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});*/

app.get('/menu/:tipo', async (req, res) => {
  const tipo = req.params.tipo;
  let texto;
  //console.log(tipo);
  if (tipo === "todo") {
    texto = `SELECT * FROM carta`;
  }
  else {
    texto = `SELECT * FROM carta WHERE carta.tipo LIKE "${tipo}"`;
  }
  //console.log(texto);
  try {
    const resultado = await consultar(texto);
    //console.table(resultado);
    res.json(resultado)
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

app.post("/reserva", async (req, res) => {
  const { nombre, fecha, horario, personas, comentarios } = req.body;
  const texto = `INSERT INTO reserva (nombre, fecha, horario, personas, comentarios) VALUES ("${nombre}", "${fecha}", "${horario}", ${personas}, "${comentarios}")`
  try {
    await consultar(texto);
    res.json({ message: '¡Reserva enviada!' });
  }
  catch (err) {
    console.error('Error al insertar datos:', err);
    res.status(500).send('Error al insertar datos');
  }
})

app.post("/contacto", async (req, res) => {
  const { nombre, email, mensaje } = req.body;
  const texto = `INSERT INTO contacto (nombre, email, mensaje) VALUES ("${nombre}", '${email}', "${mensaje}")`
  try {
    await consultar(texto);
    res.json({ message: '¡Mensaje enviado!' });
  }
  catch (err) {
    console.error('Error al insertar datos:', err);
    res.status(500).send('Error al insertar datos');
  }
})

app.listen(port, () => {
  console.log('Servidor Express escuchando en el puerto 3000');
});