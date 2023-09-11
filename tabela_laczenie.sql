CREATE USER 'mietek'@'%' IDENTIFIED VIA mysql_native_password USING 'test';
GRANT ALL PRIVILEGES ON *.* TO 'mietek'@'%' REQUIRE NONE WITH GRANT OPTION MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

CREATE DATABASE `klasa3Gtc` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE `klasa3Gtc`;

CREATE TABLE `klasa3Gtc`.`klasa3GTc_gr1_osoba` (
    `Id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `Imie` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `Nazwisko` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `data_mod_tabeli` TIMESTAMP NOT NULL,
    `nr_dziennik` INT(2) NOT NULL,
    PRIMARY KEY (`Id`)
)ENGINE = InnoDB CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;

INSERT INTO `klasa3Gtc`.`klasa3GTc_gr1_osoba` VALUES 
(NULL, 'Szymon', 'Halerz', now(), 13),
(NULL, 'Jan', 'Kowalski', now(), 29),
(NULL, 'Mietek', 'Nowak', now(), 20),
(NULL, 'Zenek', 'Łańcuch', now(), 11);

CREATE TABLE `klasa3Gtc`.`klasa3GTc_gr1_miejscowosc` (
    `Id_miejscowosc` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `Id` INT UNSIGNED NOT NULL,
    `Miasto` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `Ulica` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    `data_zameldowania` DATETIME NOT NULL,
    `nr_domu` INT(4) NOT NULL,
    `nr_lokalu` INT(2) NOT NULL,
    PRIMARY KEY (`Id_miejscowosc`),
    FOREIGN KEY (`Id`) REFERENCES klasa3GTc_gr1_osoba(`Id`)
)ENGINE = InnoDB CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;

INSERT INTO `klasa3Gtc`.`klasa3GTc_gr1_miejscowosc` VALUES 
(NULL, 1, 'Jasło', 'Bednarska', '2020-02-22 16:20:21', 1, 7),
(NULL, 4, 'Jasło', 'Rynek', '2020-02-22 16:20:21', 10, 70),
(NULL, 3, 'Sobniów', NULL , '2020-02-22 16:20:21', 200, NULL ),
(NULL, 2, 'Jasło', 'Kochanowskiego', '2020-02-22 16:20:21', 11, 7);

SELECT `klasa3GTc_gr1_osoba`.`Imie`, `klasa3GTc_gr1_osoba`.`Nazwisko`, `klasa3GTc_gr1_miejscowosc`.`Miasto`
FROM `klasa3Gtc`.`klasa3GTc_gr1_osoba`, `klasa3Gtc`.`klasa3GTc_gr1_miejscowosc` 
WHERE `klasa3GTc_gr1_osoba`.`Id`=`klasa3GTc_gr1_miejscowosc`.`Id` AND `klasa3GTc_gr1_miejscowosc`.`Miasto`='Jasło'

SELECT `klasa3GTc_gr1_osoba`.`Imie`, `klasa3GTc_gr1_osoba`.`Nazwisko`, `klasa3GTc_gr1_miejscowosc`.`nr_lokalu`
FROM `klasa3Gtc`.`klasa3GTc_gr1_osoba`, `klasa3Gtc`.`klasa3GTc_gr1_miejscowosc` 
WHERE `klasa3GTc_gr1_osoba`.`Id`=`klasa3GTc_gr1_miejscowosc`.`Id` AND `klasa3GTc_gr1_miejscowosc`.`nr_lokalu`=7
