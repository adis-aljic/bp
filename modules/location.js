const mysql = require('mysql2');
const con = require('../databaseCon');
const db = mysql.createConnection(con);

const location = (location) => {

    
 
    const info = {}

    location.forEach(item => {
        
        info.location_id = item.id
        info.name = item.name
        info.description = item.description
        info.description_HTML = item.description_HTML
   info.last_modified = item.lastModified.slice(0, -1).replace(/[T]/, ' ')

   item.sessions.forEach(element => {
       
info.session_id = element
db.query(    
    
    `INSERT INTO location(location_id,name,description,description_html,last_modified)
    VALUES( "${info.location_id}","${info.name}","${info.description}","${info.description_HTML}","${info.last_modified}"
    );
     UPDATE session_track SET location_id  = "${info.location_id}" WHERE session_id = "${info.session_id}";
     INSERT INTO location_availability (location_id,start_date,end_date) VALUES ("${info.location_id}","${info.start_date}","${info.end_date}")
    ` ,info,function(err,data){
        if (err) throw err
        else console.log(data);
        
    })
});
 
});

}

const location_availability = (obj) =>{
    
    const info = {}
    obj.forEach(item => {

        
        
        item.availability.forEach(element => {
            info.location_id = item.id
            info.start_date = element.startDate.slice(0, -1).replace(/[T]/, ' ')
            info.end_date = element.endDate.slice(0, -1).replace(/[T]/, ' ')
            db.query(`INSERT INTO location_availability (location_id,start_date,end_date) VALUES ("${info.location_id}","${info.start_date}","${info.end_date}")`,
            info, function (err, data) {
                if (err) throw err
                else console.log("Data is added to location avaibility");
            }
            
            );
            
        });
    })
       


}

module.exports =  {
location,
location_availability   
}