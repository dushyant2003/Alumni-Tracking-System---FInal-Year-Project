import mysql from "mysql2";
import dotenv from "dotenv";

dotenv.config();


const con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "mysql",
    database: "alumni",
    // port: process.env.DB_PORT 
})
// "port: process.env.PORT" remove this line to run offline on xampp

con.connect((err) => {
    if (err) {
        console.log("Connection Error", err)
    } else {
        console.log("connected")
    }
})


export default con;