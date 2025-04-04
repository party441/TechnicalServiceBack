var mysql = require('mysql2')
 
var connection = mysql.createConnection({
    host: 'sql8.freesqldatabase.com',
    user: '	sql8771272',
    password:'1glfXvXzf1',
    database: 'techservices',
    port:3306
});
connection.connect((err) => {

    if (!err)

      console.log('Connection Established Successfully')
    else

        console.log('Connection Failed!' + JSON.stringify(err, undefined, 2));

});
 
module.exports = connection;
 