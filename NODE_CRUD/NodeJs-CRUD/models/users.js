const mongoose = require("mongoose");

// Create a Schema
const userSchema = new mongoose.Schema({
    name: {
        type: String,
        required: true
    },
    email: {
        type: String,
        required: true
    },
    phone: {
        type: String,
        required: true
    },
    image: {
        type: String,
        required: true
    },
    created:{
        type: Date,
        required: true,
        default: Date.now
    }
});

const User = mongoose.model('User', userSchema);

module.exports = User;