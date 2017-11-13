CREATE DATABASE guildy;

\c guildy

CREATE TABLE guild (
	id SERIAL PRIMARY KEY,
	name TEXT,
	about TEXT,
	lf_mythic TEXT,
	lf_heroic TEXT,
	lf_pvp TEXT,
	about_mythic TEXT,
	about_heroic TEXT,
	about_pvp TEXT
);

CREATE TABLE mythic (
	id SERIAL PRIMARY KEY,
	player_name TEXT,
	img_link TEXT,
	note TEXT,
	role TEXT,
	guild_id INTEGER REFERENCES guild(id)
);

CREATE TABLE heroic (
	id SERIAL PRIMARY KEY,
	player_name TEXT,
	img_link TEXT,
	note TEXT,
	role TEXT,
	guild_id INTEGER REFERENCES guild(id)
);

CREATE TABLE rbg (
	id SERIAL PRIMARY KEY,
	player_name TEXT,
	img_link TEXT,
	note TEXT,
	role TEXT,
	guild_id INTEGER REFERENCES guild(id)
);