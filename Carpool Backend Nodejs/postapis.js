const app = require('./index');
app.use(express.json());
app.post("/api/addproduct", (req, res) => {
    console.log("Result", req.body);
  
    const pdata = {
      "id": productData.length + 1,
      "pname": req.body.pname,
      "pprice": req.body.pprice,
      "pdesc": req.body.pdesc
    };
  
    productData.push(pdata);
    console.log("Final", pdata);
  
    res.status(200).send({
      "status_code": 200,
      "message": "Product added successfully",
      "product": pdata
    });
  });