/*collection*/
insert into collection(collection_name, release_date)
values	('collection1', 1991),
		('collection2', 2018),
		('collection3', 1993),
		('collection4', 2200),
		('collection5', 1995),
		('collection6', 2017),
		('collection7', 2019),
		('collection8', 2021);
		
/*album*/
	insert into album(album_name, release_date)
values	('album1', 1993),
		('album2', 1992),
		('album3', 1999),
		('album4', 2120),
		('album5', 1995),
		('album6', 1996),
		('album7', 2020),
		('album8', 2018);
	
/*performer*/
insert into performer(performer_name, name_genre)
values	('name1 name1', 'genre1'),
		('name2', 'genre2'),
		('name3', 'genre3'),
		('name4 name4', 'genre4'),
		('name5', 'genre5'),
		('name6 name6', 'genre6'),
		('name7', 'genre7'),
		('name8', 'genre8');
		
/*musical_genre*/
insert into musical_genre(name_genre)
values	('genre1'),
		('genre2'),
		('genre3'),
		('genre4'),
		('genre5');
		
/*track*/
insert into track(name_track, time_track, album_id)
values	('my dream', 101, 1),
		('Take me on', 120, 4),
		('Bloop', 130, 6),
		('Lemon tree', 140, 2),
		('just a joke', 150, 1),
		('Big black', 160, 1),
		('Man in hat', 170, 3),
		('JHSAdwq', 185, 3),
		('Overkill', 150, 1),
		('Это не мой парень', 200, 8),
		('Skibidi', 220, 7),
		('Touch grass', 220, 1),
		('Кринж треки скачать без смс и регистрации', 233, 3),
		('Without trouble', 240, 5),
		('Stop', 257, 1);

/*Performer_genre*/
insert into Performer_genre(genre, performer) values
	(1, 1),
	(3, 2),
	(2, 3),
	(5, 4),
	(5, 5),
	(4, 6),
	(2, 7),
	(3, 8);

/*Performer_album*/
insert into Performer_album(performer, album) values
	(1, 3),
	(2, 1),
	(3, 2),
	(4, 5),
	(5, 7),
	(6, 4),
	(7, 6),
	(8, 8);

/*Collection_track*/
insert into Collection_track(track, collection) values
	(1, 8),
	(2, 6),
	(3, 3),
	(4, 5),
	(5, 2),
	(6, 1),
	(7, 4),
	(8, 7),
	(9, 2),
	(10, 1),
	(11, 8),
	(12, 3),
	(13, 4),
	(14, 2),
	(15, 1);