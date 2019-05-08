/* Checks table_name in table2tags to ensure that they exist in database
*/
SELECT * FROM table2tags 
WHERE table_name NOT IN (SELECT name FROM sqlite_master WHERE type='table');
