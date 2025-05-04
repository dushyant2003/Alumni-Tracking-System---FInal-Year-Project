import mysql from "mysql2";
import dotenv from "dotenv";

dotenv.config();


const con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "mysql",
    database: "alumni",
})

con.connect((err) => {
    if (err) {
        console.log("Connection Error", err)
    } else {
        console.log("connected")
    }
})


export default con;