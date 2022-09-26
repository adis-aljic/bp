const mysql = require('mysql2');
const con = require('../databaseCon');
const db = mysql.createConnection(con);

const updateAvailability= (obj) => {
const info = {}
obj.forEach(item => {
    
    info.location_id = item.location
    item.contributors.forEach(element => {
       info.contributor_id = element
       
       
       db.query(`UPDATE availability SET location_id = "${info.location_id}" WHERE contributor_id = "${info.contributor_id}";
       
       `,function(err, data){
           if (err) throw err
           else console.log("availability updated");
        })

        
        
    });
});



}

module.exports = {
 updateAvailability   
}