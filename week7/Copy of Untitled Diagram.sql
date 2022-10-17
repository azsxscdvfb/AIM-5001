CREATE TABLE "StateInformation" (
  "State" varchar[2] PRIMARY KEY,
  "name" varchar[20]
);

CREATE TABLE "less_than_highSchool" (
  "State" varchar[2] PRIMARY KEY,
  "1970" float,
  "1980" float,
  "1990" float,
  "2000" float,
  "2007_11" float,
  "2016_20" float
);

CREATE TABLE "highSchool_only" (
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

CREATE TABLE "fourYears_college_or_higher" (
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

ALTER TABLE "StateInformation" ADD FOREIGN KEY ("State") REFERENCES "fourYears_college_or_higher" ("State") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "StateInformation" ADD FOREIGN KEY ("State") REFERENCES "less_than_4years_college" ("State") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "StateInformation" ADD FOREIGN KEY ("State") REFERENCES "less_than_highSchool" ("State") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "StateInformation" ADD FOREIGN KEY ("State") REFERENCES "highSchool_only" ("State") ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE "StateInformation" ADD FOREIGN KEY ("State") REFERENCES "total_educated_population" ("State") ON DELETE NO ACTION ON UPDATE NO ACTION;
