
//importing dependancies
const mongoose= require('mongoose');

//1mporting database schemas
const user= require('../models/schema');

//get route:
const postRoute= (req,res,next)=>{
    try{
        const newUser= new user({
            name:req.body.name,
            age:req.body.age,
            occupation:req.body.occupation,
        })
        //res.status(200).json(newUser);
        res.status(200).json({
            mess:'new user saved'
        });
        next();
    }catch(error){
        res.json({
            mess:'error occured'
        })
    }
}


module.exports={
    postRoute,
}