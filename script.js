const mysql = require('mysql2');
const con = require('./databaseCon');
const jsonData= require('./file.json'); 
const contributorQuery = require('./modules/contributors');
const sessionQuery = require('./modules/sessions');
const labelQuery = require('./modules/labels');
const locationQuery = require('./modules/location');
const resourceQuery = require('./modules/resources');
const trackQuery = require('./modules/tracks');
const db = mysql.createConnection(con);

db.connect((err) => { 
    if (err) throw err
    else
    console.log("database is connected")
 })


 const contributor_data = jsonData.contributors
 const session_data = jsonData.sessions
 const label_data = jsonData.labels
 const location_data = jsonData.locations
 const resource_data = jsonData.resources
 const track_data = jsonData.tracks
 
 
 contributorQuery.contributor(contributor_data)
 sessionQuery.session(session_data)
 locationQuery.location(location_data)
 labelQuery.label(label_data)
 resourceQuery.resources(resource_data)
 trackQuery.tracks(track_data)
 