//EXPRESS JS  SIMPLE EXAMPLE ********************************

// //IMPORT PACKAGE
// const express=require('express');
// let app = express();//calling the function  //bunch of method is there
// //route=httpmethod+url
// //get request
// app.get('/', (req,res)=>{
//     // res.status(200).send("<h1>'hello from express server'</h1>")
// res.status(200).json({'message': 'hello from express server','status': 200});
// })

// //post request
// app.post('/',(req,res)=>{

// })
//  const port=3000;//create a server
// app.listen(port,(req,res)=>{
//     console.log('servere has started.......');
// });









// // HANDLING GET REQUEST*********************************

// // IMPORT PACKAGE
// const express=require('express');
// const fs=require('fs');
// const readline=require('readline');
// let app = express();

// let movies=JSON.parse(fs.readFileSync('./data/movies.json'));
// //GET api/movies
// app.get('/api/v1/movies',(req,res)=>{
//     res.status(200).json({
//         count:movies.length,
//     status:"sucess",//change json data to jsend data
//     data:{
//         movies:movies
//     }
// });
// });

// const port=3000;//create a server
// app.listen(port,(req,res)=>{
//     console.log('servere has started.......');
// });












// //////// HANDLING POST REQUEST*********************************

//               // const express=require('express');
//               // let app = express();
//               // const fs=require('fs');
//               // const readline=require('readline');
//               // let movies=JSON.parse(fs.readFileSync('./data/movies.json'));
// // //POST REQUEST
// app.use(express.json())//imp********

// app.post('/api/v1/movies', (req,res)=>{
// // console.log(req.body);// o/p---->undefined so we use the 'use()' function
// const newId=movies[movies.length-1].id+1;
// const newMovie=Object.assign({id:newId},req.body)
// movies.push(newMovie);
// fs.writeFile('./data/movies.json',JSON.stringify(movies),(err)=>{
// res.status(201).json({
//     status:"sucess",
//     data:{
//         movies:newMovie//see in json data //data will be added to the json data
//     }
// })
// })
// // res.send('created successfully')//see in postman
// })














// // // HANDLING PATCH METHODS (OR PUT )
// // //PATCH================================>UPDATE
// app.patch('/api/v1/movies/:id',(req,res)=>{
//     let id=req.params.id*1;//string value converted into number thats y we have to go for multiply with 1
//     let movieToUpdate=movies.find(el=>
//      el.id===id
//       );
//       if(!movieToUpdate){
//         return res.status(404).json({
//             status:"fail",
//             message:"Movie with ID "+id+" not found"
//         })
//     }

//         let index=movies.indexOf(movieToUpdate);//eg id=4  index=3
//         Object.assign(movieToUpdate,req.body);
//         movies[index]= movieToUpdate;
//         fs.writeFile('./data/movies.json',JSON.stringify(movies),(err)=>{
//             res.status(200).json({
//                 status:"sucess",
//                 data:{
//                     movies: movieToUpdate
//                 }
//             })
//         })
//    })
//                   // const port=3000;//create a server
//                   // app.listen(port,(req,res)=>{
//                   //     console.log('servere has started.......');
//                   // });








                  
// // // HANDLING DELETE METHODS (OR PUT )****************************************************************
           
// app.delete('/api/v1/movies/:id',(req,res)=>{
//  const id = req.params.id*1; 
//  const movieToDelete=movies.find(el=>el.id===id);
//  if(!movieToDelete){
//   return res.status(404).json({
//       status:"fail",
//       message:"Movie with ID "+id+" not found"
//   })
// }

//  const index=movies.indexOf(movieToDelete);
//  movies.splice(index,1);//splice is mutate the original length of array in case
//  fs.writeFile('./data/movies.json',JSON.stringify(movies),(err)=>{
//   res.status(200).json({
//       status:"sucess",
//       data:{
//           movies: null
//       }
//   })
//  })
// })












// ////// HANDLING ROUTE PARAMETERS(based on id fetch)******************************
//               // const express=require('express');
//           // const fs=require('fs');
//           // const readline=require('readline');

//           // let app = express();
//           // const port=3000;      //create a server
//           // app.listen(port,(req,res)=>{
//           //     console.log('servere has started.......');
//           // });
//           // let movies=JSON.parse(fs.readFileSync('./data/movies.json'));

// // // GET -api/movies.id
// app.get('/api/v1/movies/:id',(req,res)=>{
// //   console.log(req.params);
// //convert id to number type
//   const id=req.params.id*1;
//   //find movie based on id parameter
//   let movie=movies.find(movie=>{//find method gives the individual elements
//     return movie.id===id
//   })
//      if(!movie){
//         res.status(404).json({
//             status:"fail",
//             message:"Movie with ID "+id+" not found"
//         })
//     }

//   res.status(200).json({
//     status:"sucess",
//     data:{
//       movie:movie
//     }
//   })
// })
















// ANOTHER WAY TO HANDLE THE CRUD OPERATIONS********************************


// HANDLING GET REQUEST*********************************

// IMPORT PACKAGE
const express=require('express');
const readline=require('readline');
const morgan=require('morgan');

const moviesRouter=require('./Routes/moviesRoutes');
const app = express();

const logger=function(req,res,next){//CREATE A CUSTOM MIDDLEWARE
console.log("CUSTOM MIDDLEWARE CALLED");
 next();
}



app.use(express.json());
app.use(logger);//it is a middleware function
app.use(morgan('dev'));//morgan is returns the middleware
app.use((req,res,next)=>{//create custom middleware
req.requestedAt = new Date().toISOString();
next();
})


// //GET api/movies
// app.get('/api/v1/movies',getAllMovies);
// // GET -api/movies.id
// app.get('/api/v1/movies/:id',getMovie);
// //post -api/movies
// app.post('/api/v1/movies', createMovie);
// //patch -api/movies.id
// app.patch('/api/v1/movies/:id',updateMovie);
// //delete -api/movies.id
// app.delete('/api/v1/movies/:id',deleteMovie);


app.use(logger)//custom middleware logger


app.use('/api/v1/movies',moviesRouter);

module.exports =app;