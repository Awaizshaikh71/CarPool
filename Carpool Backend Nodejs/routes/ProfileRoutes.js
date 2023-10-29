// routes/profileRoutes.js
const express = require('express');
const router = express.Router();
const ProfileModel = require('../models/ProfileModel');

// GET profile by user ID
router.get('/:userId', async (req, res) => {
  try {
    const userId = req.params.userId; // Get the user ID from the URL

    // Find the user's profile by user ID
    const profile = await ProfileModel.findOne({ user: userId });

    if (!profile) {
      return res.status(404).json({ error: 'Profile not found' });
    }

    res.status(200).json({ profile });
  } catch (error) {
    res.status(500).json({ error: 'Profile retrieval failed' });
  }
});

module.exports = router;