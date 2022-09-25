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
   info.startDate = item.startDate.slice(0,10)
   info.endDate = item.endDate.slice(0,10)
   info.duration = item.duration
   info.color = item.color
   info.contributor_id = item.contributors[0]
   info.last_modified = item.lastModified.slice(0,10)

    db.query(    
        
   `INSERT INTO session(session_id,name,code,description,description_HTML,startDate,endDate, duration
       ,color,last_modified)
       VALUES( "${info.session_id}","${info.name}","${info.code}","${info.description}","${info.description_HTML}",
       "${info.startDate}",
       "${info.endDate}","${info.duration}","${info.color}","${info.last_modified}");
       INSERT INTO session_contributor (session_id,contributor_id) VALUE ("${info.session_id}","${info.contributor_id}");
       ` 
 ,info,function(err,data){
     if (err) throw err
     else console.log(data);
     
 })
 
});

}
module.exports =  {
session      
    
}