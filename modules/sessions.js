const { info } = require('console');
const mysql = require('mysql2');
const con = require('../databaseCon');
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
 ,info,function(err,data){
     if (err) throw err
     else console.log("Sessions is added");
     
 })
 
});

}

insertIntoSessionTrack = (obj) => {
  const info = {};
obj.forEach(item => {
    info.session_id =item.id;
    info.track_id =item.track;
    info.location_id = item.location

    db.query(`  INSERT INTO session_track (session_id,track_id,location_id) VALUES ("${info.session_id}","${info.track_id}","${info.location_id}");
    `,info,function(err,data){
        if (err) throw err
        else console.log("inserted into join tabels");
    })
});



}
module.exports =  {
session,
insertIntoSessionTrack      
    
}