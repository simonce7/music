alter table artists
alter column nationality
set not null;

select *
from   artists
where  nationality is null;

insert into artists (artist_id, stage_name)
values (300, 'Laufey');

add column active boolean not null default true;
insert into artists (artist_id, stage_name, nationality)
values (300, 'Laufey', 'IS');

alter table artists
add constraint unique_stage_name
unique (stage_name);

insert into artists (artist_id, stage_name, nationality)
values (301, 'Nirvana', 'GB');

alter table artists
drop constraint unique_stage_name;

alter table artists
add constraint unique_stage_name_nationality
unique (stage_name, nationality);

andet id: Nirvana (302)
insert into artists (artist_id, stage_name, nationality)
values (302, 'Nirvana', 'GB');

alter table albums
add constraint artists_fk
foreign key (artist_id)
references artists (artist_id);

alter table playlist_track
add constraint playlist_fk
foreign key (playlist_id)
references playlists (playlist_id);

alter table playlist_track
add constraint track_fk
foreign key (track_id)
references tracks (track_id);