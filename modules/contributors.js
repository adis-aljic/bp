const mysql = require('mysql2');
const con = require('../databaseCon');
const db = mysql.createConnection(con);

const contributor = (obj) => {

    
 
    const info = {}
    obj.forEach(item => {
        
        item.availability.forEach(element => {
        info.contributor_id = item.id
        info.honorific = item.honorific
        info.first_name = item.firstName
        info.last_name = item.lastName
   info.email = item.email
   info.postNominal = item.postNominal
   info.company = item.company
   info.position = item.position
   info.phone = item.phone
   info.twitter = item.twitter
   info.facebook = item.facebook
   info.linkedin = item.linkedin
   info.instagram = item.instagram
   info.youtube = item.youtube
   info.bio = item.bio
   info.bio_HTML = item.bio_HTML
   info.headshotURL = item.headshotURL
   info.headshotx2URL = item.headshot2xURL
   info.notes = item.notes
   info.last_modified = item.lastModified.slice(0,10)
       
       info.start_date = element.startDate.slice(0,10)
       info.end_date = element.endDate.slice(0,10)
    
    db.query(    
        
   `
   INSERT INTO contributor(contributor_id,first_name,last_name,postNominal,email,company,position,phone, twitter
    ,facebook,linkedin,instagram,youtube,bio,bio_HTML,headshotURL,headshotx2URL,notes,last_modified)
    VALUES( "${info.contributor_id}","${info.first_name}","${info.last_name}","${info.postNominal}","${info.email}","${info.company}",
    "${info.position}","${info.phone}","${info.twitter}","${info.facebook}","${info.linkedin}","${info.instagram}","${info.youtube}",
    "${info.bio}","${info.bio_HTML}","${info.headshotURL}","${info.headshotx2URL}","${info.notes}","${info.last_modified}");
    INSERT INTO availability (contributor_id,start_date,end_date) VALUES ("${info.contributor_id}","${info.start_date}","${info.end_date}");
    
    ` ,info,function(err,data){
     if (err) throw err
     else console.log(data);
     
 })
      
 })
});
}
module.exports =  {
contributor    
    
}