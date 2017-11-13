CREATE DATABASE guildy;

\c guildy

CREATE TABLE guild (
	id SERIAL PRIMARY KEY,
	username VARCHAR(100),
	password_digest VARCHAR(100)
);

CREATE TABLE mythic (
	id SERIAL PRIMARY KEY,
	player_name TEXT,
	img_link TEXT,
	note TEXT,
	role TEXT
);

CREATE TABLE heroic (
	id SERIAL PRIMARY KEY,
	player_name TEXT,
	img_link TEXT,
	note TEXT,
	role TEXT
);

CREATE TABLE rbg (
	id SERIAL PRIMARY KEY,
	player_name TEXT,
	img_link TEXT,
	note TEXT,
	role TEXT
);