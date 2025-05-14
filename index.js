import express from "express";

const app = express();
app.use(cors());
app.use(express.json());

app.get("/", (req, res) => {
  res.send("Hello from Dockerised Express!");
});

const port = process.env.PORT || 3000;
app.listen(port, () => {
  console.log("Server is running on port 3000");
});
