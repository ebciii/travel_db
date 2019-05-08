PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "tags" (
	`tag_id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`name`	TEXT NOT NULL,
	`definition`	TEXT
);
INSERT INTO tags VALUES(1,'Vacation','Vacation or trip destinations');
INSERT INTO tags VALUES(2,'Caribbean','Found somewhere in the Caribbean Islands');
INSERT INTO tags VALUES(3,'Pennsylvania','Destinations in Pennsylvania');
INSERT INTO tags VALUES(4,'State Park',NULL);
INSERT INTO tags VALUES(5,'National Historic Site',NULL);
INSERT INTO tags VALUES(6,'National Park',NULL);
INSERT INTO tags VALUES(7,'National Forest',NULL);
INSERT INTO tags VALUES(8,'Nationa Monument',NULL);
INSERT INTO tags VALUES(9,'National Historical Park',NULL);
INSERT INTO tags VALUES(10,'City Park',NULL);
INSERT INTO tags VALUES(11,'Loop Trail',NULL);
INSERT INTO tags VALUES(12,'Point-to-Point Trail',NULL);
INSERT INTO tags VALUES(13,'Ruins','Places, typically, trails leading to interesting ruins.');
INSERT INTO tags VALUES(14,'Long Loop','Multiday loop trails suitable for long backpacking trips');
INSERT INTO tags VALUES(15,'Adventure','Places that have some level of risk or ardor associated with getting there.');
INSERT INTO tags VALUES(16,'State Forest',NULL);
INSERT INTO tags VALUES(17,'National Recreation Area','');
INSERT INTO tags VALUES(18,'Waterfall',NULL);
INSERT INTO tags VALUES(19,'Delaware',NULL);
INSERT INTO tags VALUES(20,'Maryland',NULL);
INSERT INTO tags VALUES(21,'County Park','');
INSERT INTO tags VALUES(22,'Biking','Amenable to bike trips');
INSERT INTO tags VALUES(23,'National Recreation Area','https://en.wikipedia.org/wiki/National_Recreation_Area');
INSERT INTO tags VALUES(24,'Summer','');
INSERT INTO tags VALUES(25,'Philadelphia',NULL);
INSERT INTO tags VALUES(26,'Historical',NULL);
INSERT INTO tags VALUES(27,'Brunch',NULL);
INSERT INTO tags VALUES(28,'Best List','');
INSERT INTO tags VALUES(29,'Winter',NULL);
INSERT INTO tags VALUES(30,'Auroras','Northern or Southern Lights');
INSERT INTO tags VALUES(31,'New Jersey',NULL);
INSERT INTO tags VALUES(32,'New York',NULL);
INSERT INTO tags VALUES(33,'Abandoned Places','Buidings or Structures that are decaying, but cool');
INSERT INTO tags VALUES(34,'Museum',NULL);
INSERT INTO tags VALUES(35,'State Game Land','');
CREATE TABLE IF NOT EXISTS "trail_park_rel" (
	`trail_id`	INTEGER,
	`park_id`	INTEGER,
	FOREIGN KEY(`park_id`) REFERENCES `park`(`park_id`),
	FOREIGN KEY(`trail_id`) REFERENCES `trail`(`trail_id`)
);
INSERT INTO trail_park_rel VALUES(7,2);
INSERT INTO trail_park_rel VALUES(8,3);
INSERT INTO trail_park_rel VALUES(9,3);
INSERT INTO trail_park_rel VALUES(10,4);
INSERT INTO trail_park_rel VALUES(12,8);
INSERT INTO trail_park_rel VALUES(15,10);
INSERT INTO trail_park_rel VALUES(16,10);
INSERT INTO trail_park_rel VALUES(17,12);
INSERT INTO trail_park_rel VALUES(3,13);
INSERT INTO trail_park_rel VALUES(18,16);
INSERT INTO trail_park_rel VALUES(19,17);
INSERT INTO trail_park_rel VALUES(20,17);
INSERT INTO trail_park_rel VALUES(28,21);
INSERT INTO trail_park_rel VALUES(36,3);
INSERT INTO trail_park_rel VALUES(37,32);
INSERT INTO trail_park_rel VALUES(37,33);
INSERT INTO trail_park_rel VALUES(38,33);
INSERT INTO trail_park_rel VALUES(45,13);
INSERT INTO trail_park_rel VALUES(53,8);
CREATE TABLE IF NOT EXISTS "trail" (
	`trail_id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`name`	TEXT NOT NULL UNIQUE,
	`trail_length`	NUMERIC,
	`difficulty`	INTEGER,
	`url`	TEXT,
	`blaze`	TEXT,
	`loop_flag`	INTEGER,
	`map`	TEXT,
	`map_google`	TEXT,
	`alltrails`	TEXT,
	`rating`	INTEGER,
	`comment`	TEXT
);
INSERT INTO trail VALUES(1,'Old Loggers Path',25,3,'http://www.pahikes.com/trails/old-loggers-path','orange',1,'http://www.docs.dcnr.pa.gov/cs/groups/public/documents/document/dcnr_20027896.pdf',NULL,'https://www.alltrails.com/trail/us/pennsylvania/old-loggers-path',NULL,'I have trail map. Ben Barbash says, "yellow dog/Rock run campsite is an all time great...There are also two shelters on the trail which make for some easy nights while out there" Also, Brad Street says, "if you''re arriving on an afternoon hike counter clockwise, to camp near rock run first night. If arriving in morning, hike clockwise. Camp near rock run second night. Assuming that you are parking at Maston parking area and hiking 2 and 1/2 days. 2 "long" days (around 10 miles) and 1 shorter"');
INSERT INTO trail VALUES(2,'Appalachian',2190,5,'http://www.appalachiantrail.org/home/explore-the-trail','white',0,'https://nps.maps.arcgis.com/apps/webappviewer/index.html?id=6298c848ba2a490588b7f6d25453e4e0',NULL,NULL,NULL,NULL);
INSERT INTO trail VALUES(3,'Loyalsock',59,NULL,'https://alpineclubofwilliamsport.com/','yellow with either red LT or old ones with red line',1,'http://www.docs.dcnr.pa.gov/cs/groups/public/documents/document/dcnr_002939.pdf','https://www.google.com/search?client=firefox-b-1-ab&q=loyalsock+trail&npsic=0&rflfq=1&rlha=0&rllag=41466699,-76575368,0&tbm=lcl&ved=0ahUKEwiusYKe1q3aAhXITd8KHZDuCO4QtgMIfw&tbs=lrf:!3sIAE,lf:1,lf_ui:1&rldoc=1','https://www.alltrails.com/trail/us/pennsylvania/loyalsock-trail',NULL,NULL);
INSERT INTO trail VALUES(4,'Switchback Railroad',18,NULL,'https://www.traillink.com/trail/switchback-railroad-trail/',NULL,1,'https://www.traillink.com/trail-maps/switchback-railroad-trail/',NULL,NULL,NULL,'Trail end points: E. Holland at Amidon St. (Summit Hill) and North Ave. nr. Pine Ave. and Center Ave. nr. Packer Hill Rd. (Jim Thorpe)');
INSERT INTO trail VALUES(5,'Stony Valley Rail-Trail',19,NULL,'http://www.stonyvalley.com/rail-trail.html',NULL,1,'http://www.stonyvalley.com/explore.html','https://www.google.com/maps/place/Stony+Valley+RR+Trail+Parking/@40.4060855,-76.8226969,16z/data=!4m5!3m4!1s0x89c8b62cf6182f27:0xb2f3cb78ab603eeb!8m2!3d40.4060855!4d-76.8183142','https://www.alltrails.com/trail/us/pennsylvania/stony-valley-rail-trail',NULL,replace('Links to gameland maps with trail on them are towards bottom of page. \nSaint Anthony''s Wilderness in along this trail. ','\n',char(10)));
INSERT INTO trail VALUES(6,'Delaware & Lehigh',165,NULL,'http://delawareandlehigh.org/',NULL,0,'http://delawareandlehigh.org/map/',NULL,NULL,NULL,NULL);
INSERT INTO trail VALUES(7,'Wissahickon-Yellow',7.9000000000000003552,2,'https://www.fow.org/','yellow',0,'https://www.fow.org/visit-the-park/maps/',NULL,NULL,NULL,'Longest Trail in Wissahickon Park, it goes from Lincoln Drive to Bell''s Mill Rd on the Roxborough side of the creek. ');
INSERT INTO trail VALUES(8,'Tracy Ridge Hiking',34,NULL,'https://www.fs.usda.gov/recarea/allegheny/recarea/?recid=6138',NULL,1,'https://www.fs.usda.gov/Internet/FSE_DOCUMENTS/stelprdb5052731.pdf',NULL,NULL,NULL,'Not as scenic as Morrison Trail');
INSERT INTO trail VALUES(9,'Morrison Hiking Trail',10.80000000000000071,NULL,'https://www.fs.usda.gov/recarea/allegheny/recarea/?recid=6094',NULL,1,'https://www.fs.usda.gov/Internet/FSE_DOCUMENTS/stelprdb5052727.pdf',NULL,'https://www.alltrails.com/trail/us/pennsylvania/morrison-trail',NULL,'Nicer than Tracy Ridge');
INSERT INTO trail VALUES(10,'Lehigh Gorge',26,NULL,'http://www.dcnr.pa.gov/StateParks/FindAPark/LehighGorgeStatePark/Pages/default.aspx',NULL,0,'http://www.docs.dcnr.pa.gov/cs/groups/public/documents/document/dcnr_003769.pdf','https://www.google.com/maps/place/Lehigh+Gorge+Trail,+Pennsylvania/data=!4m2!3m1!1s0x89c5b2a1fdc77673:0xe2206dec5fa8f66?sa=X&ved=0ahUKEwiTle-x2qPaAhVxkeAKHaz3D-MQ8gEIKDAA','https://www.alltrails.com/parks/us/pennsylvania/lehigh-gorge-state-park',NULL,'It is part of the Delaware & Lehigh Trail (id = 6).');
INSERT INTO trail VALUES(11,'Yellow Springs Loop Trail',8,4,'https://www.trails.com/tcatalog_trail.aspx?trailid=HGN217-023',NULL,1,NULL,'https://www.google.com/maps/place/40%C2%B030''09.4%22N+76%C2%B039''14.8%22W/@40.5026092,-76.6716207,14z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d40.5026!4d-76.6541?hl=en',NULL,NULL,'It will lead you to the ruins of the former Yellow Springs Village as well as an old excavator. You''ll know you''ve arrived at the abandoned village when you see the sign announcing "Yellow Springs - Old Coal Mining Village." State Game Lands #211');
INSERT INTO trail VALUES(12,'Susquehannock Trail System',85,4,'http://www.stc-hike.org/','orange',1,'http://www.stc-hike.org/Trailheads.aspx','https://www.google.com/maps/place/Susquehannock+State+Forest/@41.513262,-77.6765184,15z/data=!4m5!3m4!1s0x0:0x6ae875e1e3a2d194!8m2!3d41.513262!4d-77.6765184',NULL,NULL,'It in the Susquehannock State Forest in Potter and Clinton counties in north-central Pennsylvania in the United States. Favorite on Backpacking and Hiking PA FB page');
INSERT INTO trail VALUES(13,'Horseshoe Trail',140,3,'http://www.hstrail.org/',NULL,0,'https://www.nps.gov/vafo/planyourvisit/upload/2014-VAFO-Trail-Map-Trails-only.PDF','https://www.google.com/maps/place/40%C2%B006''00.8%22N+75%C2%B027''41.2%22W/@40.1002395,-75.4702252,15z/data=!3m1!4b1!4m13!1m6!3m5!1s0x0:0x6eb82d50e6dad1fb!2sValley+Forge+National+Historical+Park!8m2!3d40.1017509!4d-75.4469224!3m5!1s0x0:0x0!7e2!8m2!3d40.1002245!4d-75.4614492',NULL,NULL,'Starts at Valley Forge National Park and ends at Appalachian Trail. ');
INSERT INTO trail VALUES(14,'Valley Creek Trail',1.5,1,'https://www.nps.gov/vafo/planyourvisit/trails.htm',NULL,0,'https://www.nps.gov/vafo/planyourvisit/upload/2014-VAFO-Trail-Map-Trails-only.PDF','https://www.google.com/maps/place/40%C2%B006''00.8%22N+75%C2%B027''41.2%22W/@40.1002395,-75.4702252,15z/data=!3m1!4b1!4m13!1m6!3m5!1s0x0:0x6eb82d50e6dad1fb!2sValley+Forge+National+Historical+Park!8m2!3d40.1017509!4d-75.4469224!3m5!1s0x0:0x0!7e2!8m2!3d40.1002245!4d-75.4614492',NULL,2,'Zack liked this trail when his was little. This is where he sang the mushy mushroom song capture on video. ');
INSERT INTO trail VALUES(15,'Sunset Rocks Trail',7.2999999999999998223,5,'https://www.visitcumberlandvalley.com/listing/sunset-rocks-trail/1163/',NULL,1,'https://res.cloudinary.com/simpleview/image/upload/v1466638247/clients/cumberland/sunset_rocks_map_c8841e2f-0179-9687-3b083ec1835344d2.pdf','https://www.google.com/maps/place/Sunset+Rocks+Trailhead/@40.0388508,-77.3274425,17z/data=!3m1!4b1!4m5!3m4!1s0x89c90449de0090f7:0xb79af96a97f9ae5f!8m2!3d40.0388467!4d-77.3252485','https://www.alltrails.com/trail/us/pennsylvania/sunset-rocks-trail',NULL,'Trail will lead you to the spectacular ruins of a POW camp during World War II. ');
INSERT INTO trail VALUES(16,'Flat Rock Trail System','',NULL,'http://www.docs.dcnr.pa.gov/cs/groups/public/documents/document/dcnr_20031384.pdf',NULL,NULL,'http://www.docs.dcnr.pa.gov/cs/groups/public/documents/document/dcnr_20031384.pdf',NULL,NULL,NULL,NULL);
INSERT INTO trail VALUES(17,'Tumbling Waters Trail',3,4,'https://www.nps.gov/dewa/planyourvisit/tumbling-waters-trail.htm','orange',1,'http://peec.org/pdfs/2011-tumblingwaterstrailguide.pdf','https://www.google.com/maps/place/41%C2%B010''16.6%22N+74%C2%B054''44.0%22W/@41.171273,-74.91221,16z/data=!4m5!3m4!1s0x0:0x0!8m2!3d41.171273!4d-74.91221?hl=en','https://www.alltrails.com/trail/us/pennsylvania/tumbling-waters-pike-county',NULL,'Trail will take you past spectacular scenery, including ruins, ponds, a waterfall, and a pine forest.');
INSERT INTO trail VALUES(18,'Kelly''s Run Loop Trail',3.7999999999999998223,NULL,'https://www.lancasterconservancy.org/preserve/kellys-run-pinnacle/',NULL,1,'https://www.lancasterconservancy.org/wp-content/uploads/2013/07/Kellys-Run-Pinnacle-1.pdf','https://www.google.com/maps/place/Kelly''s+Run+Nature+Preserve/@39.8407981,-76.3173044,15z/data=!4m5!3m4!1s0x0:0xbc4079e3ef5ed495!8m2!3d39.8407981!4d-76.3173044','https://www.alltrails.com/trail/us/pennsylvania/kellys-run-loop-trail',NULL,NULL);
INSERT INTO trail VALUES(19,'Elk Trail',15.80000000000000071,1,'http://www.docs.dcnr.pa.gov/cs/groups/public/documents/document/dcnr_003251.pdf','yellow',0,'http://www.docs.dcnr.pa.gov/cs/groups/public/documents/document/dcnr_003251.pdf','https://www.google.com/maps/dir/407+Wigard+Ave,+Philadelphia,+PA+19128,+USA/Elk+State+Forest,+Benezette+Township,+PA+15868/@40.7003408,-77.9438492,8z/data=!3m1!4b1!4m14!4m13!1m5!1m1!1s0x89c6b8d4002c73d1:0x2d5cbe20e70dfe61!2m2!1d-75.242097!2d40.044923!1m5!1m1!1s0x89cdcaa7a3871b71:0xee7e0e2c75614d8f!2m2!1d-78.2914009!2d41.3333946!3e0','https://www.alltrails.com/trail/us/pennsylvania/elk-trail',NULL,'Start this 16-mile backpack from the trailhead on PA 555 and tackle some of the country’s newest elk habitat. Go in October for bugling.');
INSERT INTO trail VALUES(20,'Quehanna Trail',73,3,'https://www.kta-hike.org/quehanna-trail.html',NULL,1,'http://www.dcnr.pa.gov/StateForests/FindAForest/Elk/Pages/Maps.aspx','https://www.google.com/maps/place/Quehanna+Wild+Area/@41.2742257,-78.274187,14z/data=!3m1!4b1!4m5!3m4!1s0x89cc35a8db83a64f:0x80b28b5af944206b!8m2!3d41.2742275!4d-78.2566774','https://www.alltrails.com/trail/us/pennsylvania/quehanna-trail',NULL,'Map is split into east and west sections, so the map URL goes to a map listing. Favorite on Backpacking and Hiking PA FB page. 20 mile loop can be done by using West Cross Connector when starting from Parker Dam. ');
INSERT INTO trail VALUES(21,'French Creek Trail',2.7999999999999998223,1,'http://www.eastpikeland.org/index.asp?Type=B_BASIC&SEC=%7B26794F70-D1CC-4B2E-9580-3F01B6E2DE87%7D','',0,'http://www.eastpikeland.org/vertical/Sites/%7B3F7567AD-BA35-41A6-9117-FD7892D5A0DA%7D/uploads/FCT_map_mini-2016.pdf','http://www.eastpikeland.org/index.asp?Type=B_BASIC&SEC=%7B26794F70-D1CC-4B2E-9580-3F01B6E2DE87%7D','https://www.alltrails.com/explore/trail/us/pennsylvania/french-creek-trail',NULL,NULL);
INSERT INTO trail VALUES(22,'Pennypack Trail - Montco',5.4000000000000003552,1,'https://www.montcopa.org/922/Pennypack-Trail',NULL,0,'https://www.montcopa.org/DocumentCenter/View/16976',NULL,NULL,NULL,NULL);
INSERT INTO trail VALUES(23,'Pennypack Trail -',10.699999999999999289,1,'http://pecpa.org/wp-content/uploads/10-Trail-Itineraroes-Brochure.pdf',NULL,0,'http://pecpa.org/wp-content/uploads/10-Trail-Itineraroes-Brochure.pdf','https://www.google.com/search?client=firefox-b-1-ab&q=Pennypack+Trail&npsic=0&rflfq=1&rlha=0&rllag=40085474,-75051333,4347&tbm=lcl&ved=0ahUKEwj9zojQ3LfaAhUQMt8KHdhiBVIQtgMIPA&tbs=lrf:!2m4!1e17!4m2!17m1!1e2!2m1!1e2!3sIAE,lf:1,lf_ui:1&rldoc=1#rlfi=hd:;si:;mv:!1m3!1d115036.07068462444!2d-75.11269000000001!3d40.0518721!2m3!1f0!2f0!3f0!3m2!1i136!2i226!4f13.1;tbs:lrf:!2m1!1e2!2m4!1e17!4m2!17m1!1e2!3sIAE,lf:1,lf_ui:1',NULL,NULL,'Philly part of this trail in Pennypack park from Delaware River to Montco section.');
INSERT INTO trail VALUES(24,'Fern Rock Trail',2.2999999999999998223,1,'http://www.docs.dcnr.pa.gov/cs/groups/public/documents/document/dcnr_002943.pdf',NULL,1,'http://www.docs.dcnr.pa.gov/cs/groups/public/documents/document/dcnr_002943.pdf',NULL,'http://www.docs.dcnr.pa.gov/cs/groups/public/documents/document/dcnr_002943.pdf',NULL,NULL);
INSERT INTO trail VALUES(25,'Green Ribbon Trail',12.599999999999999644,NULL,'http://www.wvwa.org/greenribbontrail/','green',0,'http://www.wvwa.org/greenribbontrail/','https://maps.google.com/maps/ms?hl=en&ie=UTF8&msa=0&msid=208160228692492834309.000447f32cfa637a25f70&t=m&ll=40.190217,-75.263729&spn=0.050617,0.094585&source=embed',NULL,NULL,'Google maps are broken into north and south; see main url for links to both.');
INSERT INTO trail VALUES(26,'Flat Rock Trail',1.1000000000000000888,'','http://www.dcnr.pa.gov/StateParks/FindAPark/LinnRunStatePark/Pages/Hiking.aspx',NULL,0,'http://www.docs.dcnr.pa.gov/cs/groups/public/documents/document/dcnr_003750.pdf','https://www.google.com/maps/place/Linn+Run+State+Park/@40.1709466,-79.2403881,16z/data=!4m5!3m4!1s0x0:0x2710a8b537513aa7!8m2!3d40.1734675!4d-79.2360322','https://www.alltrails.com/trail/us/pennsylvania/flat-rock-trail--2',NULL,NULL);
INSERT INTO trail VALUES(27,'Glen Onoko Trail',0.75,4,'https://uncoveringpa.com/hiking-glen-onoko','none',0,NULL,NULL,NULL,NULL,NULL);
INSERT INTO trail VALUES(28,'Shades of Death Trail',2.2000000000000001776,'',NULL,NULL,0,'',NULL,'https://www.alltrails.com/trail/us/pennsylvania/shades-of-death-trail',NULL,NULL);
INSERT INTO trail VALUES(29,'Thousand Steps',3.3999999999999999111,4,NULL,NULL,0,NULL,'https://www.google.com/maps/place/Thousand+Steps/@40.39142,-77.9133518,15z/data=!4m5!3m4!1s0x0:0x992d38b3dd5dba2f!8m2!3d40.39142!4d-77.9133518','https://www.alltrails.com/trail/us/pennsylvania/thousand-steps',NULL,'Steep climb at 3.5 hrs out.');
INSERT INTO trail VALUES(30,'Conestoga Trail',14.30000000000000071,3,'https://www.lancasterhikingclub.com/trail-guide','orange',0,'https://www.lancasterhikingclub.com/trail-guide',NULL,'https://www.alltrails.com/trail/us/pennsylvania/conestoga-trail-holtwood-to-pequea',NULL,'Backpacking FB advice: park at pequea or southern pinnacle');
INSERT INTO trail VALUES(31,'Kelly''s Run - Pinnacle Overlook',7,NULL,'http://www.midatlantichikes.com/id96.html',NULL,1,NULL,'https://www.google.com/maps?f=q&hl=en&q=39.8401,-76.3193&layer=&ie=UTF8&z=12&ll=39.850457,-76.319275&spn=0.114392,0.344009&om=1&iwloc=addr',NULL,NULL,'GPS: 39.974802,-76.3383224');
INSERT INTO trail VALUES(32,'West Rim Trail',30.499999999999999999,3,'http://www.pinecrk.com/westrimtrail/westrimtrail.html','orange',0,'http://www.docs.dcnr.pa.gov/cs/groups/public/documents/document/dcnr_20029280.pdf',NULL,'https://www.alltrails.com/trail/us/pennsylvania/west-rim-trail',NULL,'Map in 2 parts, and this is southern: < http://www.docs.dcnr.pa.gov/cs/groups/public/documents/document/dcnr_002046.pdf >/ Some sites say it is  26.5 miles in length.');
INSERT INTO trail VALUES(33,'Pine Creek Trail',62,1,'https://www.traillink.com/trail/pine-creek-rail-trail/','',0,'https://visitpottertioga.com/wp-content/uploads/2017/04/pine-creek-rail-trail-map.pdf','','https://www.alltrails.com/trail/us/pennsylvania/pine-creek-trail--2',NULL,'The DCNR maps for West Rim Trail also include a portion of this trail.');
INSERT INTO trail VALUES(34,'Mason-Dixon Trail',199,NULL,'http://masondixontrail.wixsite.com/mdts','blue, sky ',0,NULL,NULL,NULL,NULL,'GPS coordinates: 39.53899, -75.6673');
INSERT INTO trail VALUES(35,'Conewago Recreation Trail',5,1,'https://www.co.lancaster.pa.us/268/Conewago-Recreation-Trail',NULL,0,'https://www.co.lancaster.pa.us/DocumentCenter/View/454','https://www.co.lancaster.pa.us/DocumentCenter/View/454',NULL,NULL,'A Rail Trail.');
INSERT INTO trail VALUES(36,'Minister Creek Hiking Trail',6.5999999999999996447,NULL,'https://www.fs.usda.gov/recarea/allegheny/recreation/recarea?recid=6104&actid=29','gray diamonds',1,'See main web page',NULL,'https://www.alltrails.com/trail/us/pennsylvania/minister-creek-trail',NULL,'Map on main web page.');
INSERT INTO trail VALUES(37,'Rausch Gap Loop',10.599999999999999644,'','http://www.midatlantichikes.com/rauschgap.htm','',1,'http://mrhyker.tripod.com/maps/sgl211-rauschgap.jpg','https://www.google.com/maps/place/40%C2%B031''32.9%22N+76%C2%B032''18.6%22W/@40.52114,-76.550031,15z/data=!4m5!3m4!1s0x0:0x0!8m2!3d40.5258!4d-76.5385?hl=en','https://www.alltrails.com/explore/recording/rausch-gap-hike',NULL,'2 hours from home, 100 miles.');
INSERT INTO trail VALUES(38,'AT-Old Horse-Shoe Trail Loop',10,3,'http://www.midatlantichikes.com/at-horseshoe.htm',NULL,NULL,'http://mrhyker.tripod.com/maps/sgl211-at-horseshoe.jpg','https://www.google.com/maps?f=q&source=s_q&hl=en&geocode=&q=40.4522,-76.7763&aq=&sll=40.492793,-76.675882&sspn=0.066187,0.181103&ie=UTF8&z=16',NULL,NULL,'2 hours from home, 100 miles');
INSERT INTO trail VALUES(39,'Tank Hollow Trail',3.5,1,'https://www.theoutbound.com/pennsylvania/hiking/hike-to-tank-hollow-vista',NULL,NULL,NULL,'https://www.google.com/search?q=Tank+Hollow+Vista&ie=utf-8&oe=utf-8&client=firefox-b-1-ab','https://www.alltrails.com/trail/us/pennsylvania/tank-hollow-trail',NULL,NULL);
INSERT INTO trail VALUES(40,'Barbour Rock Trail',0.69999999999999995559,1,'https://uncoveringpa.com/hiking-the-barbour-rock-trail',NULL,1,'http://www.docs.dcnr.pa.gov/cs/groups/public/documents/document/dcnr_20029288.pdf','https://www.google.com/maps/place/Barbour+Rock+Trail,+Shippen+Township,+PA+16901/@41.721497,-77.4871409,13z/data=!4m5!3m4!1s0x89ce24bea2042b55:0x9feb633f44514b96!8m2!3d41.721493!4d-77.4521166','https://www.alltrails.com/trail/us/pennsylvania/barbour-rock-west-rim-trail',NULL,'The best, easily-accessible spot from which to view the PA Grand Canyon is on the Barbour Rock Trail. NOTE: Need to link to Colton Point State Park when that park is entered into the database. ');
INSERT INTO trail VALUES(41,'Hawk Rock via Appalachian Trail',1.6000000000000000888,3,'http://duncannonatc.org/hawk-rock-report/','',0,NULL,'https://www.google.com/maps/place/Appalachian+Trail+-+Hawk+Rock+Overlook/@40.3758069,-77.0409467,15z/data=!4m5!3m4!1s0x0:0x3b5dae417575b51f!8m2!3d40.3758069!4d-77.0409467','https://www.alltrails.com/trail/us/pennsylvania/hawk-rock-via-appalachian-trail',NULL,'In a recommendation for trails near Harrisburg.');
INSERT INTO trail VALUES(42,'Mount Minsi via Appalachian Trail',5.2999999999999998223,4,'https://www.njhiking.com/best-hikes-mt-minsi/',NULL,1,'https://www.google.com/maps/place/Mt.+Minsi+-+Appalachian+Trail+Parking/@40.9791242,-75.1748721,13z/data=!4m5!3m4!1s0x89c487c4d0a96745:0x7006ffd7aed196c4!8m2!3d40.9798378!4d-75.1421506','https://www.google.com/maps/place/Mt.+Minsi+-+Appalachian+Trail+Parking/@40.9791242,-75.1748721,13z/data=!4m5!3m4!1s0x89c487c4d0a96745:0x7006ffd7aed196c4!8m2!3d40.9798378!4d-75.1421506','https://www.alltrails.com/trail/us/pennsylvania/mount-minsi-via-appalachian-trail',NULL,'Sttep and rocky, but results in a great view. ');
INSERT INTO trail VALUES(43,'Golden Eagle Trail',10.599999999999999644,3,'http://www.docs.dcnr.pa.gov/forestry/recreation/hiking/stateforesttrails/goldeneagletrail/index.htm','',1,'http://www.docs.dcnr.pa.gov/cs/groups/public/documents/document/dcnr_002041.pdf','http://www.docs.dcnr.pa.gov/cs/groups/public/documents/document/dcnr_002041.pdf','https://www.alltrails.com/trail/us/pennsylvania/golden-eagle-trail','','On FB hiking group discussion, someone state it was the best day hike in PA. ');
INSERT INTO trail VALUES(44,'Pacific Coast Trail',2650,'','https://www.pcta.org/',NULL,0,NULL,NULL,NULL,NULL,NULL);
INSERT INTO trail VALUES(45,'Cold Run Extended Loop Trail',4.7000000000000001776,3,'https://endlessmountains.wordpress.com/2018/01/09/cold-run-trail-worlds-end-state-park/','yellow',1,NULL,NULL,'https://www.alltrails.com/trail/us/pennsylvania/cold-run-extended-loop-trail',NULL,NULL);
INSERT INTO trail VALUES(46,'Pinchot Trail System',23,3,'https://www.kta-hike.org/pinchot-trail.html','orange',1,'http://www.docs.dcnr.pa.gov/cs/groups/public/documents/document/dcnr_002043.pdf','https://www.google.com/maps/place/Spruce+Swamp+Natural+Area,+Thornhurst+Township,+PA+18424/@41.2009396,-75.7591427,11z/data=!4m5!3m4!1s0x89c4e49d3e139737:0x63d2f14c1d7b5d72!8m2!3d41.2008849!4d-75.6193539','https://www.alltrails.com/trail/us/pennsylvania/pinchot-trail-full',NULL,'New maps, because parts were rerouted. For some details: https://endlessmountains.wordpress.com/2017/10/26/hiking-the-new-re-routes-of-the-pinchot-trail-south-loop/ . Also, here: https://www.facebook.com/165829503626553/photos/a.671747366368095/934606313415531/?type=3&theater');
INSERT INTO trail VALUES(47,'Sandy Bottom Vista-SGL 134',0.75,'','https://endlessmountains.wordpress.com/2018/10/24/sandy-bottom-vista-sgl-134/?fbclid=IwAR2uPK2hLF2mNJWdjSxkHTWhaolASFByTUvPllATwogquuqfK-G83FKOqrA',NULL,NULL,NULL,NULL,NULL,NULL,'No real trail, but explicit instructions in the link.');
INSERT INTO trail VALUES(48,'Treweryn Farm Trail',2.1000000000000000888,1,'https://www.facebook.com/pages/Treweryn-Farms-Trail/112970622202742',NULL,0,'https://www.lowergwynedd.org/media/5181/Treweryn-Farm-Trail.pdf','https://www.google.com/maps/place/Treweryn+Farm+Trail/@40.1933267,-75.239725,17z/data=!4m13!1m7!3m6!1s0x89c6a4364d80dd6d:0xb832f0c8e923116c!2s105+Potters+Way,+North+Wales,+PA+19454!3b1!8m2!3d40.2279004!4d-75.2097541!3m4!1s0x89c6a4984fda9bd1:0xc1a3762a84fff2de!8m2!3d40.1917279!4d-75.2383272','https://www.alltrails.com/trail/us/pennsylvania/treweryn-farm-trail',NULL,'Saw this driving back from Fox Loop Trail, and looked it up. ');
INSERT INTO trail VALUES(49,'Black Forest Trail',42,'','http://www.pahikes.com/trails/black-forest-trail',NULL,1,'http://www.docs.dcnr.pa.gov/cs/groups/public/documents/document/dcnr_20032741.pdf',NULL,'https://www.alltrails.com/trail/us/pennsylvania/black-forest-north-loop-trail',NULL,'Favorite on Backpacking and Hiking PA FB page');
INSERT INTO trail VALUES(50,'PA Wilds Trail',171,'','https://endlessmountains.wordpress.com/2018/11/20/pa-wilds-trail/',NULL,0,'https://endlessmountains.wordpress.com/2018/11/20/pa-wilds-trail/','',NULL,NULL,'Not a single trail, but interconnected trails. See web site for components');
INSERT INTO trail VALUES(51,'Buttermilk Falls Trail',1.3999999999999999111,7,'https://www.nps.gov/dewa/planyourvisit/buttermilk-falls-trail.htm',NULL,0,'https://www.nps.gov/dewa/planyourvisit/maps.htm','https://www.google.com/maps/place/41%C2%B008''13.4%22N+74%C2%B053''20.7%22W/@41.137037,-74.889078,15z/data=!4m5!3m4!1s0x0:0x0!8m2!3d41.137042!4d-74.889084?hl=en',NULL,NULL,'Beautiful multi-step water fall');
INSERT INTO trail VALUES(52,'Trails in Delaware Water Gap','','','https://www.nps.gov/dewa/planyourvisit/trails.htm',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO trail VALUES(53,'Fairground Falls',1,'','https://endlessmountains.wordpress.com/2019/01/08/fairground-falls-loyalsock-state-forest/','off-trail route',0,NULL,'https://www.google.com/maps/place/41%C2%B029''13.8%22N+76%C2%B035''17.1%22W/@41.487172,-76.590274,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d41.487172!4d-76.58808',NULL,NULL,'New falls on the Endless Mountain blog. Simple map on the blog. Google map to the trailhead.');
INSERT INTO trail VALUES(54,'Standing Stone Trail',80,'','https://www.standingstonetrail.org/',NULL,0,'https://www.standingstonetrail.org/lessons-and-guides',NULL,'https://www.alltrails.com/trail/us/pennsylvania/standing-stone-trail--2',NULL,'There are several maps on Alltrails, so look before you go. ');
INSERT INTO trail VALUES(55,'North Pocono Trail System',7,NULL,'http://www.docs.dcnr.pa.gov/cs/groups/public/documents/document/dcnr_20033796.pdf',NULL,1,'http://www.docs.dcnr.pa.gov/cs/groups/public/documents/document/dcnr_20033796.pdf',NULL,NULL,NULL,NULL);
INSERT INTO trail VALUES(56,'Ketchum Run Gorge Loop-Loyalsock State Forest',7,'','https://endlessmountains.wordpress.com/2019/03/14/ketchum-run-gorge-loop-loyalsock-state-forest/',NULL,1,'','https://www.google.com/maps/place/41%C2%B026''16.5%22N+76%C2%B036''28.8%22W/@41.437902,-76.607993,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d41.437902!4d-76.607993','https://www.alltrails.com/trail/us/pennsylvania/ketchum-run-gorge',NULL,NULL);
INSERT INTO trail VALUES(57,'Red Brook Gorge Loop-SGL 57',5.5,'','https://endlessmountains.wordpress.com/2019/03/08/red-brook-gorge-loop-sgl-57/','none',1,'https://drive.google.com/file/d/18XCyYAVgkjwNPpte10GxqGkNH2GrHA2I/view','https://www.google.com/maps/place/41%C2%B028''00.6%22N+76%C2%B009''42.3%22W/@41.4668373,-76.163944,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d41.466841!4d-76.161737','N/A','About 50 mins drive from Camp Elk Tannery on opposite side of Ricketts Glen',NULL);
CREATE TABLE IF NOT EXISTS "park" (
	`park_id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`name`	TEXT NOT NULL UNIQUE,
	`address`	TEXT,
	`city`	TEXT,
	`state`	TEXT,
	`zip_code`	INTEGER,
	`phone`	TEXT,
	`url`	TEXT,
	`map_url`	TEXT,
	`map_google`	TEXT,
	`alltrails`	TEXT,
	`gps_lat`	NUMERIC,
	`gps_long`	NUMERIC,
	`police_1_id`	INTEGER,
	`police_2_id`	INTEGER,
	`medical_1_id`	INTEGER,
	`medical_2_id`	INTEGER,
	`drive_time`	NUMERIC,
	`drive_miles`	INTEGER,
	`rating`	INTEGER,
	`comment`	TEXT
);
INSERT INTO park VALUES(1,'French Creek','843 Park Rd','Elverson','PA',19520,'610-582-9680','http://www.dcnr.pa.gov/StateParks/FindAPark/FrenchCreekStatePark/Pages/default.aspx','http://www.dcnr.pa.gov/StateParks/FindAPark/FrenchCreekStatePark/Pages/Maps.aspx','https://www.google.com/maps/place/French+Creek+State+Park/@40.198383,-75.7940178,17z/data=!3m1!4b1!4m5!3m4!1s0x89c663171f5b8949:0x7ee5dd07e455886c!8m2!3d40.1983789!4d-75.7918238',NULL,40.198399999999999466,-75.791799999999994951,911,NULL,911,'Reading Hospital',1,47,3,'Zack and I had our first campout here with PIC in a Group Camping site. It was also the fIrst state park that Zack and I used extensively when he was growing up. Favorite places included Miller''s Point and Hopewell Lake. ');
INSERT INTO park VALUES(2,'Fairmount-Wissahickon','','Philadelphia','PA',19128,'215-247-0417','https://www.fow.org/','https://www.fow.org/visit-the-park/maps/','https://www.google.com/maps/d/u/0/viewer?mid=13bnd0IRNwzTpI7VFPASNSWXC5yk&ll=40.04902385438254%2C-75.2114775&z=12',NULL,NULL,NULL,911,NULL,911,'Roxborough Hospital',0.080000000000000001665,1,5,'');
INSERT INTO park VALUES(3,'Allegheny National Forest','4 Farm Colony Drive','Warren','PA',16235,'814-723-5150','https://www.fs.usda.gov/main/allegheny/home','https://www.fs.usda.gov/detailfull/allegheny/maps-pubs/?cid=FSMRS_073013&width=full','https://www.google.com/maps/place/Allegheny+National+Forest/@41.6487867,-79.2863031,10z/data=!4m5!3m4!1s0x89cd23ea28582a9b:0xf07b8e42353dcfd3!8m2!3d41.6487827!4d-79.0061464',NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,300,NULL,NULL);
INSERT INTO park VALUES(4,'Lehigh Gorge - Rockport Access','See GPS','Rockport','PA',NULL,'570-443-0400','http://www.dcnr.pa.gov/StateParks/FindAPark/LehighGorgeStatePark/Pages/default.aspx','http://www.docs.dcnr.pa.gov/cs/groups/public/documents/document/dcnr_003766.pdf','https://www.google.com/maps/place/Rockport,+Lehigh+Township,+PA+18255/data=!4m2!3m1!1s0x89c5ab9d1e0e97d7:0xd51c13164ae0c7f?sa=X&ved=0ahUKEwik4bKriaPaAhVSylMKHbtjCRMQ8gEIiAEwCg',NULL,40.966700000000002999,-75.755099999999998771,NULL,NULL,'Lehigh Valley Hospital-Hazleton',NULL,1.6999999999999999555,94,NULL,'Rockport is one of 3 entrances to the park. It is administered from nearby Hickory Run State Park.');
INSERT INTO park VALUES(5,'Hopewell Furnace','2 Mark Bird Lane ','Elverson','PA',19520,'610-582-8773','https://www.nps.gov/hofu/index.htm','https://www.nps.gov/hofu/planyourvisit/maps.htm','https://www.google.com/maps?ll=40.198611,-75.775556&q=40.198611,-75.775556&hl=en&t=m&z=14',NULL,40.20689999999999742,-75.77349999999999852,911,NULL,911,NULL,1,43,3,'Located in southeastern Berks County, near Elverson, Pennsylvania, is an example of an American 19th century rural "iron plantation". The buildings include a blast furnace, and auxiliary structures.');
INSERT INTO park VALUES(6,'Dead Man''s Hollow Conservation Area','Sceneridge Road, McKeesport, PA 15133','McKeesport','PA',15133,'412-741-2750','https://alleghenylandtrust.org/green-space/dead-mans-hollow/','https://alleghenylandtrust.org/wp-content/uploads/2017/05/2017-DMH-Trial-Map-UPDATES.jpg','https://www.google.com/maps/place/Dead+Man''s+Hollow+Conservation+Area/@40.3207147,-79.859266,17z/data=!3m1!4b1!4m5!3m4!1s0x8834e5ba0087f313:0x1cce73ddc3e0a78e!8m2!3d40.3133509!4d-79.84508',NULL,40.313350900000003208,-79.845079999999995835,NULL,NULL,NULL,NULL,5.0999999999999996447,300,NULL,'Maintained by Allegheny Land Trust. Several ruins on the trails. ');
INSERT INTO park VALUES(7,'State Game Lands 211','','Halifax','PA',17032,'717-787-4250','https://www.alltrails.com/parks/us/pennsylvania/state-game-lands-number-211','http://www.pgc.pa.gov/HuntTrap/StateGameLands/Documents/SGL%20Maps/SGL__211.pdf','https://www.google.com/maps/place/State+Game+Lands+No+211/@40.4744766,-76.6528225,15z/data=!4m2!3m1!1s0x0:0x17d00464251ccd60?sa=X&ved=0ahUKEwjok8OhvqjaAhUrrlkKHXWmDw0Q_BIIlwEwCg',NULL,40.474476600000002688,-76.652822499999999196,NULL,NULL,NULL,NULL,2,96,NULL,NULL);
INSERT INTO park VALUES(8,'Loyalsock State Forest','6735 Route 220','Dushore, PA 18614','PA',18614,'570-946-4049','http://www.dcnr.pa.gov/StateForests/FindAForest/Loyalsock/Pages/default.aspx','http://www.dcnr.pa.gov/StateForests/FindAForest/Loyalsock/Pages/Maps.aspx','http://www.dcnr.pa.gov/StateForests/FindAForest/Loyalsock/Pages/Maps.aspx','https://www.alltrails.com/parks/us/pennsylvania/loyalsock-state-forest',NULL,NULL,NULL,NULL,NULL,NULL,3.2999999999999998223,170,NULL,'Address is for Loyalsock District Office. See destination db, place_id 68 for a link about things to do here.');
INSERT INTO park VALUES(9,'Valley Forge','1400 N Outer Line Dr.','King of Prussia','PA',19406,'610-783-1000','https://www.nps.gov/vafo/index.htm',NULL,'http://www.hstrail.org/',NULL,NULL,NULL,911,NULL,911,NULL,0.5,16,NULL,NULL);
INSERT INTO park VALUES(10,'Michaux','10099 Lincoln Way East','Fayetteville','PA',17222,'717-352-2211','http://www.dcnr.pa.gov/StateForests/FindAForest/Michaux/Pages/default.aspx','http://www.dcnr.pa.gov/StateForests/FindAForest/Michaux/Pages/Maps.aspx','https://www.google.com/maps/place/Michaux+State+Forest/@39.9972172,-77.3670101,15z/data=!4m2!3m1!1s0x0:0x9d24777ad1cfd151?sa=X&ved=0ahUKEwj4477p_araAhXo4IMKHUKNBAsQ_BIIpQEwDg','https://www.alltrails.com/parks/us/maryland/michaux-state-forest',NULL,NULL,NULL,NULL,NULL,NULL,2.2999999999999998223,142,NULL,'Address is District Office.');
INSERT INTO park VALUES(11,'Pine Grove Furnace','1100 Pine Grove Road','Gardners','PA',17324,'717-486-7174','http://www.dcnr.pa.gov/StateParks/FindAPark/PineGroveFurnaceStatePark/Pages/default.aspx','http://www.dcnr.pa.gov/StateParks/FindAPark/PineGroveFurnaceStatePark/Pages/Maps.aspx','https://www.google.com/maps/place/Pine+Grove+Furnace+State+Park/@40.0327304,-77.2932641,15z/data=!4m2!3m1!1s0x0:0xff06e8ebff6f3fdb?sa=X&ved=0ahUKEwjJl9rtgKvaAhXo3YMKHWwmDrUQ_BIIxQEwCg','https://www.alltrails.com/parks/us/pennsylvania/pine-grove-furnace-state-park',40.031111000000002774,-77.306667000000004463,911,NULL,911,'UPMC Pinnacle Carlisle',2.2999999999999998223,130,NULL,'This 696-acre park features Laurel Lake, Fuller Lake, hiking, biking & the Appalachian Trail Museum. Park is surrounded by Michaux State Forest. Recommended Visits: Pole Steeple Vista at sunset, Sunset Rocks, Tumbling Run, and the AT Museum.');
INSERT INTO park VALUES(12,'Delaware Water Gap','1978 River Road ','Bushkill','PA',18324,'570-426-2452','https://www.nps.gov/dewa/index.htm','https://www.nps.gov/dewa/planyourvisit/maps.htm','https://www.google.com/maps/place/Delaware+Water+Gap+National+Recreation+Area/@41.1043946,-74.9442586,15z/data=!4m2!3m1!1s0x0:0xfd39a58f82825bf9?sa=X&ved=0ahUKEwiRh6_sk63aAhUsuVkKHYA2BQMQ_BIIsAEwCg','https://www.alltrails.com/parks/us/pennsylvania/delaware-water-gap-national-recreation-area',40.967500000000001136,-75.122221999999993615,NULL,NULL,NULL,NULL,2,100,NULL,'See also: https://www.nationalparks.org/explore-parks/delaware-water-gap-national-recreation-area');
INSERT INTO park VALUES(13,'Worlds End','215 East Water St','Muncy','PA',17756,'570-546-8282','http://www.dcnr.pa.gov/StateParks/FindAPark/WorldsEndStatePark/Pages/default.aspx','http://www.dcnr.pa.gov/StateParks/FindAPark/WorldsEndStatePark/Pages/Maps.aspx','https://www.google.com/maps/place/Worlds+End+State+Park/@41.4666991,-76.5753685,15z/data=!4m2!3m1!1s0x0:0x8818f0f94e3c87cb?sa=X&ved=0ahUKEwiKlqye2K3aAhUhVd8KHXpDA-YQ_BII3QEwDw','https://www.alltrails.com/parks/us/pennsylvania/worlds-end-state-park',41.471389000000002055,-76.568611000000004196,911,NULL,911,'UPMC Susquehanna Muncy Valley Hospital',2.8999999999999999111,154,4,'Zack and I have been here a few times. I have a picture of him fly fishing here. Local restaurants: High Knobb Inn, Forksville General Store, Forksville Inn, Hillsgrove Hotel, The Barn Tavern. Crestmont inn Eaglesmere, really good meals, a little bit more higher end but worth it. Also, see < https://uncoveringpa.com/things-to-do-in-worlds-end-state-park >.');
INSERT INTO park VALUES(14,'Rolling Hill Park','1301 Rose Glen Rd','Gladwyne','PA',19035,'610-645-6220','http://www.lowermerion.org/services/parks-and-recreation-department/township-parks/rolling-hill-park','https://www.phillydayhiker.com/destinations/rolling-hill-park/','https://www.google.com/maps/place/Rolling+Hill+Park/@40.0401988,-75.2662452,15z/data=!4m2!3m1!1s0x0:0xa5afcc74e72545?sa=X&ved=0ahUKEwi6mOW11q_aAhUi9YMKHf4gC_YQ_BIIlwEwCg',NULL,NULL,NULL,911,NULL,911,NULL,0.5,6,NULL,'Head out on the blue trail that leads to Mill Creek where you''ll find jaw dropping ruins that date back to the early 20th century. ');
INSERT INTO park VALUES(15,'Money Rocks County Park','936 Narvon Rd','Narvon','PA',17555,'717-299-8000','https://co.lancaster.pa.us/288/Money-Rocks-County-Park','https://co.lancaster.pa.us/DocumentCenter/Home/View/229','https://www.google.com/maps/dir/39.9460422,-75.1969678/Money+Rocks+County+Park,+936+Narvon+Rd,+Narvon,+PA+17555/@40.0151498,-76.1414347,9z/data=!3m1!4b1!4m17!1m6!3m5!1s0x0:0x67b72ce25f918ef1!2sMoney+Rocks+County+Park!8m2!3d40.0952958!4d-75.9819015!4m9!1m1!4e1!1m5!1m1!1s0x89c6420579ac7689:0x67b72ce25f918ef1!2m2!1d-75.9819015!2d40.0952958!3e0','https://www.alltrails.com/trail/us/pennsylvania/money-rocks-red-trail',40.095362000000001499,-75.981933999999995421,911,'',911,'',1.1000000000000000888,57,'','');
INSERT INTO park VALUES(16,'Kelly''s Run Nature Preserve','T397','Holtwood','PA',17532,'717) 669-5990','https://www.lancasterconservancy.org/preserve/kellys-run-pinnacle/','https://www.lancasterconservancy.org/wp-content/uploads/2013/07/Kellys-Run-Pinnacle-1.pdf','https://www.google.com/maps/place/Kelly''s+Run+Nature+Preserve/@39.8407981,-76.3173044,15z/data=!4m2!3m1!1s0x0:0xbc4079e3ef5ed495?sa=X&ved=0ahUKEwj3wuCkhrPaAhWHON8KHWAOCtAQ_BIIqgEwCg','https://www.alltrails.com/trail/us/pennsylvania/kellys-run-loop-trail',NULL,NULL,911,NULL,911,NULL,1.6999999999999999555,70,NULL,NULL);
INSERT INTO park VALUES(17,'Elk State Forest','258 Sizerville Road','Emporium','PA',15834,'814-486-3353','http://www.dcnr.pa.gov/StateForests/FindAForest/Elk/Pages/default.aspx','http://www.dcnr.pa.gov/StateForests/FindAForest/Elk/Pages/Maps.aspx','https://www.google.com/maps/dir/407+Wigard+Ave,+Philadelphia,+PA+19128,+USA/Elk+State+Forest,+Benezette+Township,+PA+15868/@40.7003408,-77.9438492,8z/data=!3m1!4b1!4m14!4m13!1m5!1m1!1s0x89c6b8d4002c73d1:0x2d5cbe20e70dfe61!2m2!1d-75.242097!2d40.044923!1m5!1m1!1s0x89cdcaa7a3871b71:0xee7e0e2c75614d8f!2m2!1d-78.2914009!2d41.3333946!3e0',NULL,'41.333333, -78.291389',-78.291388999999995236,NULL,NULL,NULL,NULL,4.5,258,NULL,'Start this 16-mile backpack from the trailhead on PA 555 and tackle some of the country’s newest elk habitat. Go in October for bugling.');
INSERT INTO park VALUES(18,'Pennypack Park','8500 Pine Road','Philadelphia','PA',19136,'215-934-PARK ','https://www.friendsofpennypackpark.org/','https://static1.squarespace.com/static/59776b35a5790a44ceb72a6a/t/59c98ebc03596ef6938529b1/1506381503507/greenwaybrochure.pdf','https://www.google.com/maps/place/Pennypack+Park/@40.0500184,-75.0297117,15z/data=!4m5!3m4!1s0x0:0xce867bf401f336a0!8m2!3d40.0500184!4d-75.0297117',NULL,40.057699999999996976,-75.023399999999995204,911,NULL,911,NULL,0.59999999999999997779,14,NULL,'');
INSERT INTO park VALUES(19,'Alapocas Run State Park','','Wilmington','DE','',NULL,'http://www.destateparks.com/activities/trails/locations/alapocas-run/index.asp',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO park VALUES(20,'Linn Run State Park','770 Linn Run Rd','Rector','PA',15677,'724-238-6623','http://www.dcnr.pa.gov/StateParks/FindAPark/LinnRunStatePark/Pages/default.aspx','http://www.dcnr.pa.gov/StateParks/FindAPark/LinnRunStatePark/Pages/Maps.aspx','https://www.google.com/maps/place/Linn+Run+State+Park/@40.1734675,-79.2360322,15z/data=!4m5!3m4!1s0x0:0x2710a8b537513aa7!8m2!3d40.1734675!4d-79.2360322','https://www.alltrails.com/parks/us/pennsylvania/linn-run-state-park',40.156388999999997222,-79.231110999999998512,911,NULL,911,'Excela Latrobe Hospital',4.2999999999999998223,243,NULL,'');
INSERT INTO park VALUES(21,'Hickory Run State Park','3613 State Route 534','White Haven','PA','18661-9712','570-443-0400','http://www.dcnr.pa.gov/StateParks/FindAPark/HickoryRunStatePark/Pages/default.aspx','http://www.dcnr.pa.gov/StateParks/FindAPark/HickoryRunStatePark/Pages/Maps.aspx','https://www.google.com/maps/place/Hickory+Run+State+Park/@41.0292873,-75.6766605,15z/data=!4m2!3m1!1s0x0:0xaa81a3e6eb01b888?sa=X&ved=0ahUKEwjymbCspMbaAhViw1kKHfZjDywQ_BII1AEwDg','https://www.alltrails.com/parks/us/pennsylvania/hickory-run-state-park',41.036110999999998228,-75.683888999999993528,911,NULL,911,'Lehigh Valley Hospital-Hazleton',1.5,79,4,'Boulder field is a great feature. Want to check out ''Shades of Death'' Trail. ');
INSERT INTO park VALUES(22,'Moosic Mountain','Lackawanna County, eight miles northeast from the city of Scranton, entrance off PA-247.','Scranton','PA','',NULL,'https://www.nature.org/ourinitiatives/regions/northamerica/unitedstates/pennsylvania/placesweprotect/moosic-mountain.xml','http://www.eastcoasthiker.com/wp-content/uploads/2016/03/moosic-bike-trails-34x34-final-lowres.pdf','https://www.google.com/maps/place/The+Nature+Conservancy''s+Dick+%26+Nancy+Eales+Preserve/@41.4475072,-75.5302749,15z/data=!4m2!3m1!1s0x0:0x7774713efaaef695?sa=X&ved=0ahUKEwi43_DAqcbaAhULr1kKHXlHBXcQ_BIIkgEwCg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,2.2000000000000001776,122,NULL,'Nature Conservancy Preserve is one of the best locations in the northeastern U.S. for heath barrens.');
INSERT INTO park VALUES(23,'Green Lane Park','2144 Snyder Rd','Green Lane','PA',18054,'215-234-4528','https://www.montcopa.org/871/Green-Lane-Park','https://www.montcopa.org/DocumentCenter/View/6445','https://www.google.com/maps/place/Green+Lane+Park+-+Blue+Trail/@40.3570795,-75.5120624,17z/data=!3m1!4b1!4m5!3m4!1s0x89c69d5c80c9d19d:0xc8eaa4de40108123!8m2!3d40.3570754!4d-75.5098684','https://www.alltrails.com/trail/us/pennsylvania/green-lane-park-trail',NULL,NULL,911,NULL,911,NULL,1,30,NULL,NULL);
INSERT INTO park VALUES(24,'Tucquan Glen Nature Preserve','State Rte 3017','Holtwood','PA',17532,'717-392-7891','https://www.lancasterconservancy.org/preserve/tucquan-glen/','https://www.lancasterconservancy.org/wp-content/uploads/2013/07/Tucquan-Glen.pdf','https://www.lancasterconservancy.org/wp-content/uploads/2013/07/Tucquan-Glen.pdf','https://www.alltrails.com/trail/us/pennsylvania/tucquan-glen-loop-trail',39.864593999999996753,-76.339695000000006076,911,NULL,NULL,911,1.6000000000000000888,72,'',NULL);
INSERT INTO park VALUES(25,'Bombay Hook National Wildlife Refuge','Visitor Center, 2591 Whitehall Neck Road','Smyrna','DE',19977,'302-653-9345','https://www.fws.gov/refuge/Bombay_Hook/','https://www.fws.gov/refuge/Bombay_Hook/map.html','https://www.google.com/maps/place/Bombay+Hook+National+Wildlife+Refuge/@39.2583667,-75.4550812,15z/data=!4m5!3m4!1s0x0:0x314379e15fd4ecb9!8m2!3d39.2583667!4d-75.4550812',NULL,39.259472999999999842,-75.47435799999999517,911,NULL,911,NULL,1.5,82,'',NULL);
INSERT INTO park VALUES(26,'Gunpowder Falls State Park','7200 Graces Quarters Rd','Middle River','MD',21220,'410-592-2897','http://dnr.maryland.gov/publiclands/Pages/central/gunpowder.aspx','http://dnr.maryland.gov/publiclands/Pages/central/gunpowder.aspx','https://www.google.com/maps/place/Gunpowder+Falls+State+Park/@39.425937,-76.440488,15z/data=!4m2!3m1!1s0x0:0x68e5b9a6f4d913d1?hl=en-us&sa=X&ved=0ahUKEwifkIPr-9LaAhXyc98KHWRoCCQQ_BII0AEwDw','https://www.alltrails.com/parks/us/maryland/gunpowder-falls-state-park',39.362499999999997156,-76.342500000000001136,NULL,NULL,NULL,NULL,1.8000000000000000444,97,'','Maps at bottom of park home page.');
INSERT INTO park VALUES(27,'Lock Ridge Park and Furnace Museum','525 Franklin St','Alburtis','PA',18011,'610-435-1074','https://www.lehighcounty.org/Departments/Parks-And-Recreation/Our-Parks/Lock-Ridge-Park',NULL,'https://www.google.com/maps/place/Lock+Ridge+Park+and+Furnace+Museum/@40.508899,-75.5938577,15z/data=!4m2!3m1!1s0x0:0x14c37ac7fe66988b?sa=X&ved=0ahUKEwiW0YD1k9PaAhUMz1MKHQ_TC1kQ_BIIogEwCg',NULL,40.508479999999998711,-75.593879000000001157,911,NULL,911,'Lehigh Valley Hospital',1.1999999999999999555,47,NULL,NULL);
INSERT INTO park VALUES(28,'Leonard Harrison State Park','4797 Route 660','Wellsboro','PA','16901-8970 ','570-724-3061','http://www.dcnr.pa.gov/StateParks/FindAPark/LeonardHarrisonStatePark/Pages/default.aspx','http://www.dcnr.pa.gov/StateParks/FindAPark/LeonardHarrisonStatePark/Pages/Maps.aspx','Soldiers & Sailors Memorial Hospital','https://www.alltrails.com/parks/us/pennsylvania/leonard-harrison-state-park',41.696666999999997928,-77.454443999999995186,911,NULL,911,'Soldiers & Sailors Memorial Hospital',4,221,3,'East rim of the Grand Canyon of Pennsylvania, and across from park on west rim, Colton Point State Park.');
INSERT INTO park VALUES(29,'Watkins Glen','1009 N Franklin St','Watkins Glen','NY',14891,'607-535-4511','https://parks.ny.gov/parks/142/','https://parks.ny.gov/parks/142/details.aspx','https://www.google.com/maps/place/Watkins+Glen+State+Park/@42.3670667,-76.9016911,15z/data=!4m2!3m1!1s0x0:0x7f234172786716de?sa=X&ved=0ahUKEwiCoOqC99raAhXOtlkKHSlvCLwQ_BII-wEwGA','https://www.alltrails.com/parks/us/new-york/watkins-glen-state-park',42.375895999999997343,-76.871077999999997132,NULL,NULL,NULL,'Maps are accessed from the home page.',NULL,NULL,NULL,NULL);
INSERT INTO park VALUES(30,'Stokes State Forest','1 Coursen Rd','Branchville','NJ',7826,'973-948-3820','http://www.state.nj.us/dep/parksandforests/parks/stokes.html','http://www.state.nj.us/dep/parksandforests/parks/docs/stokes_guide.pdf','https://www.google.com/maps/place/1+Coursen+Rd,+Branchville,+NJ+07826/data=!4m2!3m1!1s0x89c367cb8f3566bb:0x6952341742f0cc97?sa=X&ved=0ahUKEwjatZ3vv9raAhUEhOAKHbD9D1kQ8gEIKDAA',NULL,NULL,NULL,911,'',911,'',2.3999999999999999111,111,NULL,NULL);
INSERT INTO park VALUES(31,'Seven Tubs Natural Area','900 Bear Creek Blvd','Wilkes-Barre','PA',18702,'570-675-1312','http://www.onlyinyourstate.com/pennsylvania/paradise-pa/',NULL,'https://www.google.com/maps/place/Seven+Tubs+Nature+Area/@41.2299598,-75.8214568,15z/data=!4m2!3m1!1s0x0:0xe470c07799ef05a3?sa=X&ved=0ahUKEwit3v6n-OnaAhWjwVkKHUxdCPAQ_BII3gEwEA','https://www.alltrails.com/trail/us/pennsylvania/seven-tubs-nature-area',41.234999999999999431,-75.813900000000003843,911,'',911,replace('\nWilkes-Barre General Hospital\n','\n',char(10)),1.8000000000000000444,110,NULL,'Map of trails not found, so use Alltrails map.');
INSERT INTO park VALUES(32,'Swatara State Park','1450 Suedburg Road','Pine Grove','PA',17963,'717-865-6470','http://www.dcnr.pa.gov/StateParks/FindAPark/SwataraStatePark/Pages/default.aspx','http://www.dcnr.pa.gov/StateParks/FindAPark/SwataraStatePark/Pages/Maps.aspx','https://www.google.com/maps/place/Swatara+State+Park/@40.4932415,-76.5347098,15z/data=!4m2!3m1!1s0x0:0x8762c1d45056d5e1?sa=X&ved=0ahUKEwiskejOvPjaAhWttVkKHcKcAbQQ_BIIyAEwDg','https://www.alltrails.com/trail/us/pennsylvania/swatara-state-park',40.497222000000000718,-76.53305600000000197,911,NULL,911,'WellSpan Good Samaritan Hospital',1.8000000000000000444,97,NULL,NULL);
INSERT INTO park VALUES(33,'State Game Lands No 211',NULL,'Halifax','PA',17032,'717-787-4250',NULL,'http://www.pgc.pa.gov/HuntTrap/StateGameLands/Documents/SGL%20Maps/SGL__211.pdf','https://www.google.com/maps/place/State+Game+Lands+No+211/@40.4744766,-76.6528225,15z/data=!4m2!3m1!1s0x0:0x17d00464251ccd60?sa=X&ved=0ahUKEwjw5uSfvvjaAhUMrlkKHRwnAyEQ_BIIpQEwEg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,100,'',NULL);
INSERT INTO park VALUES(34,'Ralph Stover State Park','150 Tory Rd','Pipersville','PA',18947,'610-982-5560','http://www.dcnr.pa.gov/StateParks/FindAPark/RalphStoverStatePark/Pages/default.aspx','http://www.dcnr.pa.gov/StateParks/FindAPark/RalphStoverStatePark/Pages/Maps.aspx','https://www.google.com/maps/place/Ralph+Stover/@40.4339984,-75.0989121,15z/data=!4m5!3m4!1s0x0:0xb3897003c866a0d7!8m2!3d40.4339984!4d-75.0989121','https://hikingguy.com/hiking-trails/hiking-near-philadelphia/ralph-stover-state-park-high-rocks-hike/',40.434510000000003062,-75.097930000000005178,911,NULL,911,'Doylestown Hospital',1,36,NULL,NULL);
INSERT INTO park VALUES(35,'Blue Marsh Lake National Recreation Area','1268 Palisades Drive','Leesport','PA','19533-9750','610-376-6337','http://www.nap.usace.army.mil/Missions/Civil-Works/Blue-Marsh-Lake/','http://www.nap.usace.army.mil/Portals/39/docs/Civil/Blue_Marsh/trail%20map.pdf','https://www.google.com/maps/place/Blue+Marsh+Lake,+Pennsylvania/data=!4m2!3m1!1s0x89c6752f563af0ab:0xc3dca3abac605627?sa=X&ved=0ahUKEwjTwqjrnLjbAhXFzlkKHW1eDd4Q8gEI5gEwFQ',NULL,'40.38, -76.031389',-76.031389000000004331,911,NULL,911,'Penn State Health St. Joseph Medical Center',1.25,66,NULL,NULL);
INSERT INTO park VALUES(36,'Bear Creek Preserve','47 Rabbit Run Lane','Wilkes-Barre, Bear Creek','PA',18702,'570-647-9175','https://natlands.org/bear-creek-preserve/','https://natlands.org/wp-content/uploads/2017/05/BearCreekBrochMap-2018-02-website.pdf','https://www.google.com/maps/place/Natural+Lands''+Bear+Creek+Preserve/@41.1797526,-75.713924,15z/data=!4m5!3m4!1s0x89c4fd6be189d187:0x8f545ce4e7c4267b!8m2!3d41.1797525!4d-75.7051639',NULL,41.180576000000002068,-75.711939000000000989,NULL,NULL,NULL,NULL,1.8999999999999999111,106,'',NULL);
CREATE TABLE IF NOT EXISTS "destination" (
	`place_id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`name`	TEXT NOT NULL,
	`locale`	TEXT,
	`state`	TEXT,
	`country`	TEXT,
	`url`	TEXT,
	`type`	TEXT NOT NULL,
	`comments`	TEXT
);
INSERT INTO destination VALUES(1,'San Juan','San Juan','Puerto Rico','USA','https://www.nytimes.com/2018/03/20/travel/san-juan-puerto-rico-hurricane-52-places.html','vacation',NULL);
INSERT INTO destination VALUES(2,'Ai-Petri Bridges','Yalta','Crimea','Ukraine','https://www.atlasobscura.com/places/aipetri-bridges','adventure',NULL);
INSERT INTO destination VALUES(3,'Appalachian Trail Museum','Gardners','PA','USA','https://www.atmuseum.org/','museum',NULL);
INSERT INTO destination VALUES(4,'Best Trails in Pennsylvania','','PA','USA','https://www.alltrails.com/us/pennsylvania','outdoors',NULL);
INSERT INTO destination VALUES(5,'Pennsylvania State Park Directory','','PA','USA','http://www.dcnr.pa.gov/StateParks/FindAPark/Pages/default.aspx','outdoors',NULL);
INSERT INTO destination VALUES(6,'Pennsylvania Listing - National Park Service','','PA','USA','https://www.nps.gov/state/pa/list.htm?program=parks','national_parks',NULL);
INSERT INTO destination VALUES(7,'Pennsylvania',NULL,'PA','USA','http://www.onlyinyourstate.com/pennsylvania/hike-ruins-pa/','outdoors',NULL);
INSERT INTO destination VALUES(8,'5 Best Backpacking Trails in Pennsylvania ',NULL,'PA','USA','http://www.susquehannalife.com/2018/03/19/169310/5-best-backpacking-trails-in-pennsylvania','outdoors',NULL);
INSERT INTO destination VALUES(9,'8 Trails In Pennsylvania Will Lead You To Extraordinary Ruins',NULL,'PA','USA','http://www.onlyinyourstate.com/pennsylvania/hike-ruins-pa/','outdoors',NULL);
INSERT INTO destination VALUES(10,'Stone Arch Bridge','Philadelphia','PA','USA','https://philly.curbed.com/maps/fairmount-park-things-to-do-see/stone-arch-bridge-2','outdoors',NULL);
INSERT INTO destination VALUES(11,'Nomadlist: Find your best place to live, work, and play',NULL,NULL,'World','https://nomadlist.com/','adventure',NULL);
INSERT INTO destination VALUES(12,'Selin’s Grove Brewing Co.','Selinsgrove, 121 North Market Street, 17870','PA','USA','http://www.onlyinyourstate.com/pennsylvania/selins-grove-brewing-co-pa/','dining',NULL);
INSERT INTO destination VALUES(13,'Buddy’s Log Cabin Restaurant','Pine Grove, 97 Tremont Road, 17963','PA','USA','http://www.onlyinyourstate.com/pennsylvania/buddys-log-cabin-pa/','dining',NULL);
INSERT INTO destination VALUES(14,'Hector Falls','Allegheny National Forest, Ludlow, Warren County','PA','USA','http://www.interestingpennsylvania.com/2016/01/hector-falls-allegheny-national-forest.html','outdoors',NULL);
INSERT INTO destination VALUES(15,'Lausanne Ruins – Carbon County, PA','Jim Thorpe','PA','USA','http://www.onlyinyourstate.com/pennsylvania/lausanne-ghost-town-2/','outdoors',NULL);
INSERT INTO destination VALUES(16,'Pennsylvania Waterfalls Road Trip - The Ultimate ',NULL,'PA','USA','http://www.onlyinyourstate.com/pennsylvania/pa-road-trip-waterfalls/','outdoors',NULL);
INSERT INTO destination VALUES(17,'6 Lazy Rivers In Delaware That Are Perfect For Tubing On A Summer’s Day','','DE','USA','http://www.onlyinyourstate.com/delaware/tubing-in-delaware-de/','water sports',NULL);
INSERT INTO destination VALUES(18,'Barbour Rock ','Tioga County','PA','USA','http://www.docs.dcnr.pa.gov/cs/groups/public/documents/document/dcnr_20032556.pdf','outdoors',NULL);
INSERT INTO destination VALUES(19,'Trail Tracker - The Interactive Trails Map of NJ State Parks',NULL,'NJ','USA','https://njdep.maps.arcgis.com/apps/webappviewer/index.html?id=3a27819e5c724c8b97a3c9dd43fd3d9a','outdoors',NULL);
INSERT INTO destination VALUES(20,'Hallgrimskirkja','Reykjavik','','Iceland','https://www.atlasobscura.com/places/hallgrimskirkja','vacation','The tallest building in Iceland, and certainly one of the most visually impressive.');
INSERT INTO destination VALUES(21,'Svartifoss',NULL,NULL,'Iceland','https://www.atlasobscura.com/places/svartifoss','vacation','Unique waterfall in Iceland''s south features a backdrop of geometric lava columns.');
INSERT INTO destination VALUES(22,'Bike and Barge Tours in Holland and Europe','Europ','','Holland','https://boatbiketours.com/','vacation','8 day quality tours by bike and barge. Discover a unique combination of cycling and cruising. More than 70 bike and barge trips in 15 countries, from March until October. ');
INSERT INTO destination VALUES(23,'Marfa','Marfa','TX','USA','https://www.nytimes.com/2018/01/22/travel/marfa-texas-road-trip.html','vacation','Marfa is the artist hub in the middle of the West Texas desert.');
INSERT INTO destination VALUES(24,'The Ultimate Western Pennsylvania Waterfalls Road Trip Is Here','','PA','USA','http://www.onlyinyourstate.com/pennsylvania/western-waterfalls-road-trip-pa/','outdoors',NULL);
INSERT INTO destination VALUES(25,'St. Anthony’s Wilderness','Pine Grove','PA','USA','http://www.midatlantichikes.com/rauschgap.htm','outdoors','The wilderness is explained in this trail description. It''s an unofficial name.');
INSERT INTO destination VALUES(26,'US UNESCO Sites: World-class heritage — here in the U.S.','','','USA','https://www.washingtonpost.com/classic-apps/world-class-heritage--here-in-the-us/2018/05/01/33c26570-2c5f-11e8-b0b0-f706877db618_story.html','vacation',NULL);
INSERT INTO destination VALUES(27,'Tank Hollow Vista','Penn Forest Township','PA','USA','https://www.theoutbound.com/pennsylvania/hiking/hike-to-tank-hollow-vista','outdoors','Vista can be accessed by Tank Hollow Tral');
INSERT INTO destination VALUES(28,'Neuschwanstein Castle','Schwangau',NULL,'Germany','https://www.facebook.com/atlasobscura/photos/rpp.103921782727/10156473433332728/?type=3&theater','vacation',NULL);
INSERT INTO destination VALUES(29,'Bunkers of Alvira','Allenwood','PA','USA','https://www.atlasobscura.com/places/bunkers-of-alvira','outdoors',NULL);
INSERT INTO destination VALUES(30,'Rio Grande','','TX','USA','https://www.newyorker.com/magazine/2018/04/23/a-voyage-along-trumps-wall','outdoors',NULL);
INSERT INTO destination VALUES(31,'Nuclear waste bunkers, pyramids and a body farm: 31 things you didn''t know were in Pa.','','PA','USA','http://www.pennlive.com/life/2017/06/things_you_didnt_know_were_in_pa.html','day trips','31 unexpected places in pa');
INSERT INTO destination VALUES(32,'Bunkers Of Alvira','Allenwood','PA','USA','https://www.google.com/maps/dir/40.044947,-75.242506/Bunkers+Of+Alvira,+Alvira+Road,+Allenwood,+PA/@40.8838617,-76.9636532,9z/data=!4m10!4m9!1m1!4e1!1m5!1m1!1s0x89cf0900b732f767:0x3959a40513836507!2m2!1d-76.9591384!2d41.1360368!3e0','day trips','31 unexpected places in pa');
INSERT INTO destination VALUES(33,'French Azilum','Asylum Township','PA','USA','https://www.google.com/maps/dir/40.044947,-75.242506/French+Azilum,+469+Queens+Rd,+Asylum+Township,+PA+18848/@40.8870486,-76.9632352,8z/data=!3m1!4b1!4m17!1m6!3m5!1s0x89daaa9781faee69:0xe9b21453538d64fe!2sFrench+Azilum!8m2!3d41.735907!4d-76.3117419!4m9!1m1!4e1!1m5!1m1!1s0x89daaa9781faee69:0xe9b21453538d64fe!2m2!1d-76.3117419!2d41.735907!3e0','day trips','31 unexpected places in pa');
INSERT INTO destination VALUES(34,'Canoeing the Bronx River','Bronx','NY','USA','http://www.bronxriver.org/','outdoors',NULL);
INSERT INTO destination VALUES(35,'Vacation Finder - WaPol','','','','https://www.washingtonpost.com/graphics/2018/lifestyle/travel/vacation-finder/','vacation',NULL);
INSERT INTO destination VALUES(36,'Shenandoah National Park; 10 Must Do Hikes','','VA','USA','https://blog.virginia.org/2016/06/must-do-hikes/','outdoors',NULL);
INSERT INTO destination VALUES(37,'10 Must-Do Hikes near Atlanta, GA','Atlanta','GA','USA','https://www.outdoorproject.com/blog-news/10-must-do-hikes-near-atlanta-ga','outdoors',NULL);
INSERT INTO destination VALUES(38,'Acadia National Park: 3-Day Itinerary','Bar Harbor','ME','USA','https://www.outdoorproject.com/blog-news/3-day-itinerary-acadia-national-park','outdoors',NULL);
INSERT INTO destination VALUES(39,'Colorado State Parks: ',NULL,'CO','USA','https://www.outdoorproject.com/blog-news/10-incredible-colorado-state-parks','outdoors',NULL);
INSERT INTO destination VALUES(40,'Trough Creek State Park: Copperous Rock, Balanced Rock, and Rainbow Falls ','James Creek','PA','USA','http://www.interestingpennsylvania.com/2016/08/trough-creek-state-park.html','outdoors',NULL);
INSERT INTO destination VALUES(41,'15 Things to Do in Worlds End State Park: Waterfalls, Vistas, and Where to Eat','Forksville','PA','USA','https://uncoveringpa.com/things-to-do-in-worlds-end-state-park','outdoors',NULL);
INSERT INTO destination VALUES(42,'Where to go camping in Pennsylvania this summer ','','PA','USA','https://billypenn.com/2018/06/23/where-to-go-camping-in-pennsylvania-this-summer/','outdoors',NULL);
INSERT INTO destination VALUES(43,'7 Summer Bucket List Adventures In Eastern Pennsylvania ','','PA','USA','https://patch.com/pennsylvania/roxborough/s/ggbe4/7-summer-bucket-list-adventures-eastern-pennsylvania','outdoors',NULL);
INSERT INTO destination VALUES(44,'20+ Awesome Free Things to Do in Philadelphia’s Historic District','Philadelphia','PA','USA','https://www.visitphilly.com/articles/philadelphia/free-things-to-do-in-historic-philadelphia/?utm_source=facebook.com&utm_medium=referral&utm_campaign=VisitPhillyFacebook&utm_content=PaidVPFB_FreeHP-Local','in town',NULL);
INSERT INTO destination VALUES(45,'Mt. Marcy','Adirondacks','NY','USA','https://www.backpacker.com/stories/the-peak-mt-marcy-adirondacks-ny','outdoors',NULL);
INSERT INTO destination VALUES(46,'Trails at Wissahickon Valley Watershed Association','Ambler','PA','USA','http://www.wvwa.org/preserves/','outdoors',NULL);
INSERT INTO destination VALUES(47,'Campgrounds near Ricketts Glen - Recommendations','Benton','PA','USA','https://www.facebook.com/groups/427764640622680/permalink/2043121065753688/?__xts__[0]=68.ARC3kLcVKvewx1tT9OmW9VyUZvNh_RYZtNv5_49_42PBVn275SpOQWiGy5T0wm5RJRIvpP5SkpnF0siO1ZcHB5g8jbChSC9ZNCgGDucNrpY_qRN9WfVszlfagHkZTi-2WawHamAEU9Iu9bteU9mfLUvppkcybLgcShq3QVJlQxDF58JHFNYixgti7UsK3GGEdtGQ0rUj3YgKU2rnnaAAVgVA-TOCUK_UqqNacLDmkw&__tn__=-R','outdoors','FB recommendation');
INSERT INTO destination VALUES(48,'Green Mill Jazz Club','Chicago','IL','USA','https://www.atlasobscura.com/places/green-mill?utm_source=facebook.com&utm_medium=atlas-page','nightlife','Located in Chicago’s Uptown neighborhood, the Green Mill Lounge is home to more than 100 years of history, a century of world-famous musicians and American mobsters alike.');
INSERT INTO destination VALUES(49,'Appalachian Trail - Triple Crown HIke','','VA','USA','','outdoors','McAfee Knob, Tinkers cliffs and Dragontooth');
INSERT INTO destination VALUES(50,'Mt Davis','Elk Lick Township','PA','USA','https://www.google.com/maps/place/Mt+Davis/@39.7861899,-79.1846393,15z/data=!3m1!4b1!4m5!3m4!1s0x89cab86b6850d3e1:0x69e4c883fceaaa47!8m2!3d39.7861908!4d-79.1758631!5m1!1e4','outdoors','Mount Davis is the highest point in Pennsylvania. Located in the 5,685-acre Forbes State Forest near the hamlet of Markleton in Elk Lick Township, Somerset County, it lies on a gentle crest of a 30-mile ridge line extending from central Somerset County southward into Garrett County, Maryland known as Negro Mountain.');
INSERT INTO destination VALUES(51,'Monocacy Hill Ruins','Birdsboro','PA','USA','http://exploringnjandpa.com/index.php/2018/10/04/monocacy-hill-ruins-birdsboro-pa/','outdoors','t is worth hiking the main trail from the parking lot (Lower Trail to Monocacy Hill Trail) to see the lookout point. It’s beautiful!');
INSERT INTO destination VALUES(52,'Glenstone Museum','Potomac','MD','USA','https://www.glenstone.org/','museum','WaPo Article - https://www.washingtonpost.com/graphics/2018/lifestyle/glenstone-museum/');
INSERT INTO destination VALUES(53,'20 Trails in Pennsylvania That Will Leave You Breathless','','PA','USA','https://pahappythoughts.com/happy-articles/20-trails-pennsylvania-will-leave-you-breathless?utm_source=Facebook&utm_medium=Social_Media&utm_campaign=FY18_Fall&utm_content=Family_Outdoor_Adventures','outdoors','Hiking, Biking, Vistas, and Birding');
INSERT INTO destination VALUES(54,'Delaware River Water Trail','','PA','USA','http://delawareriverwatertrail.org/resources/my-trip-planner/','outdoors','Website is a trip planner. More general search from Google about canoe put ins in MIlford, PA found at: https://www.google.com/search?q=milford%2C+pa+canoe+put+in&ie=utf-8&oe=utf-8&client=firefox-b-1-ab');
INSERT INTO destination VALUES(55,'Jaw-dropping Scenic Fall Drives in Pennsylvania',NULL,'PA','USA','https://visitpa.com/articles/jaw-dropping-scenic-fall-drives-pennsylvania','vacation','');
INSERT INTO destination VALUES(56,'Fieldstone Farm Tank Creek Nature Preserve','Cresco','PA','USA','http://www.phlt.org/np-fieldstone-farm.html','outdoors','Preserve provides spring feed flow to the headwaters of Tank Creek, a high quality headwater to the Paradise Creek. It forms an ~1/2 mile boundary between the preserve and State Gamelands #221 (Devil''s Hole). It also has two freshwater ');
INSERT INTO destination VALUES(57,'Grand Junction-Moab trail',NULL,'CO','USA','https://www.nytimes.com/2018/10/15/travel/biking-the-open-road-in-colorado-with-a-few-bumps-along-the-way.html','biking','The newly opened Grand Junction-Moab trail, a 155-mile route linked by a network of backcountry huts, and accessible only two months a year, offers an almost irresistible challenge for bikers. ');
INSERT INTO destination VALUES(58,'Middle Eastern: Craig LaBan’s Ultimate Dining 2018','Philadelphia','PA','USA','http://www.philly.com/philly/columnists/craig_laban/best-middle-eastern-food-restaurants-philadelphia-philly-2018.html','restaurant',NULL);
INSERT INTO destination VALUES(59,'Binky Lee Preserve','Chester Springs','PA','USA','https://natlands.org/binky-lee-preserve/','outdoors',NULL);
INSERT INTO destination VALUES(60,'Here are 15 N.J. trails you need to explore this fall','','NJ','USA','https://www.nj.com/entertainment/index.ssf/2018/10/10_nj_trails_you_need_to_explore_this_fall.html','outdoors',NULL);
INSERT INTO destination VALUES(61,'Pennsbury Manor','Morrisville','PA','USA','http://www.pennsburymanor.org/','historical','The colonial estate of William Penn.');
INSERT INTO destination VALUES(62,'Dingmans Falls','Dingsman Falls','PA','USA','https://uncoveringpa.com/dingmans-falls','outdoors',NULL);
INSERT INTO destination VALUES(63,'Downtown Wellsboro','Wellsboro','PA','USA','https://uncoveringpa.com/visiting-wellsboro-pennsylvania','day trip','Nice, little town ');
INSERT INTO destination VALUES(64,'The One Place to Visit in each of Pennsylvania’s 67 Counties','','PA','USA','https://uncoveringpa.com/place-to-visit-in-each-pennsylvania-county','day trip',NULL);
INSERT INTO destination VALUES(65,'Abandoned PA Turnpike','Breezewood','PA','USA','https://uncoveringpa.com/abandoned-pa-turnpike','outdoors',NULL);
INSERT INTO destination VALUES(66,'7 Beautiful and Historic Churches in Philadelphia Worth Visiting','Philadelphia','PA','USA','https://uncoveringpa.com/historic-churches-in-philadelphia','historical',NULL);
INSERT INTO destination VALUES(67,'11 Best Pennsylvania State Parks for History Lovers','','PA','USA','https://uncoveringpa.com/best-pennsylvania-state-parks-for-history-lovers','historical',NULL);
INSERT INTO destination VALUES(68,'11 Best Brunch Places in Philadelphia','Philadelphia','PA','USA','https://www.cntraveler.com/gallery/best-brunch-places-in-philadelphia','restaurant',NULL);
INSERT INTO destination VALUES(69,'PA Grand Canyon Scenic Overlooks: Barbour Rock, Bradley Wales, & Lebo Vista ',NULL,'PA','USA','https://www.interestingpennsylvania.com/2018/04/PA-Grand-Canyon-barbour-rock-bradley-wales-lebo-vista.html','outdoors',NULL);
INSERT INTO destination VALUES(70,'15 Things to Do in Worlds End State Park: Waterfalls, Vistas, and Where to Eat','','PA','USA','https://uncoveringpa.com/things-to-do-in-worlds-end-state-park','outdoors',NULL);
INSERT INTO destination VALUES(71,'10 Enchanting Frozen Waterfalls Worth a Winter Hike',NULL,'PA','USA','https://visitpa.com/articles/10-enchanting-frozen-waterfalls-worth-winter-hike','outdoors','Winter hiking on water falls. ');
INSERT INTO destination VALUES(72,'10 Awesome Pennsylvania Waterfalls for People who Hate Hiking','','PA','USA','https://uncoveringpa.com/easy-to-reach-pennsylvania-waterfalls','outdoors','Several hikes for folks with limited mobility close to Camp Elk Tannery, including Dry Run Falls, Adams Falls, and Big Run Falls. ');
INSERT INTO destination VALUES(73,'The Falls of Heberly Run in State Game Lands 13','Jamison City','PA','USA','https://uncoveringpa.com/heberly-run-waterfalls-state-game-lands-13','outdoors','Near Camp Elk Tannery on State Game Lands 13.');
INSERT INTO destination VALUES(74,'Hiking in a Winter Wonderland: Frozen Waterfalls at Ricketts Glen State Park','Benton','PA','USA','https://uncoveringpa.com/frozen-waterfalls-ricketts-glen-state-park','outdoors','Both straight hiking and photography tours. ');
INSERT INTO destination VALUES(75,'Exploring the Hoover-Mason Trestle in Bethlehem: Pennsylvania’s Most Industrial Rail Trail','Bethlehem','PA','USA','https://uncoveringpa.com/hoover-mason-trestle-bethlehem','outdoors','Industrial trail');
INSERT INTO destination VALUES(76,'13 of Our Favorite Things to Do in Scranton, PA','Scranton','PA','USA','https://uncoveringpa.com/things-to-do-in-scranton-pa','day trip','Lackawanna Coal Mine Tour, several falls, Old Forge Pizza Crawl, and Archbald Pothole State Park, the largest glacial potholei in the world.');
INSERT INTO destination VALUES(77,'Bilger''s Rocks: A Labyrinth of Boulders, Clearfield County ','Bloom Township','PA','USA','http://www.interestingpennsylvania.com/2016/07/bilgers-rocks-labyrinth-of-boulders.html','outdoors','One of the funkiest geological formations in the state');
INSERT INTO destination VALUES(78,'Standing Stone Trail and the Thousand Steps: Great Hike with Stunning Vistas ','','PA','USA','http://www.interestingpennsylvania.com/2016/08/standing-stone-trail-and-thousand-steps.html','outdoors','2016 Trail of the Year by the Pennsylvania Department of Conservation and Natural Resources. ');
INSERT INTO destination VALUES(79,'Standing Stone Trail: Hiking to the Throne Room Scenic Overlook in Huntingdon County ','Cass Township','PA','USA','http://www.interestingpennsylvania.com/2018/04/standing-stone-trail-hiking-to-throne.html','outdoors','The Throne Room gives a tremendous view of the rugged Alleghenies from an impressive boulder field at the top of a ridge.');
INSERT INTO destination VALUES(80,'Visiting the Hidden Gems of Swatara State Park','','PA','USA','https://uncoveringpa.com/visiting-swatara-state-park','outdoors','');
INSERT INTO destination VALUES(81,'New York Waterfalls: Hector Falls near Watkins Glen','','NY','USA','https://uncoveringnewyork.com/hector-falls-near-watkins-glen/','outdoors','Roadside water falls near Watkins Glen');
INSERT INTO destination VALUES(82,'Pennsylvania Waterfalls',NULL,'PA','USA','https://uncoveringpa.com/pennsylvania-waterfalls','outdoors',NULL);
INSERT INTO destination VALUES(83,'The Ultimate List of Completely Free Things to do in Philadelphia','Philadelphia','PA','USA','https://uncoveringpa.com/free-things-to-do-in-philadelphia','day trip',NULL);
INSERT INTO destination VALUES(84,'7 Magical Places to View Auroras','','','World','https://www.nationalgeographic.com/travel/top-10/7-aurora-destinations/','vacation',NULL);
INSERT INTO destination VALUES(85,replace('The 15 Least-visited National Parks Have All the Beauty, and None of the Crowds\nthis link opens in a new tab\nthis link opens in a new tab\nthis link opens in a new tab\n','\n',char(10)),'','','USA','https://www.travelandleisure.com/trip-ideas/national-parks/least-visited-national-parks','vacation',NULL);
INSERT INTO destination VALUES(86,replace('11 Hikes Near Philadelphia With Waterfalls and Gorgeous Views\nRead more at https://www.phillymag.com/be-well-philly/2018/04/04/waterfall-view-hikes-philadelphia/#jaSyqE43WVsWFg2u.99','\n',char(10)),'Philadelphia','PA','USA','https://www.phillymag.com/be-well-philly/2018/04/04/waterfall-view-hikes-philadelphia/','outdoors','');
INSERT INTO destination VALUES(87,'Here are 15 N.J. trails you need to explore this fall','','NJ','USA','https://www.nj.com/entertainment/2018/10/10_nj_trails_you_need_to_explore_this_fall.html','outdoors',NULL);
INSERT INTO destination VALUES(88,'Hiking at Black Moshannon State Park in Centre County, PA','Philipsburg','PA','USA','https://uncoveringpa.com/black-moshannon-state-park','outdoors',NULL);
INSERT INTO destination VALUES(89,'11 Beautiful Ithaca Waterfalls Worth Exploring','Ithaca','NY','USA','https://uncoveringnewyork.com/ithaca-waterfalls/','outdoors',NULL);
INSERT INTO destination VALUES(90,'19 Free Waterfalls in the Poconos that Should be on Your Bucket List','Poconos','PA','USA','https://uncoveringpa.com/waterfalls-in-the-poconos','outdoors',NULL);
INSERT INTO destination VALUES(91,'The Abandoned Nuclear Jet Bunkers in the Quehanna Wild Area',' Cameron County','PA','USA','https://uncoveringpa.com/jet-bunkers-quehanna-wild-area','outdoors',NULL);
INSERT INTO destination VALUES(92,'Mercer Mile: Visiting Fonthill Castle: One of Pennsylvania’s Most Awe-Inspiring Buildings','Doylestown','PA','USA','https://uncoveringpa.com/visiting-fonthill-castle','day trip','Mercer MIle includes Fonthill Castle,  Mercer Museum, and Moravian Pottery and Tile Works. ');
INSERT INTO destination VALUES(93,'SGL 57- Red Brook and Coalbed Swamp','State Game Land 57','PA','USA','https://endlessmountains.wordpress.com/2013/12/29/sgl-57-red-brook-and-coalbed-swamp/','outdoors',NULL);
INSERT INTO destination VALUES(94,'Harriman State Park','Ramapo','NY','USA','https://parks.ny.gov/parks/145','outdoors','AMC Harriman Outdoor Center is located here.');
INSERT INTO destination VALUES(95,'Mountain Biking on the Allegrippis Trails at Raystown Lake: The Perfect Destination for Riders of all Skill Levels','Huntingdon County ','PA','USA','https://uncoveringpa.com/allegrippis-trails-raystown-lake','outdoors','Known for mountain biking trails. ');
INSERT INTO destination VALUES(96,'Tips for Hiking the Falls Trail in Ricketts Glen State Park','Benton','PA','USA','https://uncoveringpa.com/hiking-falls-trail-ricketts-glen-state-park','outdoors','Nearby falls and hikes are linked to in the article');
INSERT INTO destination VALUES(97,'My Top Tips for Biking the Great Allegheny Passage','','PA','USA','https://uncoveringpa.com/tips-for-riding-the-great-allegheny-passage','outdoors','Biking trail that extends the C&O Canal Trail (DC to Maryland) to Pittsburgh.');
INSERT INTO destination VALUES(98,'Tips for Biking the Pine Creek Rail Trail Through the Pennsylvania Grand Canyon',NULL,'PA','USA','https://uncoveringpa.com/biking-pine-creek-rail-trail-pennsylvania','outdoors',NULL);
CREATE TABLE IF NOT EXISTS "table2tags" (
	`table2tag_id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`table_id`	INTEGER NOT NULL,
	`tag_id`	INTEGER NOT NULL,
	`table_name`	TEXT NOT NULL,
	FOREIGN KEY(`table_name`) REFERENCES `tables_in_db`(`db_tables`)
);
INSERT INTO table2tags VALUES(1,1,3,'park');
INSERT INTO table2tags VALUES(2,2,3,'park');
INSERT INTO table2tags VALUES(3,3,3,'park');
INSERT INTO table2tags VALUES(4,4,3,'park');
INSERT INTO table2tags VALUES(5,5,3,'park');
INSERT INTO table2tags VALUES(6,1,4,'park');
INSERT INTO table2tags VALUES(7,4,4,'park');
INSERT INTO table2tags VALUES(8,5,5,'park');
INSERT INTO table2tags VALUES(9,2,10,'park');
INSERT INTO table2tags VALUES(10,1,1,'destination');
INSERT INTO table2tags VALUES(11,1,2,'destination');
INSERT INTO table2tags VALUES(12,6,13,'park');
INSERT INTO table2tags VALUES(13,11,13,'trail');
INSERT INTO table2tags VALUES(14,12,14,'trail');
INSERT INTO table2tags VALUES(15,9,3,'park');
INSERT INTO table2tags VALUES(16,13,3,'trail');
INSERT INTO table2tags VALUES(17,14,3,'trail');
INSERT INTO table2tags VALUES(18,2,15,'destination');
INSERT INTO table2tags VALUES(19,15,13,'trail');
INSERT INTO table2tags VALUES(20,10,16,'park');
INSERT INTO table2tags VALUES(21,10,3,'park');
INSERT INTO table2tags VALUES(22,11,3,'park');
INSERT INTO table2tags VALUES(23,11,4,'park');
INSERT INTO table2tags VALUES(24,10,13,'park');
INSERT INTO table2tags VALUES(25,17,13,'trail');
INSERT INTO table2tags VALUES(26,12,17,'park');
INSERT INTO table2tags VALUES(27,13,3,'park');
INSERT INTO table2tags VALUES(28,13,4,'park');
INSERT INTO table2tags VALUES(29,5,3,'destination');
INSERT INTO table2tags VALUES(30,5,4,'destination');
INSERT INTO table2tags VALUES(31,9,13,'destination');
INSERT INTO table2tags VALUES(32,20,3,'trail');
INSERT INTO table2tags VALUES(33,21,3,'trail');
INSERT INTO table2tags VALUES(34,22,3,'trail');
INSERT INTO table2tags VALUES(35,23,3,'trail');
INSERT INTO table2tags VALUES(36,14,3,'park');
INSERT INTO table2tags VALUES(37,15,3,'park');
INSERT INTO table2tags VALUES(38,16,3,'park');
INSERT INTO table2tags VALUES(39,17,3,'park');
INSERT INTO table2tags VALUES(40,18,3,'park');
INSERT INTO table2tags VALUES(41,23,3,'trail');
INSERT INTO table2tags VALUES(42,24,3,'trail');
INSERT INTO table2tags VALUES(43,20,13,'park');
INSERT INTO table2tags VALUES(44,20,3,'park');
INSERT INTO table2tags VALUES(45,26,13,'trail');
INSERT INTO table2tags VALUES(46,15,13,'destination');
INSERT INTO table2tags VALUES(47,15,3,'destination');
INSERT INTO table2tags VALUES(48,28,3,'trail');
INSERT INTO table2tags VALUES(49,20,3,'park');
INSERT INTO table2tags VALUES(50,16,3,'destination');
INSERT INTO table2tags VALUES(51,16,18,'destination');
INSERT INTO table2tags VALUES(52,25,19,'park');
INSERT INTO table2tags VALUES(53,26,4,'park');
INSERT INTO table2tags VALUES(54,26,20,'park');
INSERT INTO table2tags VALUES(55,27,13,'park');
INSERT INTO table2tags VALUES(56,27,21,'park');
INSERT INTO table2tags VALUES(57,27,3,'park');
INSERT INTO table2tags VALUES(58,32,3,'trail');
INSERT INTO table2tags VALUES(59,32,12,'trail');
INSERT INTO table2tags VALUES(60,33,3,'trail');
INSERT INTO table2tags VALUES(61,33,12,'trail');
INSERT INTO table2tags VALUES(62,33,22,'trail');
INSERT INTO table2tags VALUES(63,28,3,'park');
INSERT INTO table2tags VALUES(64,28,4,'park');
INSERT INTO table2tags VALUES(65,34,3,'trail');
INSERT INTO table2tags VALUES(66,34,20,'trail');
INSERT INTO table2tags VALUES(67,34,19,'trail');
INSERT INTO table2tags VALUES(68,24,3,'destination');
INSERT INTO table2tags VALUES(69,24,18,'destination');
INSERT INTO table2tags VALUES(70,18,3,'destination');
INSERT INTO table2tags VALUES(71,31,3,'park');
INSERT INTO table2tags VALUES(72,34,3,'park');
INSERT INTO table2tags VALUES(73,34,4,'park');
INSERT INTO table2tags VALUES(74,35,23,'park');
INSERT INTO table2tags VALUES(75,35,3,'park');
INSERT INTO table2tags VALUES(76,14,13,'park');
INSERT INTO table2tags VALUES(77,42,24,'destination');
INSERT INTO table2tags VALUES(78,43,24,'destination');
INSERT INTO table2tags VALUES(79,44,3,'destination');
INSERT INTO table2tags VALUES(80,44,25,'destination');
INSERT INTO table2tags VALUES(81,44,26,'destination');
INSERT INTO table2tags VALUES(82,51,13,'destination');
INSERT INTO table2tags VALUES(83,54,12,'destination');
INSERT INTO table2tags VALUES(84,68,27,'destination');
INSERT INTO table2tags VALUES(85,68,28,'destination');
INSERT INTO table2tags VALUES(86,67,28,'destination');
INSERT INTO table2tags VALUES(87,71,28,'destination');
INSERT INTO table2tags VALUES(88,71,18,'destination');
INSERT INTO table2tags VALUES(89,71,29,'destination');
INSERT INTO table2tags VALUES(90,84,30,'destination');
INSERT INTO table2tags VALUES(91,87,31,'destination');
INSERT INTO table2tags VALUES(92,89,18,'destination');
INSERT INTO table2tags VALUES(93,89,32,'destination');
INSERT INTO table2tags VALUES(94,90,18,'destination');
INSERT INTO table2tags VALUES(95,91,33,'destination');
INSERT INTO table2tags VALUES(96,65,33,'destination');
INSERT INTO table2tags VALUES(97,92,34,'destination');
INSERT INTO table2tags VALUES(98,93,35,'destination');
INSERT INTO table2tags VALUES(99,96,4,'destination');
INSERT INTO table2tags VALUES(100,96,18,'destination');
INSERT INTO table2tags VALUES(101,95,22,'destination');
INSERT INTO table2tags VALUES(102,97,22,'destination');
INSERT INTO table2tags VALUES(103,98,22,'destination');
CREATE TABLE IF NOT EXISTS "tables_in_db" (
	`db_tables`	TEXT,
	PRIMARY KEY(`db_tables`)
);
INSERT INTO tables_in_db VALUES('destination');
INSERT INTO tables_in_db VALUES('park');
INSERT INTO tables_in_db VALUES('table2tags');
INSERT INTO tables_in_db VALUES('tags');
INSERT INTO tables_in_db VALUES('trail');
INSERT INTO tables_in_db VALUES('trail_park_rel');
INSERT INTO tables_in_db VALUES('');
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('tags',35);
INSERT INTO sqlite_sequence VALUES('trail',57);
INSERT INTO sqlite_sequence VALUES('park',36);
INSERT INTO sqlite_sequence VALUES('destination',98);
INSERT INTO sqlite_sequence VALUES('table2tags',103);
COMMIT;
