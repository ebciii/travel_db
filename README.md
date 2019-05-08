## Travel Database ##

*Author:* E Bryan Crenshaw III, PhD

#### Objective ####
This database is a personal project to keep track of destinations that would be interesting to visit, with an emphasis on outdoor destinations.

#### Approach ####
This is a SQlite3 database maintained on Mac OS X using DB Browser for SQLite. The database contains 8 tables listed below:

```
CREATE TABLE "destination"
( `place_id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  `name` TEXT NOT NULL,
  `locale` TEXT,
  `state` TEXT,
  `country` TEXT,
  `url` TEXT,
  `type` TEXT NOT NULL,
  `comments` TEXT )

CREATE TABLE "park"
( `park_id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  `name` TEXT NOT NULL UNIQUE,
  `address` TEXT,
  `city` TEXT,
  `state` TEXT,
  `zip_code` INTEGER,
  `phone` TEXT,
  `url` TEXT,
  `map_url` TEXT,
  `map_google` TEXT,
  `alltrails` TEXT,
  `gps_lat` NUMERIC,
  `gps_long` NUMERIC,
  `police_1_id` INTEGER,
  `police_2_id` INTEGER,
  `medical_1_id` INTEGER,
  `medical_2_id` INTEGER,
  `drive_time` NUMERIC,
  `drive_miles` INTEGER,
  `rating` INTEGER,
  `comment` TEXT )

CREATE TABLE sqlite_sequence(name,seq)

CREATE TABLE "table2tags"
( `table2tag_id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  `table_id` INTEGER NOT NULL,
  `tag_id` INTEGER NOT NULL,
  `table_name` TEXT NOT NULL, FOREIGN KEY(`table_name`) REFERENCES `tables_in_db`(`db_tables`) )

CREATE TABLE "tables_in_db"
( `db_tables` TEXT, PRIMARY KEY(`db_tables`) )

CREATE TABLE "tags"
( `tag_id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  `name` TEXT NOT NULL,
  `definition` TEXT )

CREATE TABLE "trail"
( `trail_id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  `name` TEXT NOT NULL UNIQUE,
  `trail_length` NUMERIC,
  `difficulty` INTEGER,
  `url` TEXT,
  `blaze` TEXT,
  `loop_flag` INTEGER,
  `map` TEXT,
  `map_google` TEXT,
  `alltrails` TEXT,
  `rating` INTEGER,
  `comment` TEXT )

CREATE TABLE "trail_park_rel"
( `trail_id` INTEGER,
  `park_id` INTEGER, FOREIGN KEY(`park_id`) REFERENCES
  `park`(`park_id`), FOREIGN KEY(`trail_id`) REFERENCES
  `trail`(`trail_id`) )
```
