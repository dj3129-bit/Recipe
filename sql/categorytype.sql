CREATE TABLE `categorytype` (
	`maincategoryid` INT NOT NULL AUTO_INCREMENT,
	`maincategoryname` VARCHAR(16) NULL DEFAULT NULL COLLATE 'utf8mb4_0900_ai_ci',
	PRIMARY KEY (`maincategoryid`) USING BTREE
)
COLLATE='utf8mb4_0900_ai_ci'
ENGINE=InnoDB
AUTO_INCREMENT=8
;
