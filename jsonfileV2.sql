    -- drop DATABASE json1;
CREATE DATABASE json1;
use json1;
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
notes VARCHAR (2000) DEFAULT NULL,
last_modified DATETIME DEFAULT NULL

);
select * from contributor;
CREATE TABLE contributor_availability (
availability_contributor_id INT PRIMARY KEY AUTO_INCREMENT,
contributor_id VARCHAR (500) DEFAULT NULL,
start_date DATETIME DEFAULT NULL,
end_date DATETIME DEFAULT NULL,
FOREIGN KEY (contributor_id) REFERENCES contributor(contributor_id)ON UPDATE CASCADE ON DELETE CASCADE
);
 -- Create TABLE Connection (
-- Connection_id INT PRIMARY KEY AUTO_INCREMENT,
-- contributor_id VARCHAR (500),
-- FOREIGN KEY(contributor_id) REFERENCES contributor(contributor_id) on UPDATE CASCADE ON DELETE CASCADE,
-- session_id VARCHAR (500) DEFAULT NULL,
-- resource_id VARCHAR (500) DEFAULT NULL,
-- track_id VARCHAR (500) DEFAULT NULL,
-- locationid INT DEFAULT NULL,
-- location_id VARCHAR (500) DEFAULT NULL


-- );


CREATE TABLE session (
session_id VARCHAR(500) PRIMARY KEY,
name VARCHAR (500) NOT NULL,
code VARCHAR (20) NOT NULL,
description VARCHAR (50) DEFAULT NULL,
description_HTML VARCHAR (100) DEFAULT NULL,
startDate DATETIME DEFAULT NULL,
endDate DATETIME DEFAULT NULL,
duration INT DEFAULT NULL,
color VARCHAR(100) DEFAULT NULL,
last_modified DATETIME DEFAULT NULL
);
CREATE TABLE session_location (
session_track_id INT PRIMARY KEY AUTO_INCREMENT,
session_id VARCHAR (100) DEFAULT NULL,
 FOREIGN KEY (session_id) REFERENCES session(session_id) ON UPDATE CASCADE ON DELETE CASCADE,
location_id VARCHAR (500) DEFAULT NULL

);
SELECT * from session;
CREATE TABLE session_contributor (
session_contributor_id INT PRIMARY KEY AUTO_INCREMENT,
session_id VARCHAR (500) DEFAULT NULL,
FOREIGN KEY (session_id) REFERENCES session(session_id) ON UPDATE CASCADE ON DELETE CASCADE,
contributor_id VARCHAR (500),
FOREIGN KEY (contributor_id) REFERENCES contributor(contributor_id)ON UPDATE CASCADE ON DELETE CASCADE 	,
role VARCHAR (50) DEFAULT NULL
);
select * from session_contributor;
CREATE TABLE resource (
resource_id VARCHAR (500) PRIMARY KEY,
name VARCHAR (50) DEFAULT NULL,
description VARCHAR (500) DEFAULT NULL,
description_html VARCHAR (500) DEFAULT NULL,
last_modified DATETIME DEFAULT NULL,
location_join_id INT
);

CREATE TABLE track(
track_id VARCHAR (500) PRIMARY KEY,
name VARCHAR (50) DEFAULT NULL,
description VARCHAR (500) DEFAULT NULL,
description_html VARCHAR (500) DEFAULT NULL,
color VARCHAR(500) DEFAULT NULL,
last_modified DATETIME DEFAULT NULL
);


CREATE TABLE location (
location_id VARCHAR(500) PRIMARY KEY,
name VARCHAR(50) DEFAULT NULL,
description VARCHAR(500) DEFAULT NULL,
description_html VARCHAR(500) DEFAULT NULL,
last_modified DATETIME DEFAULT NULL

 );
-- CREATE TABLE session_location (
 -- session_locationid INT PRIMARY KEY AUTO_INCREMENT,
-- session_id VARCHAR(500) DEFAULT NULL,
-- FOREIGN KEY (session_id) REFERENCES session(session_id) ON UPDATE CASCADE ON DELETE CASCADE,

-- );
-- ALTER TABLE Connection ADD FOREIGN KEY (resource_id) REFERENCES resource (resource_id) ON UPDATE CASCADE ON DELETE CASCADE;
-- ALTER TABLE Connection ADD FOREIGN KEY (track_id) REFERENCES track (track_id) ON UPDATE CASCADE ON DELETE CASCADE;
-- ALTER TABLE Connection ADD FOREIGN KEY (locationid) REFERENCES location (locationid) ON UPDATE CASCADE ON DELETE CASCADE;
-- ALTER TABLE Connection ADD FOREIGN KEY (session_id) REFERENCES session (session_id) ON UPDATE CASCADE ON DELETE CASCADE;
SELECT * FROM session_contributor;

CREATE TABLE label (
label_id VARCHAR(500) PRIMARY KEY,
name VARCHAR (500) DEFAULT NULL,
description VARCHAR(500) DEFAULT NULL,
description_html VARCHAR(500) DEFAULT NULL,
last_modified DATETIME DEFAULT NULL,
location_join_id INT
);
SELECT * from label;
CREATE TABLE location_availability (
location_availability_id INT PRIMARY KEY AUTO_INCREMENT,
location_id VARCHAR (500) DEFAULT NULL,
start_date DATETIME DEFAULT NULL,
end_date DATETIME DEFAULT NULL,
FOREIGN KEY (location_id) REFERENCES location(location_id)
);

CREATE TABLE contributor_label (
contributor_label INT PRIMARY KEY AUTO_INCREMENT,
contributor_id VARCHAR (500) DEFAULT NULL,
FOREIGN KEY(contributor_id) REFERENCES contributor(contributor_id),
label_id VARCHAR (500) DEFAULT NULL
);
CREATE TABLE location_join(
location_join_id INT PRIMARY KEY AUTO_INCREMENT,
location_id VARCHAR(500)DEFAULT null,
FOREIGN KEY (location_id) REFERENCES location(location_id),
track_id VARCHAR (500) DEFAULT NULL,
label_id VARCHAR (500) DEFAULT NULL,
resource_id VARCHAR (500) DEFAULT null
);
ALTER TABLE label ADD FOREIGN KEY (location_join_id)REFERENCES location_join(location_join_id);
ALTER TABLE resource ADD FOREIGN KEY (location_join_id)REFERENCES location_join(location_join_id);

CREATE TABLE track_session (
track_session_id INT PRIMARY KEY AUTO_INCREMENT,
track_id VARCHAR (500) DEFAULT NULL,
-- FOREIGN KEY (track_id) REFERENCES track(track_id),
session_id VARCHAR (500)DEFAULT null
-- FOREIGN KEY (session_id) REFERENCES session(session_id)

);