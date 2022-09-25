-- drop database json;
 -- select * from session;
-- SELECT * from contributor
-- inner join session on contributor.session_contributor_id = session.session_id;
CREATE DATABASE json;
use json;
CREATE TABLE contributor (
contributor_id VARCHAR (500) PRIMARY KEY,
honorific VARCHAR (100) DEFAULT NULL,
first_name VARCHAR (50) NOT NULL,
last_name VARCHAR (50) NOT NULL,
postNominal VARCHAR(50) DEFAULT NULL,
email VARCHAR(50) NOT NULL,
company VARCHAR (50) DEFAULT NULL,
position VARCHAR (50) DEFAULT NULL,
phone VARCHAR (30) DEFAULT NULL,
twitter VARCHAR (100) DEFAULT NULL,
facebook VARCHAR (100) DEFAULT NULL,
linkedin VARCHAR (100) DEFAULT NULL,
instagram VARCHAR (100) DEFAULT NULL,
youtube VARCHAR (100) DEFAULT NULL,
bio VARCHAR (100) DEFAULT NULL,
bio_HTML VARCHAR (1500) DEFAULT NULL,
headshotURL VARCHAR(500) DEFAULT NULL,
headshotx2URL VARCHAR(500) DEFAULT NULL,
availability_id VARCHAR (500) DEFAULT NULL,
label_id VARCHAR (500) DEFAULT NULL,
notes VARCHAR (2000) DEFAULT NULL,
last_modified DATE DEFAULT NULL,
session_contributor_id INT DEFAULT NULL

);
CREATE TABLE session (
session_id VARCHAR(500) PRIMARY KEY,
name VARCHAR (500) NOT NULL,
code VARCHAR (20) NOT NULL,
description VARCHAR (50) DEFAULT NULL,
description_HTML VARCHAR (100) DEFAULT NULL,
track_id VARCHAR (100) DEFAULT NULL,
startDate DATE DEFAULT NULL,
endDate DATE DEFAULT NULL,
duration INT DEFAULT NULL,
color VARCHAR(100) DEFAULT NULL,
resource_id VARCHAR (500) DEFAULT NULL,
label_id VARCHAR (500) DEFAULT NULL,
location_id VARCHAR (500) DEFAULT NULL,
last_modified DATE DEFAULT NULL
);

-- seesion id
CREATE TABLE session_contributor (
session_contributor_id INT PRIMARY KEY AUTO_INCREMENT,
session_id VARCHAR (500),
FOREIGN KEY (session_id) REFERENCES session(session_id) ON UPDATE CASCADE ON DELETE CASCADE,
contributor_id VARCHAR (500),
FOREIGN KEY (contributor_id) REFERENCES contributor(contributor_id)ON UPDATE CASCADE ON DELETE CASCADE 	,
role VARCHAR (50) DEFAULT NULL
);
ALTER TABLE contributor ADD FOREIGN KEY (session_contributor_id) REFERENCES session_contributor (session_contributor_id) ON UPDATE CASCADE ON DELETE CASCADE;

CREATE TABLE availability (
availability_id INT PRIMARY KEY AUTO_INCREMENT,
contributor_id VARCHAR (500) ,
start_date DATE DEFAULT NULL,
end_date DATE DEFAULT NULL,
FOREIGN KEY (contributor_id) REFERENCES contributor(contributor_id)ON UPDATE CASCADE ON DELETE CASCADE
);


CREATE TABLE resource (
resource_id VARCHAR (500) PRIMARY KEY,
name VARCHAR (50) DEFAULT NULL,
description VARCHAR (500) DEFAULT NULL,
description_html VARCHAR (500) DEFAULT NULL,
label_id VARCHAR (500) DEFAULT NULL,
location_id VARCHAR (500) DEFAULT NULL,
session_id VARCHAR (500) DEFAULT NULL,
last_modified DATE DEFAULT NULL
);
ALTER TABLE resource ADD FOREIGN KEY (session_id) REFERENCES session (session_id)ON UPDATE CASCADE ON DELETE CASCADE;

CREATE TABLE track(
track_id VARCHAR (500) PRIMARY KEY,
name VARCHAR (50) DEFAULT NULL,
description VARCHAR (500) DEFAULT NULL,
description_html VARCHAR (500) DEFAULT NULL,
color VARCHAR(500) DEFAULT NULL,
label_id VARCHAR (500) DEFAULT NULL,
session_id VARCHAR(500) DEFAULT NULL,
FOREIGN KEY (session_id) REFERENCES session(session_id)ON UPDATE CASCADE ON DELETE CASCADE,
last_modified DATE DEFAULT NULL

);

CREATE TABLE label (
label_id VARCHAR(500) PRIMARY KEY,
name VARCHAR (500) DEFAULT NULL,
description VARCHAR(500) DEFAULT NULL,
description_html VARCHAR(500) DEFAULT NULL,
contributor_id VARCHAR (500) DEFAULT NULL,
FOREIGN KEY (contributor_id) REFERENCES contributor(contributor_id)ON UPDATE CASCADE ON DELETE CASCADE,
resource_id VARCHAR(500) DEFAULT NULL,
FOREIGN KEY (resource_id) REFERENCES resource(resource_id)ON UPDATE CASCADE ON DELETE CASCADE,
session_id VARCHAR(500) DEFAULT NULL,
FOREIGN KEY (session_id) REFERENCES session(session_id)ON UPDATE CASCADE ON DELETE CASCADE,
track_id VARCHAR(500) DEFAULT NULL,
FOREIGN KEY (track_id) REFERENCES track(track_id)ON UPDATE CASCADE ON DELETE CASCADE,
location_id VARCHAR(500) DEFAULT NULL,
last_modified DATE DEFAULT NULL
);

CREATE TABLE location (
location_id VARCHAR(500) PRIMARY KEY,
name VARCHAR(50) DEFAULT NULL,
description VARCHAR(500) DEFAULT NULL,
description_html VARCHAR(500) DEFAULT NULL,
contributor_id VARCHAR (500) DEFAULT NULL,
FOREIGN KEY (contributor_id) REFERENCES contributor(contributor_id)ON UPDATE CASCADE ON DELETE CASCADE,
label_id VARCHAR(500) DEFAULT NULL,
resource_id VARCHAR(500) DEFAULT NULL,
FOREIGN KEY (resource_id) REFERENCES resource(resource_id)ON UPDATE CASCADE ON DELETE CASCADE,
track_id VARCHAR(500) DEFAULT NULL,
FOREIGN KEY (track_id) REFERENCES track(track_id)ON UPDATE CASCADE ON DELETE CASCADE,
session_id VARCHAR (500),
last_modified DATE,
FOREIGN KEY (session_id) REFERENCES session(session_id) ON UPDATE CASCADE ON DELETE CASCADE


 );
 ALTER TABLE availability ADD COLUMN location_id VARCHAR(500) DEFAULT NULL;
 ALTER TABLE availability ADD FOREIGN KEY (location_id) REFERENCES location(location_id)ON UPDATE CASCADE ON DELETE CASCADE;
 ALTER TABLE label ADD FOREIGN KEY (location_id) REFERENCES location(location_id)ON UPDATE CASCADE ON DELETE CASCADE;
 ALTER TABLE session ADD FOREIGN KEY (track_id) REFERENCES track(track_id)ON UPDATE CASCADE ON DELETE CASCADE;
 ALTER TABLE session ADD FOREIGN KEY (location_id) REFERENCES location(location_id)ON UPDATE CASCADE ON DELETE CASCADE;
  ALTER TABLE resource ADD FOREIGN KEY (location_id) REFERENCES location(location_id)ON UPDATE CASCADE ON DELETE CASCADE;

  ALTER TABLE resource ADD FOREIGN KEY (label_id) REFERENCES label(label_id)ON UPDATE CASCADE ON DELETE CASCADE;
 ALTER TABLE track ADD FOREIGN KEY (label_id) REFERENCES label(label_id)ON UPDATE CASCADE ON DELETE CASCADE;


select * from availability;