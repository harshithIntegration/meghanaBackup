// const dotenv = require('dotenv');
// dotenv.config({path:'./config.env'});
// const app=require('./app')
// const mongoose = require('mongoose');

console.log(process.env);

// mongoose.connect(process.env.CONN_STR,{
//     useNewUrlParser:true,
// }).then((conn)=>{
//     console.log(conn);
//     console.log('DB connection successful');
// })
// .catch((error)=>{
//     console.log('something went wrong');
// })



// server.js
const express = require('express');
const mongoose = require('mongoose');
const bodyParser = require('body-parser');
const dotenv = require('dotenv');

dotenv.config();

 const app = express();
const port = process.env.PORT || 3000;

app.use(bodyParser.json());

// Check if the connection URI is defined
if (!process.env.CONN_STR) {
  console.error('MongoDB connection URI is not defined. Check your environment variables.');
  process.exit(1); // Exit the process with an error code
}

mongoose.connect(process.env.CONN_STR, {
  useNewUrlParser: true,
  useUnifiedTopology: true,
});

const db = mongoose.connection;

db.on('error', (error) => {
  console.error('MongoDB connection error:', error);
});

db.once('open', () => {
  console.log('Connected to MongoDB');
  // Your server setup or additional code...
  
  app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
  });
});








// const db = mongoose.connection;


// // we created one document
// const testMovie = new Movie({
//     name:"Die hard",
//     description:"action packed movie starting bruce willis in this trilling adventure",
//     duration:130,
//     ratings:4.5
// });

// testMovie.save().then(doc=>{//save to the database (if we find any error or result we use then and catch methods)
// console.log(doc);
// }).catch(err=>{
//     console.log("error occured: "+err);
// });

   
     
     //create a server
    //  const port=process.env.PORT||3000;
    //  app.listen(port,(req,res)=>{
    //      console.log('servere has started.......');
    //  });
   