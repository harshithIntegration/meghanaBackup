//  const express = require('express');
//  const router = express.Router();
const fs=require('fs');
const Movie = require('./../Models/movieModel')
// let movies=JSON.parse(fs.readFileSync('./data/movies.json'));


// exports.checkId=(req, res, next,value) => {

//     //find movie based on Id parameter
//     let movie=movies.find(el=>
//          el.id===value*1
//     )
//     if(!movie){
//         res.status(404).json({
//             status:"fail",
//             message:"Movie with ID "+value+" not found"
//         })
//     }
//     next();
// }

exports.validateBody=(req, res, next) => {
if(!req.body.name || !req.body.releaseYear)
{
    return res.status(400).json({
        status:"fail",
        message:"not a valid movie data"
    });
}
next();
}


//ROUTE HANDLER FUNCTION********
//get all movies
 exports.getAllMovies=(req,res)=>{
//     res.status(200).json({
//         count:movies.length,
//     status:"sucess",//change json data to jsend data
//     requestedAt: req.requestedAt,
//     data:{
//         movies:movies
//     }
//   });
  }
  
  //get movie based on id
  exports.getMovie=(req,res)=>{
    //   const id=req.params.id*1;
    //   let movie=movies.find(el=> //find method gives the individual elements
    //      el.id===id
    //   );
    //     //  if(!movie){
    //     //     res.status(404).json({
    //     //         status:"fail",
    //     //         message:"Movie with ID "+id+" not found"
    //     //     })
    //     // }
    
    //   res.status(200).json({
    //     status:"sucess",
    //     data:{
    //       movies:movies
    //     }
    //   });
    }
  
  //create a new movie using post method
    // app.use(express.json());//imp********
  
    exports.createMovie= (req,res)=>{
  // console.log(req.body);// o/p---->undefined so we use the 'use()' function
//   const newId=movies[movies.length-1].id+1;
//   const newMovie=Object.assign({id:newId},req.body)
//   movies.push(newMovie);
//   fs.writeFile('./data/movies.json',JSON.stringify(movies),(err)=>{
//   res.status(201).json({
//       status:"sucess",
//       data:{
//           movies:newMovie//see in json data //data will be added to the json data
//       }
//   })
//   })
  // res.send('created successfully')//see in postman
  }
  
  
  
  
  //update a movie using patch method
  exports.updateMovie=(req,res)=>{
    //   let id=req.params.id*1;//string value converted into number thats y we have to go for multiply with 1
    //   let movieToUpdate=movies.find(el=>
    //    el.id===id
    //     );
    // //     if(!movieToUpdate){
    // //       return res.status(404).json({
    // //           status:"fail",
    // //           message:"Movie with ID "+id+" not found"
    // //       })
    // //   }
  
    //       let index=movies.indexOf(movieToUpdate);//eg id=4  index=3
    //       Object.assign(movieToUpdate,req.body);
    //       movies[index]= movieToUpdate;
    //       fs.writeFile('./data/movies.json',JSON.stringify(movies),(err)=>{
    //           res.status(200).json({
    //               status:"sucess",
    //               data:{
    //                   movies: movieToUpdate
    //               }
    //           })
    //       })
     }
  
     //delete a movie using delete method
      exports.deleteMovie=(req,res)=>{
    //   const id = req.params.id*1; 
    //   const movieToDelete=movies.find(el=>el.id===id);
    // //   if(!movieToDelete){
    // //    return res.status(404).json({
    // //        status:"fail",
    // //        message:"Movie with ID "+id+" not found"
    // //    })
    // //  }
    //   const index=movies.indexOf(movieToDelete);
    //   movies.splice(index,1);//splice is mutate the original length of array in case
    //   fs.writeFile('./data/movies.json',JSON.stringify(movies),(err)=>{
    //    res.status(200).json({
    //        status:"sucess",
    //        data:{
    //            movies: null
    //        }
    //    })
    //   })
     }

// module.exports=router;