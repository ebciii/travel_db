/* Finds parks not associated with tags
How to use: Ready to execute
*/
SELECT name, park_id, table2tag_id
FROM park 
LEFT JOIN (SELECT * FROM table2tags WHERE table_name = 'park')  
ON park_id = table_id
WHERE table2tag_id IS NULL
ORDER BY park_id;
