require('dotenv').config();
const express = require('express');
const mongoose = require('mongoose');
const session = require('express-session');

const app = express();
const PORT = process.env.PORT || 4000;

// Database Connection
mongoose.connect(process.env.DB_URI);
const db = mongoose.connection;
db.on("error", (error) => console.log(error));
db.once("open", () => console.log("Connected To The Database!"));

// Covert data into JSON format
app.use(express.json())
app.use(express.urlencoded({extended: false}));

app.use(
    session({
        secret: "My Secret Key",
        saveUninitialized: true,
        resave: false
    })
)

app.use((req, res, next) => {
    res.locals.message = req.session.message;
    delete req.session.message;
    next();
})

app.use(express.static("uploads"));

// Set Template Engine
app.set("view engine", "ejs")

// Route Prefix
app.use("", require("./routes/routes"));

app.listen(PORT, ()=>{
    console.log(`Server Running On Port : ${PORT}`);
})