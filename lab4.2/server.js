const csvtojson = require('csvtojson');
const fs = require('fs');
var sqlite3 = require('sqlite3').verbose();
var express = require("express")
var app = express()
var http = require('http');

var server = http.createServer(app);
var db = new sqlite3.Database('./Car.db');

db.run(fs.readFileSync('./createdb2.sql').toString());



app.get("/api/Car_ID", (req, res, next) => {
    var sql = "select * from Car_ID"
    var params = []
    db.all(sql, params, (err, rows) => {
        if (err) {
          res.status(400).json({"error":err.message});
          return;
        }
        res.json({
            "message":"success",
            "data":rows
        })
      });
});
app.get('/add/:Car_Id/:Model', function(req,res){
    db.serialize(()=>{
      db.run('INSERT INTO Cars(Car_ID, Year,Model,Make) VALUES(?,?,?,?)', [req.params.carid, req.params.model], function(err) {
        if (err) {
          return console.log(err.message);
        }
        console.log("New Car has been added");
        res.send("New Car has been added into the database with ID = "+req.params.carid+ " and model = "+req.params.model);
      });
  });
  });


app.use(function(req, res){
    res.status(404);
});

