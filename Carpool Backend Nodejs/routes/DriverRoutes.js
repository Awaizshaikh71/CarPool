// routes/driverRoutes.js
const express = require('express');
const router = express.Router();
const SignupDriverModel = require('../models/SignupDriverModel');
const ProfileModel = require('../models/ProfileModel');
// Handle driver registration
router.post('/register', async (req, res) => {
    try {
       
        const driver = new SignupDriverModel(req.body);
        await driver.save();
         const profileData = {
            coverImage: "",
            profileImage: "",
            name: req.body.firstName+" "+req.body.lastName,
            location: "",
            bio: "",
            friendsList: [], // Assuming it's an array
            rides: 0, // Initialize to 0 or another default value
            pickup: 0,
            user: driver._id, // Associate the profile with the driver
          };
        const profile = new ProfileModel(profileData);
        await profile.save();
        res.status(201).json(driver);
    } catch (error) {
        res.status(500).json({ error: 'Could not create a driver account' });
    }
});

module.exports = router;
