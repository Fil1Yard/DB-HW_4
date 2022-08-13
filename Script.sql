create table if not exists Musical_genre (
	genre_id serial primary key,
	name_genre varchar(150) not null
);

create table if not exists Performer (
	performer_id serial primary key,
	performer_name varchar(150) not null,
	name_genre varchar(150) not null
);

create table if not exists Album (
	album_id serial primary key,
	album_name varchar(150),
	release_date int
);

create table if not exists Track (
	track_id serial primary key,
	name_track varchar(150) not null,
	time_track int,
	album_id int not null references Album(album_id)
);

create table if not exists Collection (
	collection_id serial primary key,
	collection_name varchar(150),
	release_date int
);

/* Performer_genre */
create table if not exists Performer_genre (
	genre_id int references Musical_genre(genre_id),
	performer_id int references Performer(performer_id),
	constraint pk primary key (genre_id, performer_id)
);

/* Performer_album */
create table if not exists Performer_album (
	album_id int references Album(album_id),
	performer_id int references Performer(performer_id),
	constraint pk2 primary key (album_id, performer_id)
);

/* Collection_track */
create table if not exists Collection_track (
	collection_id int references Collection(collection_id),
	track_id int references Track(track_id),
	constraint pk3 primary key (collection_id, track_id)
);

