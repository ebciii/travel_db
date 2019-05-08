/* Retrieves GPS latitude and longitude from park table, and concatenates || for copy and paste
to Google Maps < http://maps.google.com/ >  */
SELECT gps_lat || " " || gps_long FROM park
WHERE name LIKE 'Lehigh%' ;