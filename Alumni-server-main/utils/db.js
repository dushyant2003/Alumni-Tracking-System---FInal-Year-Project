import mysql from "mysql2";
import dotenv from "dotenv";

dotenv.config();


const con = mysql.createConnection({
    host: "localhost",
    user: "root",           // your mysql user name
    password: "mysql",      // your mysql password
    database: "alumni_database",     // name of database.
})

con.connect((err) => {
    if (err) {
        console.log("Connection Error", err)
    } else {
        console.log("connected")
    }
})


export default con;