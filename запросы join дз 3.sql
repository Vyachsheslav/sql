select g.name, count(a.name)
from genre as g
left join artists_genre as ag on g.genre_id = ag.genre_id
left join artist as a on ag.artist_id = a.artist_id
group by g.name
order by count(a.artist_id) DESC


select t.name, a.year
from allbums a 
left join track t on t.albums_id = a.albums_id 
where (a.year>=2019 and a.year<=2020)



select a.name, AVG(t.time)
from allbums a 
left join track t ON t.albums_id = a.albums_id 
group by a.name
order by AVG(t.time)


select distinct a.name
from artist a
where a.name not in (
	select distinct a.name
	from artist a
	left join together_album ta on a.artist_id = ta.artist_id 
	left join allbums a2 on a2.albums_id = ta.albums_id 
	where a2.year = 2020
)
order by a.name

select distinct s.name
from sbor s 
left join sbor_track st on s.sbor_id = st.sbor_id 
left join track t on t.track_id = st.track_id 
left join allbums a on a.albums_id = t.albums_id 
left join together_album ta on ta.albums_id = a.albums_id 
left join artist a2 on a2.artist_id = ta.artist_id 
where a2.name like '%%Lady%%'
order by s.name


select a2.name
from allbums a2
left join together_album ta  on a2.albums_id  = ta.albums_id 
left join artist a on a.artist_id = ta.artist_id 
left join artists_genre ag on a.artist_id  = ag.artist_id 
left join genre g on g.genre_id  = ag.genre_id 
group by a2.name
having count(distinct g.name) > 1
order by a2.name


select t.name
from track t
left join sbor_track st on t.track_id  = st.track_id
where st.track_id is null


select a2.name, t.time
from track t
left join allbums a on a.albums_id  = t.albums_id 
left join together_album ta on ta.albums_id  = a.albums_id 
left join artist a2 on a2.artist_id  = ta.artist_id 
group by a2.name, t.time
having t.time = (select min(time) from track)
order by a2.name



select distinct a.name
from allbums a
left join track t on t.albums_id  = a.albums_id 
where t.albums_id in (
    select albums_id
    from track
    group by albums_id
    having count(albums_id) = (
        select count(albums_id)
        from track
        group by albums_id
        order by count
        limit 1
    )
)
order by a.name
