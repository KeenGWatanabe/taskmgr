const mongoose = require('mongoose')

const connectDB = (url) => {
return mongoose.connect(url, {
    useNewUrlParser: true,
    // useCreateIndex: true,
    // useFindAndModify: false,
    useUnifiedTopology: true,
})
}
// Example Express.js endpoint
app.get('/healthz', (req, res) => {
  // Add database connection check if needed
  res.status(200).send('OK');
});

module.exports = connectDB
