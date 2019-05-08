/* Finds tags associated with park by name
How to use: Replace park name on second line (which is Pine Grove% in this example)
*/
SELECT p.name, t.name FROM park p, tags t, table2tags t2t
WHERE t2t.table_id =  (select p.park_id FROM park WHERE p.name LIKE 'Pine Grove%')
AND t2t.table_name = 'park'
AND t2t.tag_id = t.tag_id 
;