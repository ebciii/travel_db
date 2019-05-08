/* Finds tags associated with all parks
How to use: Ready to execute
*/
SELECT park_id, park.name, tags.name
FROM park
JOIN 
	(SELECT * FROM table2tags WHERE table_name = 'park') AS park_tags
	ON park_id = table_id
JOIN 
	tags
	ON park_tags.tag_id = tags.tag_id
ORDER BY park_id;