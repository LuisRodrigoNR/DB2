const express = require("express");
const router = express.Router();
const path = require("path");

router.get("/add",(req,res)=>{
    res.render("add")
})



module.exports = router;