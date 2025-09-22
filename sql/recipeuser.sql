CREATE TABLE `recipeuser` (
	`userid` VARCHAR(32) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`userpw` VARCHAR(64) NULL DEFAULT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`username` VARCHAR(64) NULL DEFAULT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`nickname` VARCHAR(32) NULL DEFAULT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`useremail` VARCHAR(64) NULL DEFAULT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`usertel` VARCHAR(16) NULL DEFAULT NULL COLLATE 'utf8mb4_0900_ai_ci',
	PRIMARY KEY (`userid`) USING BTREE
)
COLLATE='utf8mb4_0900_ai_ci'
ENGINE=InnoDB
;
