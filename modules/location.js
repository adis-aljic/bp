const mysql = require('mysql2');
const con = require('../databaseCon');
const db = mysql.createConnection(con);

const location = (location) => {

    
 
    const info = {}

    location.forEach(item => {
        
        info.location_id = item.id
        console.log(info.location_id);
        info.name = item.name
        info.description = item.description
        info.track_id = item.tracks[0]
   info.last_modified = item.lastModified.slice(0, -5).replace(/[T]/, ' ')
 //  UPDATE session_track SET location_id  = "${info.location_id}" WHERE session_id = "${info.session_id}";

//    item.sessions.forEach(element => {
       
// info.session_id = element
// console.log(info.location_id);
db.query(    
    
`    
INSERT INTO location(location_id,name,description,last_modified)
VALUES( "${info.location_id}","${info.name}","${info.description}","${info.last_modified}");
INSERT INTO location_join(location_id,track_id) VALUES("${info.location_id}","${info.track_id}");    
` ,info,function(err,data){
        if (err) throw err
        else console.log("added into location");
        
    })
});
 
// });

}

const location_availability = (obj) =>{
    
    const info = {}

    obj.forEach(item => {
  
        
        item.availability.forEach(element => {
            info.location_id = item.id
            info.start_date = element.startDate.slice(0, -5).replace(/[T]/, ' ')
            info.end_date = element.endDate.slice(0, -5).replace(/[T]/, ' ')
            console.log(info.start_date);
        
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