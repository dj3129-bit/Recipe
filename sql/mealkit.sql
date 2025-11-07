CREATE TABLE `mealkit` (
	`kitid` INT NOT NULL AUTO_INCREMENT,
	`kititle` VARCHAR(64) NULL DEFAULT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`kitintroduce` VARCHAR(2048) NULL DEFAULT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`price` INT NULL DEFAULT NULL,
	`shiprice` INT NULL DEFAULT NULL,
	`kitwritedate` DATETIME NULL DEFAULT (now()),
	`kitfixdate` DATETIME NULL DEFAULT (now()) ON UPDATE CURRENT_TIMESTAMP,
	`recommend` INT NULL DEFAULT '0',
	`imagepath` VARCHAR(2048) NULL DEFAULT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`userid` VARCHAR(32) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	PRIMARY KEY (`kitid`) USING BTREE,
	INDEX `userid` (`userid`) USING BTREE,
	CONSTRAINT `recipepost_ibfk_3` FOREIGN KEY (`userid`) REFERENCES `recipeuser` (`userid`) ON UPDATE NO ACTION ON DELETE NO ACTION
)
COLLATE='utf8mb4_0900_ai_ci'
ENGINE=InnoDB
AUTO_INCREMENT=3
;
