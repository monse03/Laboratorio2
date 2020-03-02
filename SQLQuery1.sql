create Database Lab2

create table video(
idVideo int primary key,
titulo varchar(100),
repro int,
url varchar(100)
)
create procedure sp_video_insertar
@idVideo int,
@tiulo varchar(100),
@repro int,
@url varchar(100)
as
begin
insert into video values(@idVideo,@tiulo,@repro,@url)
end

EXEC sp_video_insertar 1,'Video',1,'x' --para usar el procedure de agregar 
select*from video