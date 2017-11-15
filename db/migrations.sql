CREATE DATABASE guildy;

\c guildy

CREATE TABLE guild (
	id SERIAL PRIMARY KEY,
	name TEXT,
	realm TEXT,
	region TEXT,
	about TEXT,
	lf_mythic TEXT,
	lf_heroic TEXT,
	lf_rbg TEXT,
	about_mythic TEXT,
	about_heroic TEXT,
	about_rbg TEXT
);

CREATE TABLE mythic (
	id SERIAL PRIMARY KEY,
	player_name TEXT,
	img_link TEXT,
	role TEXT,
	guild_id INTEGER REFERENCES guild(id)
);

CREATE TABLE heroic (
	id SERIAL PRIMARY KEY,
	player_name TEXT,
	img_link TEXT,
	role TEXT,
	guild_id INTEGER REFERENCES guild(id)
);

CREATE TABLE rbg (
	id SERIAL PRIMARY KEY,
	player_name TEXT,
	img_link TEXT,
	role TEXT,
	guild_id INTEGER REFERENCES guild(id)
);