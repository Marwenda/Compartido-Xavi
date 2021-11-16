
/*EN EL SQL TENEMOS QUE AÑADIR ESTO: 
'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Bemen3';
*/ 

var mysql = require('mysql');

var conexion = mysql.createConnection({
    host: 'localhost',
    database: 'corazonfit',
    user: 'root',
    password: 'Bemen3'
});

conexion.connect(function (error) {
    if (error) {
        throw error;
    } else {
        console.log('Conexion establecida')
    }
});

conexion.query("SELECT * FROM clientes;", function(error,results,fields){
    if (error) {
        throw error;
    } else {
        results.forEach(result => {
            console.log(result.Alias, result.Edad);
            
        });}

});

conexion.end();
