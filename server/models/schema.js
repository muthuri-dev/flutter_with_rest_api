const mongoose = require('mongoose');
const schema = mongoose.Schema;
const dataSchema = new schema({
    name:{
        type:String,
        required:true,
    },
    age:{
        type:Number,
        required:true
    },
    occupation:{
        type:String,
        required:true
    }
},{timestamps:true});

const users= mongoose.model('users',dataSchema);

module.exports=users;