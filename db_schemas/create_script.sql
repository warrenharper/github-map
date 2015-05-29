CREATE DATABASE github_heatmap;

CREATE TABLE locations (
    id integer PRIMARY KEY,
    latitude float(20),
    longitude float(20),
    country text,
    state text,
    county text,
    locality text,
    postal_code varchar(10) 
);

CREATE TABLE users (
    id integer PRIMARY KEY,
    login text,
    name text,
    email text,
    location integer REFERENCES locations (id),
    company text,
    url text,
    html_url text
);

CREATE TABLE repositories (
    id integer PRIMARY KEY,
    owner integer REFERENCES users (id),
    full_name text,
    description text,
    fork text,
    url text,
    html_url text
);
