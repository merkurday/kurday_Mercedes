require('rootpath')();
const express = require('express');
const app = express();
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

var personaDb = require("model/persona.js");

//req : es lo que llega desde el frontend (en nuestro caso Postman)
//res : respuesta enviada desde el servidor al frontend

//atendiendo el endpoint /api/persona mediante el metodo GET 
// |--> llamar a la funcion getAll() que está en el archivo encargado de hestionar lo relacionado a la tabla PERSONA en la BD
//      y procesara la respuesta en una funcion callback
// |--> GetAll() enviara como respuesta un error (que le enviará la base de datos) o los datos en caso de exito   


 app.get('/', (req, res) => {

    personaDb.getAll((err, resultado) => {
        if (err) {
            res.status(500).send(err);
        } else {
            res.json(resultado);
        }
    });

});





//---------------------------------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------------------------------


app.post('/', (req, res) => {

    let persona = req.body;
    personaDb.create(persona, (err, resultado) => {
        if (err) {
            res.status(500).send(err);
        } else {
            res.send(resultado);
        }
    });

});

app.put("/", (req, res) => {
    let persona = req.body;
    personaDb.update(persona, (err,resultado) => {
        if (err) {
            res.status(500).send(err);
        } else {
            res.send(resultado);
        }
    });
});

app.delete('/:dni', (req, res) => { //DELETE (Borrar)
    let persona = req.params.dni;
    personaDb.borrar(persona, (err, result) =>{
        if(err){
            res.status(500).send(err);
        }else{
            res.json(result);
        }
    })
});



app.get('/:apellido', (req, res) => {
    personaDb.getByApellido((err,resultado) => {
        if (err) {
            res.status(500).send(err)
        } else {
            res.json(resultado)
        }
    })
});

app.get("/:nickname", verNombreUsuario)

function verNombreUsuario(req, res) {
    personaDb.getUserByPersona(req.params.dni_persona, (err,result_model))
    if (err) {
        res.status(500).send(err);
    } else {
        res.send(result_model.mensajito)
    }
}

module.exports = app;