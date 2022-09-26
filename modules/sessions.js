const { info } = require('console');
const mysql = require('mysql2');
const con = require('../databaseCon');
const { location_availability } = require('./location');
const db = mysql.createConnection(con);

const session = (obj) => {



    const info = {}
    obj.forEach(item => {

        info.session_id = item.id
        info.name = item.name
        info.code = item.code
        info.description = item.description
        info.description_HTML = item.description_HTML
        info.startDate = item.startDate.slice(0, -1).replace(/[T]/, ' ')
        info.endDate = item.endDate.slice(0, -1).replace(/[T]/, ' ')
        info.duration = item.duration
        info.color = item.color
        info.contributor_id = item.contributors[0]
        info.last_modified = item.lastModified.slice(0, -1).replace(/[T]/, ' ')
        info.track_id = item.track

        db.query(

            `INSERT INTO session(session_id,name,code,description,description_HTML,startDate,endDate, duration
       ,color,last_modified)
       VALUES( "${info.session_id}","${info.name}","${info.code}","${info.description}","${info.description_HTML}",
       "${info.startDate}",
       "${info.endDate}","${info.duration}","${info.color}","${info.last_modified}");
      

       `
            , info, function (err, data) {
                if (err) throw err
                else console.log("Sessions is added");

            })

    });

}

insertIntoSessionTrack = (obj) => {
    const info = {};
    obj.forEach(item => {
        info.session_id = item.id;
        info.track_id = item.track;
        info.location_id = item.location

        db.query(`  INSERT INTO session_location (session_id,location_id) VALUES ("${info.session_id}","${info.location_id}");
    `, info, function (err, data) {
            if (err) throw err
            else console.log("inserted into join tabels");
        })
    });



}
const populateSessionContributor = (obj) => {
    const info = {};
    obj.forEach(item => {
        item.contributors.forEach(element => {
            info.session_id = item.id
                info.contributor_id = element
                
                
                db.query(`INSERT INTO session_contributor (session_id, contributor_id) VALUES ("${info.session_id}","${info.contributor_id}");`
                , info, function (err, data) {

                if (err) throw err
                else console.log("Session contributor is populated");

            })
            
        });


    });

}

module.exports = {
    session,
    insertIntoSessionTrack,
    populateSessionContributor

}