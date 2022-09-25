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
   info.last_modified = item.lastModified.slice(0,10)

    
    db.query(    
        
   `INSERT INTO track(track_id,name,description,description_html, color,last_modified)
       VALUES( "${info.track_id}","${info.name}","${info.description}","${info.description_HTML}","${info.color}","${info.last_modified}"
       );
    
       ` ,info,function(err,data){
     if (err) throw err
     else console.log(data);
     
 })
 
});

}
module.exports =  {
tracks    
    
}