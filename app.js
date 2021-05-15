const app = express();
//======================= middleware =================
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
const con = require('./db');
//====================================================


app.get('/getdata',(req,res) => {

    // get all years
    let sql = 'SELECT * FROM `product`';
    con.query(sql, (err, result) => {
        if (err) {
            console.log(err);
            return res.status(500).send('Database error');
        }
        res.json(result)
        // res.render('blog', { users: req.decoded, year: years, post: blogs });

    });

    // res.send('hello');

});


// Start server
const PORT = 30000;
app.listen(PORT,() =>{
    console.log('Server start at port : ',PORT);
});