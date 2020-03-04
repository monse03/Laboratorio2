create Database Lab2

create table video(
idVideo int primary key,
titulo varchar(100),
repro int,
url varchar(100)
)
create procedure sp_video_insertar
@idVideo int,
@titulo varchar(100),
@repro int,
@url varchar(100)
as
begin
insert into video values(@idVideo,@titulo,@repro,@url)
end
DROP PROCEDURE sp_video_insertar;  
EXEC sp_video_insertar 1,'Video',1,'x' --para usar el procedure de agregar 
select*from video

create procedure sp_video_modificar
@idVideo int,
@titulo varchar(100),
@repro int,
@url varchar(100)
as
begin
UPDATE video SET titulo=@titulo,repro=@repro,url=@url WHERE idVideo=@idVideo
end

create procedure sp_video_eliminar
@idVideo int
as
begin
Delete from Video where idVideo=@idVideo
end
