const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'nativeproject',
});

const con = mysql.createConnection(config);

module.exports = con;