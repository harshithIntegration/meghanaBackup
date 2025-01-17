const express = require('express');
const router = express.Router();
const User = require('../models/users')
const multer = require('multer')
const fs = require('fs')

// Image Upload
var storage = multer.diskStorage({
    destination: function(req, file, cb){
        cb(null, './uploads')
    },
    filename: function(req, file, cb){
        cb(null, file.fieldname+"_"+Date.now()+"_"+file.originalname)
    }
})

var upload = multer({
    storage: storage,
}).single('image')

// Insert An User Into Database Route
// router.post('/add', upload, (req, res) => {
//     const user = new User({
//         name: req.body.name,
//         email: req.body.email,
//         phone: req.body.phone,
//         image: req.file.filename,
//     })
//     user.save((err) => {
//         if(err){
//             res.json({message: err.message, type: 'Danger'})
//         } else {
//             req.session.message = {
//                 type: 'Success',
//                 message: 'User Added Successfully!'
//             }
//             res.redirect('/');
//         }
//     })
// })

router.post('/add', upload, async (req, res) => {
    try {
      const user = new User({
        name: req.body.name,
        email: req.body.email,
        phone: req.body.phone,
        image: req.file.filename,
      });
  
      await user.save();
  
      req.session.message = {
        type: 'Success',
        message: 'User Added Successfully!'
      };
      res.redirect('/');
    } catch (err) {
      res.json({ message: err.message, type: 'Danger' });
    }
  });
  

// Get All Users Route
// router.get("/", (req, res)=>{
//     User.find().exec((err, users)=>{
//         if(err){
//             res.json({ message: err.message })
//         } else {
//             res.render('home', { 
//                 title: "Home Page",
//                 users: users
//             })    
//         }
//     })
// })

router.get("/", async (req, res) => {
    try {
      const users = await User.find().exec();
      res.render('home', {
            title: "Home Page",
        users: users
      });
    } catch (err) {
      res.json({ message: err.message });
    }
  });
  
router.get('/add', (req, res) => {
    res.render("add_users", { title: "Add Users"})
})

// Edit An User Route
// router.get('/edit/:id', (req, res)=>{
//     let id = req.params.id;
//     User.findById(id, (err, user)=>{
//         if(err){
//             res.redirect('/')
//         } else {
//             if(user == null){
//                 res.redirect('/')
//             } else {
//                 res.render("edit_users", { 
//                     title: "Edit User",
//                     user: user
//                 })
//             }
//         }
//     })
// })

router.get('/edit/:id', async (req, res) => {
    try {
      const id = req.params.id;
      const user = await User.findById(id);
  
      if (user === null) {
        res.redirect('/');
      } else {
        res.render("edit_users", {
          title: "Edit User",
          user: user
        });
      }
    } catch (err) {
      res.redirect('/');
    }
  });
  

// Update User Route
// router.post('/update/:id', upload, (req, res) => {
//     let id = req.params.id;
//     let new_image = '';

//     if(req.file){
//         new_image = req.file.filename;
//         try{
//             fs.unlinkSync('./uploads/'+req.body.old_image)
//         } catch(err) {
//             console.log(err);
//         }
//     } else {
//         new_image = req.body.old_image;
//     }

//     User.findByIdAndUpdate(id, {
//         name: req.body.name,
//         email: req.body.email,
//         phone: req.body.phone,
//         image: new_image,
//     }, (err, result) => {
//         if(err){
//             res.json({ message: err.message, type: 'danger' })
//         } else {
//             req.session.message = {
//                 type: 'success',
//                 message: 'User Updated Successfully!'
//             };
//             res.redirect("/");
//         }
//     })
// })

router.post('/update/:id', upload, async (req, res) => {
    try {
      const id = req.params.id;
      let new_image = '';
  
      if (req.file) {
        new_image = req.file.filename;
        try {
          fs.unlinkSync('./uploads/' + req.body.old_image);
        } catch (err) {
          console.log(err);
        }
      } else {
        new_image = req.body.old_image;
      }
  
      await User.findByIdAndUpdate(id, {
        name: req.body.name,
        email: req.body.email,
        phone: req.body.phone,
        image: new_image,
      });
  
      req.session.message = {
        type: 'success',
        message: 'User Updated Successfully!',
      };
      res.redirect('/');
    } catch (err) {
      res.json({ message: err.message, type: 'danger' });
    }
});
  
// Delete User Route
// router.get('/delete/:id', (req, res) => {
//     let id = req.params.id;
//     User.findByIdAndDelete(id, (err, result) => {
//         if(result.image != ''){
//             try{
//                 fs.unlinkSync('./uploads/'+result.image)
//             } catch(err) {
//                 console.log(err);
//             }
//         }
//         if(err) {
//             res.json({ message: err.message })
//         } else {
//             req.session.message = {
//                 type: 'info',
//                 message: 'User Deleted Successfully!'
//             }
//             res.redirect("/");
//         }
//     })
// })

router.get('/delete/:id', async (req, res) => {
    try {
      const id = req.params.id;
      const user = await User.findByIdAndDelete(id);
  
      if (user && user.image !== '') {
        try {
          fs.unlinkSync('./uploads/' + user.image);
        } catch (err) {
          console.log(err);
        }
      }
  
      req.session.message = {
        type: 'info',
        message: 'User Deleted Successfully!'
      };
      res.redirect('/');
    } catch (err) {
      res.json({ message: err.message });
    }
  });  

module.exports = router;