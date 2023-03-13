const express = require('express');

const router = express.Router();

router.route('/').get((req, res) => {
  res.send('Server is up and running');
});

router.route('/ip').get((req, res) => {
  const parseIp = req.headers['x-forwarded-for'] || req.socket.remoteAddress;
  res.send(parseIp);
});

module.exports = router;
