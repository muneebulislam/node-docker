const express = require('express')
const app = express()

app.get("/", (req,res)=> {
    res.send("Hello World. I am here!")
})
const port = process.env.PORT || 3000;
app.listen(port, () => console.log(`listerning on port ${port}` ));
