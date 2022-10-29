const express= require('express');
const router= express.Router();


//importing controllers
const {postRoute} = require('../controllers/post.controller');
const getRoute= require('../controllers/get.controller');

//application routes

router.post('/post',postRoute);

router.get('/get',getRoute)

module.exports=router;