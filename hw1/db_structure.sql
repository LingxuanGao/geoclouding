-- Active: 1769627749881@@127.0.0.1@5432@hw1_indego_db@indego
CREATE SCHEMA IF NOT EXISTS indego;
create table indego.trips_2021_q3 (
  trip_id text,
  duration integer,
  start_time timestamp,
  end_time timestamp,
  start_station text,
  start_lat float,
  start_lon float,
  end_station text,
  end_lat float,
  end_lon float,
  bike_id text,
  plan_duration integer,
  trip_route_category text,
  passholder_type text,
  bike_type text
);
create table indego.trips_2022_q3 (
    like indego.trips_2021_q3 including all
)

create extension if not exists postgis;

create table if not exists indego.station_statuses (
    id integer,
    name text,
    geog geography
)
