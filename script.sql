CREATE TABLE `airports` (

  `faa` varchar(4) NOT NULL,

  `name` varchar(100) NOT NULL,

  `lat` float NULL,

  `lon` float NOT NULL,

  `alt` int NOT NULL,

  `tz` int NULL,

  `dst` varchar(2) NOT NULL,

  `tzone` varchar(60) NOT NULL,

  PRIMARY KEY (`faa`)
  
) ENGINE=InnoDB AUTO_INCREMENT=606 DEFAULT CHARSET=utf8mb4;

CREATE TABLE `planes` (

  `tailnum` varchar(20) NOT NULL,

  `year` int NOT NULL,

  `type` varchar(25) NULL,

  `manufacturer` varchar(50) NOT NULL,

  `model` varchar(25) NOT NULL,

  `engines` int NULL,

  `seats` int NOT NULL,

  `speed` varchar(60) NOT NULL,
  
  `engine` varchar(20) NOT NULL,
  
  PRIMARY KEY (`tailnum`)
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `airlines` (

  `carrier` varchar(5) NOT NULL,

  `name` varchar(70) NOT NULL,
  
  PRIMARY KEY (`carrier`)
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `weather`;

CREATE TABLE `weather` (

  `weather_id` int NOT NULL AUTO_INCREMENT,

  `origin` varchar(4) NOT NULL,

  `year` int NOT NULL,

  `month` int not NULL,
  
  `day` int NOT NULL,

  `hour` int NOT NULL,

  `temp` numeric NOT NULL,

  `dewp` numeric NULL,

  `humid` numeric NOT NULL,

  `wind_dir` int NOT NULL,
  
  `wind_speed` double NOT NULL,
  
  `wind_gust` varchar (20) NOT NULL,
  
  `precip` float NOT NULL,
  
  `pressure` float NOT NULL,
  
  `visib` int NOT NULL,
  
  `time_hour` varchar(100) NOT NULL,
  
  PRIMARY KEY (`weather_id`, `year`, `month`, `day`, `hour`, `origin`)
  
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `flights`;

CREATE TABLE `flights` (

  `flight_id` int NOT NULL AUTO_INCREMENT,

  `year` int NOT NULL,

  `month` int not NULL,
  
  `day` int NOT NULL,

  `dep_time` float NOT NULL,

  `sched_dep_time` float NOT NULL,

  `dep_delay` float NOT NULL,

  `arr_time` float NOT NULL,

  `sched_arr_time` float NOT NULL,
  
  `arr_delay` double NOT NULL,
  
  `carrier` varchar (10) NOT NULL,
  
  `flight` int NOT NULL,
  
  `tailnum` varchar (10) NOT NULL,
  
  `origin` varchar (5) NOT NULL,
  
  `dest` varchar (5) NOT NULL,
  
  `air_time` float NOT NULL,
  
  `distance` int NOT NULL,
  
  `hour` int NOT NULL,
  
  `minute` int NOT NULL,
  
  `time_hour` varchar(100) NOT NULL,
  
  PRIMARY KEY (`flight_id`)
  
 )ENGINE=InnoDB AUTO_INCREMENT=603 DEFAULT CHARSET=utf8mb4;
  
  CONSTRAINT `tailnum_fk1` FOREIGN KEY (`tailnum`) REFERENCES `planes` (`tailnum`),
  CONSTRAINT `carrier_fk1` FOREIGN KEY (`carrier`) REFERENCES `airlines` (`carrier`)
) ENGINE=InnoDB AUTO_INCREMENT=603 DEFAULT CHARSET=utf8mb4;

select * from airlines a;
select * FROM airports;
select * from planes;
select * from weather;
select * from flights;

