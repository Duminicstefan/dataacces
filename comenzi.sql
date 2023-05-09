CREATE TABLE `MYDB2023`.`produse` (
     `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
      `nume_produs` VARCHAR(100) NOT NULL ,
       `descriere` TEXT NULL , 
       `pret` DECIMAL(7,2) NOT NULL , 
       `stoc` INT NOT NULL DEFAULT '0' , 
       `producator` VARCHAR(250) NOT NULL ,
        `user_at` INT NOT NULL , 
        `data_adaugare` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,
         PRIMARY KEY (`id`)) ENGINE = InnoDB;

         INSERT INTO `produse` (`id`, `nume_produs`, `descriere`, `pret`, `stoc`, `producator`, `user_at`, `data_adaugare`) 
         VALUES (NULL, 'Pix', 'Pix albastru de grosime 0.7', '22.5', '10', 'Big', '1', '2023-05-04 00:00:00');

         --comentariu
         

         CREATE USER 'MYDB2023'@'%' IDENTIFIED VIA mysql_native_password USING '***';
         GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON *.* TO 'MYDB2023'@'%' 
         REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;
