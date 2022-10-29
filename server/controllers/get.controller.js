
//importing dependacies
const mongoose= require('mongoose');

//1mporting database schemas
const users= require('../models/schema');

const getRoute= (req,res,next)=>{
    try{
        users.find({},(error,response)=>{
            if(!error){
                res.json({
                    data:response
                });
            }else{
                res.json({
                    mess:'Data not found'
                })
            }
        })

    next();
    }catch(error){
        res.json({
            mess:'Error occured  when getting'
        })
    }
}

module.exports=getRoute;