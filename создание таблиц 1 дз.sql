create table public.Artist
(
	artist_Id int primary key,
	name varchar(128) not null	
);

create table public.Genre
(
	genre_Id int primary key,
	Name varchar(64) not null
);

CREATE TABLE Artists_genre (	
	artist_Id INTEGER NOT NULL REFERENCES Artist(artist_Id),
	genre_Id INTEGER NOT NULL REFERENCES Genre(genre_Id)	
);

create table public.Allbums
(
	Albums_id int primary key,
	name varchar(128) not null,
	year INTEGER not null
);

CREATE TABLE together_album
 (	
	artist_Id INTEGER NOT NULL REFERENCES Artist(artist_Id),
	albums_id INTEGER NOT NULL REFERENCES Allbums(Albums_id)	
);

create table public.Track
(
	Track_id int primary key,
	name varchar(128) not null,
	time float8  not null,
	albums_id INTEGER NOT NULL REFERENCES Allbums(Albums_id)	
);

create table public.sbor
(
	sbor_id int primary key,
	name varchar(128) not null,
	year INTEGER not null
);

CREATE TABLE sbor_track
 (	
	sbor_id INTEGER NOT NULL REFERENCES sbor(sbor_id),
	track_id INTEGER NOT NULL REFERENCES Track(track_id)	
);




