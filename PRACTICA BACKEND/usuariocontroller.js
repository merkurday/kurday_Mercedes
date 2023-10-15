require('rootpath')();
const express = require('express');
const app = express();
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

var usuarioDb = require("model/user.js");

//req : es lo que llega desde el frontend (en nuestro caso Postman)
//res : respuesta enviada desde el servidor al frontend

//atendiendo el endpoint /api/persona mediante el metodo GET 
// |--> llamar a la funcion getAll() que está en el archivo encargado de hestionar lo relacionado a la tabla PERSONA en la BD
//      y procesara la respuesta en una funcion callback
// |--> GetAll() enviara como respuesta un error (que le enviará la base de datos) o los datos en caso de exito   


app.get('/', (req, res) => {

    usuarioDb.getAll((err, resultado) => {
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

    let usuario = req.body;
    usuarioDb.create(usuario, (err, resultado) => {
        if (err) {
            res.status(500).send(err);
        } else {
            res.send(resultado);
        }
    });

});

app.put("/",(req,res) => {
    let usuario = req.body;
    usuarioDb.update(usuario,(err,resultado) => {
        if (err) {
            res.status(500).send(err);
        } else {
            res.send(resultado)
        }
    })
})

app.delete('/:mail', (req, res) => { //DELETE (Borrar)
    let usuario = req.params.mail;
    usuarioDb.borrar(usuario, (err, result) =>{
        if(err){
            res.status(500).send(err);
        }else{
            res.json(result);
        }
    })
});

app.get('/mail', (req, res) => {
    usuarioDb.getByEmail((err,resultado) => {
        if (err) {
            res.status(500).send(err)
        } else {
            res.json(resultado)
        }
    })
});



module.exports = app;