const express = require('express');
const mysql = require('mysql2');
const bodyParser = require('body-parser');
const path = require("path");
const pageRutes = require("./rutas/pages");

/*instanciar*/ 
const app = express();
app.use(bodyParser.urlencoded({extended: false}));
//analizar los datos del cuerpo de las solicitudes HTTP, especificamente los datos que provienen de formulario HTML enviados atraves de propiedad POST y GET

//motor de plantillas para html de forma dinamica
app.set('view engine', 'ejs');

//usamos las rutas de pages.js

app.use('/',pageRutes);

//ruta para estilos
app.use(express.static(path.join(__dirname, 'public')));


//creedenciales para DB
const db = mysql.createConnection({
    host: '127.0.0.1',
    user: 'root',
    password: '1234',
    database: 'inscripcionesico',
    port: '3306'
});

//conexion a la DB
db.connect(err=>{
    if(err){
        console.log(`Error al momento de hacer conexion BB :3 ${err}`);
    }else{
        console.log(`Conexion realizada :3`);
    }
});
/*Puerto*/
const port = 5005; 
const hostName= 'localhost';
//server inicio
app.listen(port,hostName,()=>{
    console.log(`El server esta en escucha desde http://${hostName}:${port}`);
});

//Mostrar inscritos
app.get('/',(req,res)=>{
    //Consulta  a la base de datos
    const query = 'SELECT * FROM inscripciones';
    // trabajar con la conexion
    db.query(query,(err,results)=>{
        if(err){
            //mensaje de error para el usuario
            console.error(`Error al recuperar datos -> Codigo de error:${err}`);
            res.send('Error en recuperar datos');
        }else{
            res.render('index',{inscripciones: results});
        }

    });    

});


// AGREGAR INSCRIPCIÓN
app.post('/add', (req, res) => {
    const { id_asignatura, id_alumno, id_grupo, fecha, horario } = req.body;
    const query = 'INSERT INTO inscripciones (id_asignatura, id_alumno, id_grupo, fecha, horario) VALUES (?, ?, ?, ?, ?)';
    db.query(query, [id_asignatura, id_alumno, id_grupo, fecha, horario], (err) => {
        if (err) {
            console.error(`Error al insertar inscripción: Código -> ${err}`);
            res.send('Error al agregar inscripción');
        } else {
            res.redirect('/');
        }
    });
});

// EDITAR INSCRIPCIÓN - FORMULARIO
app.get('/edit/:id', (req, res) => {
    const { id } = req.params;
    const query = 'SELECT * FROM inscripciones WHERE id_inscripciones = ?';
    db.query(query, [id], (err, results) => {
        if (err) {
            console.error('Error al obtener inscripción');
            res.send("Error al obtener datos de inscripción");
        } else {
            res.render('edit', { inscripcion: results[0] });
        }
    });
});

// ACTUALIZAR INSCRIPCIÓN
app.post('/edit/:id', (req, res) => {
    const { id } = req.params;
    const { id_asignatura, id_alumno, id_grupo, fecha, horario } = req.body;
    const query = 'UPDATE inscripciones SET id_asignatura = ?, id_alumno = ?, id_grupo = ?, fecha = ?, horario = ? WHERE id_inscripciones = ?';
    db.query(query, [id_asignatura, id_alumno, id_grupo, fecha, horario, id], (err) => {
        if (err) {
            console.error('Error al actualizar inscripción');
            res.send("Error al actualizar inscripción");
        } else {
            res.redirect('/');
        }
    });
});

// ELIMINAR INSCRIPCIÓN
app.get('/delete/:id', (req, res) => {
    const { id } = req.params;
    const query = 'DELETE FROM inscripciones WHERE id_inscripciones = ?';
    db.query(query, [id], (err) => {
        if (err) {
            console.error('Error al eliminar inscripción');
            res.send("Error al eliminar inscripción");
        } else {
            res.redirect('/');
        }
    });
});
