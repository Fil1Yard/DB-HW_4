/*название и год выхода альбомов, вышедших в 2018 году*/
select album_name, release_date from album
where release_date = '2018-08-08';

/*название и продолжительность самого длительного трека*/
select time_track, name_track from track
where time_track = (select max(time_track) from track);

/*название треков, продолжительность которых не менее 3,5 минуты*/
select name_track 
from track
where time_track > 210;

/*названия сборников, вышедших в период с 2018 по 2020 год включительно*/
select collection_name
from collection
where release_date between 2018 and 2020

/*исполнители, чье имя состоит из 1 слова*/
select performer_name from performer
where performer_name not like '% %';

/*название треков, которые содержат слово "мой"/"my"*/
select name_track from track
where name_track like '%my%' or name_track like '%мой%';