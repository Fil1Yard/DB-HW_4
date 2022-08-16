/*1. количество исполнителей в каждом жанре*/
select count(Performer_genre.performer), musical_genre.name as g
from Performer_genre, musical_genre
where Performer_genre.genre = musical_genre.id
group by g;

/*2. количество треков, вошедших в альбомы 2019-2020 годов*/
select a.name, count(t.name)
from Album a, Track t
where release_date between 2019 and 2020 and t.album = a.id
group by a.name;

/*3. средняя продолжительность треков по каждому альбому*/
select a.name, avg(t.time)
from album a, track t
where t.album = a.id
group by a.name;

/*4. все исполнители, которые не выпустили альбомы в 2020 году*/
select a.name
from album a, performer p, Performer_album pa
where not a.release_date = 2020 and pa.performer = p.id
group by a.name;

/*5. названия сборников, в которых присутствует конкретный исполнитель (Will Frescko)*/
select c.name, p.name
from collection c, collection_track ct, track t, performer_album pa, album a, performer p
where p.name = 'Will Frescko' and pa.album = a.id and pa.performer = p.id and ct.track = t.id and ct.collection = c.id and t.album = a.id;

/*6. название альбомов, в которых присутствуют исполнители более 1 жанра*/
select a.name
from album a
join performer_genre pg on pg.genre = a.id
join performer_album pa on pg.performer = pa.performer
group by a.name
having count(pg.genre) > 1;

/*7. наименование треков, которые не входят в сборники*/
select t.name
from track t
where not exists (
	select t.id
	from collection_track ct
	where ct.track = t.id);

/*8. исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько)*/
select p.name
from performer p
join Performer_album pa on pa.performer = p.id
join album a on pa.performer = a.id
join track t on a.id = t.album
where t.time = (select min(t2.time) from track t2);

/*9. название альбомов, содержащих наименьшее количество треков*/
select a.name
from album a, track t 
where t.album = a.id 
group by a.name 
having count(a.name) = (
	select min(i)
	from (
		select count(t2.album) as i 
		from album a2, track t2 
		where a2.id = t2.album 
		group by a2.name)
	as c);