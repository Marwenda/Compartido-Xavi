
/*EN EL SQL TENEMOS QUE AÑADIR ESTO: 
'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Bemen3';
Para arrancar el archivo necesitamos tener Nodemon instalado.
En este caso nosotros lo tenemos en package.json como serve, entonces para 
correr el archivo tiene que ser npm run serve index.js
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
function Select(dato, tabla) {
    return (
        conexion.query("SELECT "+dato+" FROM "+tabla+";", function (error, results) {
            if (error) {
                throw error;
            } else {
                results.forEach(result => {
                    let Alias = result.Alias;
                    let Edad = result.Edad;
                    console.log(" Usuario: " + Alias + " \n edad: " + Edad);
                });
            }

        })
)
}
Select("*", "clientes")
conexion.end();
