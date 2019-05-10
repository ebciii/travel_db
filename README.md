![GitHub tag](https://img.shields.io/github/license/mashape/apistatus.svg)

# travel_db

## Travel Database ##

*Author:* E Bryan Crenshaw III, PhD

#### Objective ####
This database is a personal project to keep track of destinations that would be interesting to visit, with an emphasis on outdoor destinations.

##### Important Note on the repo #####
Typically, the sqlite3 database is a binary file, which isn't an appropriate file type for `git`. My local `git` repo uses a `git` [clean/smudge approach](https://gist.github.com/ebciii/e47cc453c51bae7aba1d9d9c9f40da25) to convert the `travel.db` binary sqlite3 format to a SQL script prior to include in the `git` repo (and convert it back to sqlite3 native format when restoring from the `git` repo). In this manner, the database remains usable as a binary file in my local working directory, but is converted to a text based format appropriate for the `git` repo. The section below gives instructions on how to set up the repo on your local computer to use this approach. Alternatively, if you would rather just download and convert the SQL format to the native sqlite3 format, see the subsequent section. 

#### Setting Up The Repo on Your Local Computer ####
- Clone the project onto your computer (or fork).
- Run the script, `post_clone_setup_script.sh`. This script will help set up your own repo correctly. It includes two parts: 1) setting up `git config` and attributes to reproduce clean/smudge process after cloning, and 2) converting the sql version of the travel.db database into a binary version.

#### Download the File and Convert to Native Sqlite3 Format ####
- If you just want to set up the database without the `git` repo, then use the following commands in the terminal (last part of script described above):
```
# Convert travel.db from sql statements to a sqlite3 binary
mv travel.db travel_setup.sql
cat travel_setup.sql | sqlite3 travel.db
rm travel_setup.sql
```
- Once this is accomplished, it converts the downloaded SQL script from the `travel.db` file in the repo into a binary, native, sqlite3 format.  

#### Generate SQL from travel.db on Mac OS X ####
- After completing the conversion shown in the section above, you can subsequently generate SQL code for the entire database and its contents or just the schema, as shown in the next 2 bullet points.
- In `Terminal`, type `sqlite3 travel.db .dump > travel_db.sql` (gives the entire database).
- Alternatively, type `sqlite3 travel.db .schema > travel_db_schema.sql` (gives just the schema).

#### Schema Details ####
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
