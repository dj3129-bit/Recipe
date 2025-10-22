CREATE TABLE `notification` (
	`notificationid` INT NOT NULL AUTO_INCREMENT,
	`notifytitle` VARCHAR(32) NULL DEFAULT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`type` ENUM('NORMAL','REPLY','IMPORTANT') NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`message` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`createdate` TIMESTAMP NULL DEFAULT (now()),
	`userid` VARCHAR(32) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	PRIMARY KEY (`notificationid`) USING BTREE,
	INDEX `userid` (`userid`) USING BTREE,
	CONSTRAINT `notification_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `recipeuser` (`userid`) ON UPDATE NO ACTION ON DELETE NO ACTION
)
COLLATE='utf8mb4_0900_ai_ci'
ENGINE=InnoDB
;
