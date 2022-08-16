/*collection*/
insert into collection(id, name, release_date)
values	(1, 'BSB', 1991),
		(2, 'collets', 2018),
		(3, 'Real men', 1993),
		(4, 'lisdahjfls111', 2200),
		(5, 'ViV', 1995),
		(6, 'Mortain', 2017),
		(7, 'Debian', 2019),
		(8,'BBB', 2021);
		
/*album*/
insert into album(id, name, performer, release_date)
values	(1, 'Pund', 1, 1993),
		(2, 'Rolls', 2, 1992),
		(3, 'Back come', 3, 2020),
		(4, 'Smooth', 4, 2120),
		(5, 'Lemon tree', 5, 1995),
		(6, 'Sixis', 6, 1996),
		(7, 'Meow', 7, 2020),
		(8,'Dog style', 8, 2018);
	
/*performer*/
insert into performer(id, name)
values	(1, 'Melony Duck'),
		(2,'Boop Rop'),
		(3, 'Say my name'),
		(4, 'Walter White'),
		(5, 'Lone', 'Rock'),
		(6, 'Человек Человек'),
		(7, 'Jonny'),
		(8, 'Will Frescko');
		
/*musical_genre*/
insert into musical_genre(id, name)
values	(1, 'Rock'),
		(2, 'Metal'),
		(3, 'Pop'),
		(4, 'classic'),
		(5, 'techno');
		
/*track*/
insert into track(id, name, time, album)
values	(1, 'my dream', 101, 1),
		(2, 'Take me on', 120, 4),
		(3, 'Bloop', 130, 6),
		(4, 'Lemon tree', 140, 2),
		(5, 'just a joke', 150, 1),
		(6, 'Big black', 160, 1),
		(7, 'Man in hat', 170, 3),
		(8, 'JHSAdwq', 185, 3),
		(9, 'Overkill', 150, 1),
		(10, 'Stop', 257, 1),
		(11, 'Это не мой парень', 200, 8),
		(12, 'Skibidi', 220, 7),
		(13, 'Touch grass', 220, 1),
		(14, 'Кринж треки скачать без смс и регистрации', 233, 3),
		(15, 'Without trouble', 240, 5);

/*Performer_genre*/
insert into Performer_genre(genre, performer)
values
	(1, 1),
	(2, 4),
	(3, 3),
	(4, 8),
	(5, 6),
	(6, 5),
	(7, 7),
	(8, 2);

/*Performer_album*/
insert into Performer_album(performer, album)
values
	(1, 8),
	(2, 7),
	(3, 6),
	(4, 5),
	(5, 4),
	(6, 3),
	(7, 2),
	(8, 1);

/*Collection_track*/
insert into Collection_track(track, collection)
values
	(1, 8),
	(2, 6),
	(3, 3),
	(4, 5),
	(5, 2),
	(6, 1),
	(7, 4),
	(8, 7),
	(9, 2),
	(10, 8),
	(11, 8),
	(12, 3),
	(13, 5),
	(14, 2),
	(15, 1);