CREATE TABLE Event (
ID Integer NOT NULL,
Name VARCHAR(200) NOT NULL,
EventWebLink VARCHAR(200) NOT NULL,
CFPText VARCHAR(1000) NOT NULL,
PRIMARY KEY (ID)
);

CREATE TABLE EventConference (
EventID Integer NOT NULL,
City VARCHAR(100) NOT NULL,
Country VARCHAR(100) NOT NULL,
EvDate DATE NOT NULL,
PRIMARY KEY (EventID),
FOREIGN KEY (EventID) REFERENCES Event(ID)
);

CREATE TABLE EventJournal (
EventID Integer NOT NULL,
JournalName VARCHAR(100) NOT NULL,
Publisher VARCHAR(100) NOT NULL,
PRIMARY KEY (EventID),
FOREIGN KEY (EventID) REFERENCES Event(ID)
);

CREATE TABLE EventBook (
EventID Integer NOT NULL,
Publisher VARCHAR(100) NOT NULL,
PRIMARY KEY (EventID),
FOREIGN KEY (EventID) REFERENCES Event(ID)
);

CREATE TABLE ActivityHappens(
EventID Integer NOT NULL,
ActivityName VARCHAR(100) NOT NULL,
ActivityDate DATE NOT NULL,
PRIMARY KEY (EventID, ActivityName),
FOREIGN KEY (EventID) REFERENCES Event(ID)
);

CREATE TABLE ResearchTopic (
Name VARCHAR(100) NOT NULL,
Area VARCHAR(100) NOT NULL,
PRIMARY KEY (Name)
);

CREATE TABLE People (
PersonID Integer NOT NULL,
Name VARCHAR(100) NOT NULL,
Affilliation VARCHAR(100),
PRIMARY KEY (PersonID)
);

CREATE TABLE Covers (
EventID Integer NOT NULL,
TopicName VARCHAR(100) NOT NULL,
PRIMARY KEY (EventID, TopicName),
FOREIGN KEY (EventID) REFERENCES Event(ID),
FOREIGN KEY (TopicName) REFERENCES ResearchTopic(Name)
);

CREATE TABLE Organizes (
EventID Integer NOT NULL,
PerID Integer NOT NULL,
Role VARCHAR(100) NOT NULL,
PRIMARY KEY (EventID, PerID),
FOREIGN KEY (EventID) REFERENCES Event(ID),
FOREIGN KEY (PerID) REFERENCES People(PersonID)
);



SHOW TABLES;
SELECT count(*) FROM activityhappens; 
SELECT count(*) FROM covers; 
SELECT count(*) FROM event; 
SELECT count(*) FROM eventbook; 
SELECT count(*) FROM eventconference; 
SELECT count(*) FROM eventjournal; 
SELECT count(*) FROM organizes; 
SELECT count(*) FROM people; 
SELECT count(*) FROM researchtopic; 


SHOW PLUGINS;
