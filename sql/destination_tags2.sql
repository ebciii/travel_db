SELECT d.place_id, d.name, t2t.table_name, t.tag_id, t.name, t.definition
FROM table2tags t2t, tags t, destination d
WHERE t2t.table_id = 9
 AND t2t.table_name = 'destination'
 AND t2t.tag_id = t.tag_id
 AND t2t.table_id = d.place_id
 ;