/* Finds trails in parks using name of park
How to use: Replace park name on second line (which is Fairmount in this example)
*/
SELECT p.name, t.name FROM park p, trail t, trail_park_rel pr
WHERE pr.park_id =  (select p.park_id FROM park WHERE p.name LIKE 'Fairmount%')
AND t.trail_id = pr.trail_id;