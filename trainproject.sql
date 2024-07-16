-- create database trainproject; 
-- use trainproject;
-- show tables;

CREATE TABLE Rep (username VARCHAR(50) PRIMARY KEY,
	pswd VARCHAR(50)
);

-- CREATE TABLE Admin (username VARCHAR(50) PRIMARY KEY, 
	-- pswd VARCHAR(50)
-- ); 

CREATE TABLE Customer (username VARCHAR(50) PRIMARY KEY, 
	pswd VARCHAR(50), 
    dateOfBith DATE, 
    disabled BOOLEAN
);
    
CREATE TABLE Train (trainNumber INT PRIMARY KEY);

CREATE TABLE Station (stationName VARCHAR(50) PRIMARY KEY);

CREATE TABLE Reservation (reservationNumber INT PRIMARY KEY, 
	dateMade DATE,
    trainNumber INT NOT NULL,
    originName VARCHAR(50) NOT NULL,
    originDateTime DATETIME,
    destinationName VARCHAR(50) NOT NULL,
    FOREIGN KEY (trainNumber) REFERENCES Train(trainNumber),
    FOREIGN KEY (originName) REFERENCES Station(stationName),
    FOREIGN KEY (destinationName) REFERENCES Station(stationName)
);

CREATE TABLE Schedule (route VARCHAR(50),
	stopsNum INT,
    fare FLOAT,
    oneWay BOOLEAN,
    trainNumber INT,
    startName VARCHAR(50),
    startTime DATETIME,
    endName VARCHAR(50),
    endTime DATETIME,
    PRIMARY KEY (startName, endName, trainNumber),
    FOREIGN KEY (trainNumber) REFERENCES Train(trainNumber),
    FOREIGN KEY (startName) REFERENCES Station(stationName),
    FOREIGN KEY (endName) REFERENCES Station(stationName),
    INDEX route_train_idx (route, trainNumber)
);

CREATE TABLE Belongs (reservationNumber INT,
	username VARCHAR(50),
    PRIMARY KEY (reservationNumber, username),
    FOREIGN KEY (reservationNumber) REFERENCES Reservation(reservationNumber),
    FOREIGN KEY (username) REFERENCES Customer(username)
);
    
CREATE TABLE Stops (stopName VARCHAR(50), 
	route VARCHAR(50),
    trainNumber INT,
    arrivalTime DATETIME,
    deperatureTime DATETIME,
    PRIMARY KEY (stopName, route, trainNumber),
    FOREIGN KEY (stopName) REFERENCES Station(stationName),
    FOREIGN KEY (route, trainNumber) REFERENCES Schedule(route, trainNumber)
);