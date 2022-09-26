const { Session } = require('inspector');
const mysql = require('mysql2');
const con = require('../databaseCon');
const db = mysql.createConnection(con);

const tracks = (tracks) => {

    
 
    const info = {}

    tracks.forEach(item => {
        
        info.track_id = item.id
        info.name = item.name
        info.description = item.description
        info.description_HTML = item.description_HTML
        info.color = item.color
   info.last_modified = item.lastModified.slice(0, -1).replace(/[T]/, ' ')

    
    db.query(    
        
   `INSERT INTO track(track_id,name,description,description_html, color,last_modified)
       VALUES( "${info.track_id}","${info.name}","${info.description}","${info.description_HTML}","${info.color}","${info.last_modified}"
       );
    
       ` ,info,function(err,data){
     if (err) throw err
     else console.log("Track is added");
     
 })
 
});

}

const track_session = (obj) =>{
    const info = {}
    const tracks = obj;
    console.log(tracks[0].sessions[0]);
    tracks.forEach(item => {
       info.track_id = item.id
    item.sessions.forEach(element => {
        info.session_id = element
        db.query(`INSERT INTO track_session(track_id,session_id) VALUES ("${info.track_id}","${info.session_id}");`,
        info, function(err,data){
            if (err) throw err
            else console.log("track session is inserted");
            
        })
        
    });
});

}
module.exports =  {
tracks,
track_session    
    
}