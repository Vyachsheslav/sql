INSERT INTO artist
VALUES(1,'Joe Ferry');


INSERT INTO artist
VALUES(2,'Lady Gaga');

INSERT INTO artist
VALUES(3,'Frank Less');

INSERT INTO artist
VALUES(4,'Jim Benk');

INSERT INTO artist
VALUES(5,'Ben Nen');

INSERT INTO artist
VALUES(6,'Ashe Vally');

INSERT INTO artist
VALUES(7,'Joe');

INSERT INTO artist
VALUES(8,'Nancy');

--добавяем жанры
INSERT INTO genre
VALUES(1,'rock');

INSERT INTO genre
VALUES(2,'electro');

INSERT INTO genre
VALUES(3,'pop');

INSERT INTO genre
VALUES(4,'punk');

INSERT INTO genre
VALUES(5,'club');

--заполним таблицу artist_genre
INSERT INTO artists_genre(artist_id, genre_id)
VALUES(1,1);

INSERT INTO artists_genre(artist_id, genre_id)
VALUES(2,2);

INSERT INTO artists_genre(artist_id, genre_id)
VALUES(3,3);

INSERT INTO artists_genre(artist_id, genre_id)
VALUES(4,4);

INSERT INTO artists_genre(artist_id, genre_id)
VALUES(5,5);

INSERT INTO artists_genre(artist_id, genre_id)
VALUES(6,1);

INSERT INTO artists_genre(artist_id, genre_id)
VALUES(7,3);

INSERT INTO artists_genre(artist_id, genre_id)
VALUES(8,5);


--добавляем альбомы 
INSERT INTO allbums
VALUES(1,'Break','2018');


INSERT INTO allbums
VALUES(2,'Sky','2018');

INSERT INTO allbums
VALUES(3,'Cobmo','2019');

INSERT INTO allbums
VALUES(4,'Non Stop','2017');

INSERT INTO allbums
VALUES(5,'Best Hit','2018');

INSERT INTO allbums
VALUES(6,'New','2015');

INSERT INTO allbums
VALUES(7,'Ask ME','2019');

INSERT INTO allbums
VALUES(8,'Hot','2017');





--добавляем треки
INSERT INTO track
VALUES(1,'Gun','2,3', 1);

INSERT INTO track
VALUES(2,'Star','3,6', 2);

INSERT INTO track
VALUES(3,'My Mikky','4', 3);

INSERT INTO track
VALUES(4,'All See Night','3,8', 4);

INSERT INTO track
VALUES(5,'Break Me','3', 5);

INSERT INTO track
VALUES(6,'Apple Free','2,5', 6);

INSERT INTO track
VALUES(7,'New Year','2,8', 7);

INSERT INTO track
VALUES(8,'Black mail','4,2', 8);

INSERT INTO track
VALUES(9,'Time to Die','4', 4);

INSERT INTO track
VALUES(10,'If you can it','3,4', 3);

INSERT INTO track
VALUES(11,'Nice time','3,7', 2);

INSERT INTO track
VALUES(12,'Perfect','3', 1);

INSERT INTO track
VALUES(13,'Now and now','2', 1);

INSERT INTO track
VALUES(14,'Mystery','2', 5);

INSERT INTO track
VALUES(15,'Z','3,9', 7);


--добавим сборники
INSERT INTO sbor
VALUES(1,'best hit','2017');

INSERT INTO sbor
VALUES(2,'one','2018');

INSERT INTO sbor
VALUES(3,'hot music','2019');

INSERT INTO sbor
VALUES(4,'for relax','2020');

INSERT INTO sbor
VALUES(5,'nice','2021');

INSERT INTO sbor
VALUES(6,'mix','2017');

INSERT INTO sbor
VALUES(7,'music man','2018');

INSERT INTO sbor
VALUES(8,'best of the best','2019');


--создадим sbor_track
INSERT INTO sbor_track(sbor_id, track_id)
VALUES(1,1);

INSERT INTO sbor_track(sbor_id, track_id)
VALUES(2,2);

INSERT INTO sbor_track(sbor_id, track_id)
VALUES(3,3);

INSERT INTO sbor_track(sbor_id, track_id)
VALUES(4,4);

INSERT INTO sbor_track(sbor_id, track_id)
VALUES(5,5);

INSERT INTO sbor_track(sbor_id, track_id)
VALUES(6,6);

INSERT INTO sbor_track(sbor_id, track_id)
VALUES(7,7);

INSERT INTO sbor_track(sbor_id, track_id)
VALUES(8,8);

INSERT INTO sbor_track(sbor_id, track_id)
VALUES(1,9);

INSERT INTO sbor_track(sbor_id, track_id)
VALUES(3,10);

INSERT INTO sbor_track(sbor_id, track_id)
VALUES(4,11);

INSERT INTO sbor_track(sbor_id, track_id)
VALUES(3,12);

INSERT INTO sbor_track(sbor_id, track_id)
VALUES(2,13);

INSERT INTO sbor_track(sbor_id, track_id)
VALUES(5,14);

INSERT INTO sbor_track(sbor_id, track_id)
VALUES(1,15);




