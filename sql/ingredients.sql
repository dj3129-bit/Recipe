CREATE TABLE `ingredients` (
	`recipeid` INT NOT NULL,
	`ingorder` INT NOT NULL DEFAULT '1',
	`ingname` VARCHAR(64) NULL DEFAULT '' COLLATE 'utf8mb4_0900_ai_ci',
	`quantity` VARCHAR(32) NULL DEFAULT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`unit` VARCHAR(32) NULL DEFAULT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`exp` TEXT NULL DEFAULT NULL COLLATE 'utf8mb4_0900_ai_ci',
	PRIMARY KEY (`recipeid`, `ingorder`) USING BTREE,
	CONSTRAINT `ingredients_ibfk_1` FOREIGN KEY (`recipeid`) REFERENCES `recipepost` (`recipeid`) ON UPDATE NO ACTION ON DELETE NO ACTION
)
COLLATE='utf8mb4_0900_ai_ci'
ENGINE=InnoDB
;
