CREATE TABLE "state_information" (
  "State" varchar[2] PRIMARY KEY,
  "name" varchar[20]
);

CREATE TABLE "less_than_highschool" (
  "State" varchar[2] PRIMARY KEY,
  "1970" float,
  "1980" float,
  "1990" float,
  "2000" float,
  "2007_11" float,
  "2016_20" float
);

CREATE TABLE "highschool_only" (
  "State" varchar[2] PRIMARY KEY,
  "1970" float,
  "1980" float,
  "1990" float,
  "2000" float,
  "2007_11" float,
  "2016_20" float
);

CREATE TABLE "less_than_4years_college" (
  "State" varchar[2] PRIMARY KEY,
  "1970" float,
  "1980" float,
  "1990" float,
  "2000" float,
  "2007_11" float,
  "2016_20" float
);

CREATE TABLE "fouryears_college_or_higher" (
  "State" varchar[2] PRIMARY KEY,
  "1970" float,
  "1980" float,
  "1990" float,
  "2000" float,
  "2007_11" float,
  "2016_20" float
);

CREATE TABLE "total_educated_population" (
  "State" varchar[2] PRIMARY KEY,
  "1970" int,
  "1980" int,
  "1990" int,
  "2000" int,
  "2007_11" int,
  "2016_20" int
);

ALTER TABLE "state_information" ADD FOREIGN KEY ("State") REFERENCES "fouryears_college_or_higher" ("State") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "state_information" ADD FOREIGN KEY ("State") REFERENCES "less_than_4years_college" ("State") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "state_information" ADD FOREIGN KEY ("State") REFERENCES "less_than_highschool" ("State") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "state_information" ADD FOREIGN KEY ("State") REFERENCES "highschool_only" ("State") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "state_information" ADD FOREIGN KEY ("State") REFERENCES "total_educated_population" ("State") ON DELETE NO ACTION ON UPDATE NO ACTION;
