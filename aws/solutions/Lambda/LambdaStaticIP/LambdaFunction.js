const https = require('https');

exports.handler = async (event) => {
  const url = 'https://api.ipify.org';
  let data = "";

  return new Promise((resolve) => {
    https.get(url, res => {

    res.on('data', chunk => { data += chunk }) 

    res.on('end', () => {
      resolve(data);
      })
    }) 
  })
};
