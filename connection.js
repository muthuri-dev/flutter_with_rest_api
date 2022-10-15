const express = require('express');
const mongoose = require('mongoose');
const bodyParser = require('body-parser');
const PORT =process.env.PORT || 5000;

//initiate app
const app = express();

//middlewares
app.use(bodyParser.json());

//database url

const mongoURL='mongodb+srv://kennedy:zxcvbnm12345@iconnect.x2n1uuq.mongodb.net/test';

//database schemas

const users=require('./models/schema');

//connecting to the database
mongoose.connect(mongoURL)
.then(function(){
    app.listen(PORT,function(err){
        if(!err){
            console.log(`connected throuth port ${PORT}`);
        }else{
            console.log(err);
        }
    })
})
.catch(function(err){
    console.log('mongoose error: ',err);
});

// application routes

app.get('/',function(req,res){
    res.json({mess:'server running'});
});

//post route

app.post('/user',function(req,res){
    const newUser= new users({
        name:req.body.name,
        age:req.body.age,
        occupation:req.body.occupation,
    });
    newUser.save();
});