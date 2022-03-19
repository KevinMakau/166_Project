COPY USR(userId, 
password, 
email, 
name, 
dateOfBirth)
FROM 'Users.csv'
DELIMITER ','
CSV HEADER;

COPY MESSAGE(msgId, 
senderId, 
receiverId, 
contents, 
sendTime, 
deleteStatus, 
status)
FROM 'Messages.csv'
DELIMITER ','
CSV HEADER;

COPY CONNECTION(userId, 
connectionId, 
status)
FROM 'Connections.csv'
DELIMITER ','
CSV HEADER;

COPY WORK_EXPR(userId, 
company, 
role, 
location, 
startDate, 
endDate)
FROM 'WorkExperience.csv'
DELIMITER ','
CSV HEADER;

COPY EDUCATIONAL_DETAILS(userId, 
instituitionName, 
major, 
degree, 
startdate, 
enddate)
FROM 'education.csv'
DELIMITER ','
CSV HEADER;
