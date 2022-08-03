SELECT CONCAT(
'ALTER TABLE ',  table_name, ' CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci;  ', 
'ALTER TABLE ',  table_name, ' CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci;  ')
FROM information_schema.TABLES AS T, information_schema.`COLLATION_CHARACTER_SET_APPLICABILITY` AS C
WHERE C.collation_name = T.table_collation
AND T.table_schema = 'bbdd';
