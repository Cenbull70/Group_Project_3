-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/utlbSs
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "haunted_places" (
    "city" VARCHAR(255)   NOT NULL,
    "country" VARCHAR(255)   NOT NULL,
    "description" VARCHAR(255)   NOT NULL,
    "locaiton_name" VARCHAR(255)   NOT NULL,
    "state" VARCHAR(255)   NOT NULL,
    "longitude" DECIMAL   NOT NULL,
    "latitude" DECIMAL   NOT NULL,
    "city_longitude" DECIMAL   NOT NULL,
    "city_latitude" DECIMAL   NOT NULL
);

CREATE TABLE "us_census" (
    "state" VARCHAR(255)   NOT NULL,
    "county" VARCHAR(255)   NOT NULL,
    "population" INT   NOT NULL
);

CREATE TABLE "cemetery" (
    "name" VARCHAR(255)   NOT NULL,
    "city" VARCHAR(255)   NOT NULL,
    "longitude" DECIMAL   NOT NULL,
    "latitude" DECIMAL   NOT NULL
);

CREATE TABLE "churches" (
    "osm_id" INT   NOT NULL,
    "code" INT   NOT NULL,
    "fclass" VARCHAR(255)   NOT NULL,
    "name" VARCHAR(255)   NOT NULL
);

CREATE TABLE "medical" (
    "name" VARCHAR(255)   NOT NULL,
    "address" VARCHAR(255)   NOT NULL,
    "city" VARCHAR(255)   NOT NULL,
    "state" VARCHAR(255)   NOT NULL,
    "long" DECIMAL   NOT NULL,
    "lat" DECIMAL   NOT NULL
);

