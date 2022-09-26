const mysql = require('mysql2');
const con = require('../databaseCon');
const db = mysql.createConnection(con);

const label = (label) => {

    
 
    const info = {}

    label.forEach(item => {
        
        info.label_id = item.id
        info.name = item.name
        info.description = item.description
        info.description_HTML = item.description_HTML
   info.last_modified = item.lastModified.slice(0, -1).replace(/[T]/, ' ')

    
    db.query(    
        
   `INSERT INTO label(label_id,name,description,description_html,last_modified)
       VALUES( "${info.label_id}","${info.name}","${info.description}","${info.description_HTML}","${info.last_modified}"
    
       );
    
       ` ,info,function(err,data){
     if (err) throw err
     else console.log(data);
     
 })
 
});

}
module.exports =  {
label    
    
}