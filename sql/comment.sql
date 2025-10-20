CREATE TABLE `comment` (
	`commentid` INT NOT NULL AUTO_INCREMENT,
	`recipeid` INT NOT NULL,
	`commentcontent` TEXT NULL DEFAULT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`commentdate` DATE NULL DEFAULT NULL,
	`commentfixdate` DATE NULL DEFAULT NULL,
	`isreport` TINYINT(1) NULL DEFAULT 'false',
	`userid` VARCHAR(32) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	PRIMARY KEY (`commentid`, `recipeid`) USING BTREE,
	INDEX `recipeid` (`recipeid`) USING BTREE,
	INDEX `userid` (`userid`) USING BTREE,
	CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`recipeid`) REFERENCES `recipepost` (`recipeid`) ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `recipeuser` (`userid`) ON UPDATE NO ACTION ON DELETE NO ACTION
)
COLLATE='utf8mb4_0900_ai_ci'
ENGINE=InnoDB
;
