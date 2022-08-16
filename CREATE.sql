/*Musical_genre*/
create table if not exists Musical_genre (
	id serial primary key,
	name varchar(128) not null
);

/*Performer*/
create table if not exists Performer (
	id serial primary key,
	name varchar(128) not null
);

/*Album*/
create table if not exists Album (
	id serial primary key,
	name varchar(128) not null,
	performer varchar(128) not null,
	release_date int
);

/*Track*/
create table if not exists Track (
	id serial primary key,
	name varchar(128) not null,
	time int not null,
	album int not null references Album(id)
);

/*Collection*/
create table if not exists Collection (
	id serial primary key,
	name varchar(128) not null,
	release_date int not null
);
 
/* Performer_genre */
create table if not exists Performer_genre (
	genre int references Musical_genre(id),
	performer int references Performer(id),
	constraint pk primary key (genre, performer)
);

/* Performer_album */
create table if not exists Performer_album (
	album int references Album(id),
	performer int references Performer(id),
	constraint pk2 primary key (album, performer)
);

/* Collection_track */
create table if not exists Collection_track (
	collection int references Collection(id),
	track int references Track(id),
	constraint pk3 primary key (collection, track)
);

