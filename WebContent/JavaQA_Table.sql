#use javaqa;

#drop table if exists springqa;

CREATE TABLE `springqa` (
  `SerialNo` int(11) NOT NULL AUTO_INCREMENT,
  `Qid` varchar(45) NOT NULL,
  `Qno` varchar(45) NOT NULL,
  `QType` enum('longAns','shortAns','multichoice','singlechoice','droplist') NOT NULL,
  `QText` text NOT NULL,
  `Ans` text NOT NULL,
  `AnsExt` blob,
  `TimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Author` varchar(45) NOT NULL,
  `Tags` enum('core','advance','servlet','jsp','database','jdbc','hibernate','Struts','JSF','framework','Spring','Design Patterns','Algorithms','Java') NOT NULL,
  `Topic` varchar(45) NOT NULL,
  `images` blob,
  `Videos` blob,
  `Extra` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Qid`),
  UNIQUE KEY `SerialNo_UNIQUE` (`SerialNo`),
  UNIQUE KEY `Qid_UNIQUE` (`Qid`)
) ENGINE=InnoDB

