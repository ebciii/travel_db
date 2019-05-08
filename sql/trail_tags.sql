/* Finds tags associated with trail by name
How to use: Replace trail name on second line (which is Susqueh% in this example)
*/
SELECT tr.name, t.name FROM trail tr, tags t, table2tags t2t
WHERE t2t.table_id =  (select tr.trail_id FROM trail WHERE tr.name LIKE 'Susqueh%')
AND t2t.table_name = 'trail'
AND t2t.tag_id = t.tag_id 
;