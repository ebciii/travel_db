/* Finds tags associated with destination by name
How to use: Replace destination name on second line (which is San Juan in this example)
*/
SELECT d.name, t.name FROM destination d, tags t, table2tags t2t
WHERE t2t.table_id =  (select d.place_id FROM destination WHERE d.name LIKE 'San Juan%')
AND t2t.table_name = 'destination'
AND t2t.tag_id = t.tag_id 
;