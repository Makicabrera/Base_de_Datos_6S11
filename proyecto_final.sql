create table alumnoss(
id_alumnos number (5) primary key not null,
matricula_alu nvarchar2 (12),
nombre_alu nvarchar2(30),
apellido_alu_pa nvarchar2 (30),
apellido_alu_ma nvarchar2 (30),
carrera_alu nvarchar2 (15),
grupo_alu nvarchar2 (5),
semestre_alu number(3),
edicifio_alu nvarchar2 (5),
promedio_alu number (5)
);


create or replace procedure pa_in_alumnos
(id_alumnos in number  default 0 , matricula_alu  in nvarchar2 default 'null', nombre_alu in nvarchar2 default 'nombre',
apellido_alu_pa in nvarchar2 default 'apellido paterno',apellido_alu_ma in nvarchar2 default 'apellido materno',
carrera_alu in nvarchar2 default 'Sin carrera',grupo_alu in nvarchar2 default 'Null',semestre_alu in number default 0,
edicifio_alu in nvarchar2 default 'Null',promedio_alu in number default 0)
as 
begin 
insert into alumnoss values (id_alumnos, matricula_alu, nombre_alu, apellido_alu_pa, apellido_alu_ma, carrera_alu, grupo_alu,
semestre_alu, edicifio_alu ,promedio_alu);
end;
-----------------------Esta seccion es para ejemplificar como funcionaria con datos reales------------------
execute pa_in_alumnos (1, '206020069', 'Marco Antonio', 'Cabrera', 'Mendez','ISC','6S11', 6, 'A', 87);
execute pa_in_alumnos (2, '206020069', 'Marco Antonio', 'Cabrera', 'Mendez','TIC','6S11', 6, 'A', 100);
execute pa_in_alumnos (3, '206020069', 'Marco Antonio', 'Cabrera', 'Mendez','CP','6S11', 6, 'A', 95);
execute pa_in_alumnos (4, '206020069', 'Marco Antonio', 'Cabrera', 'Mendez','LEG','6S11', 6, 'A', 75);
execute pa_in_alumnos (5, '206020069', 'Marco Antonio', 'Cabrera', 'Mendez','INAM','6S11', 6, 'A', 60);
execute pa_in_alumnos (6, '206020069', 'Marco Antonio', 'Cabrera', 'Mendez','ININ','6S11', 6, 'A', 90);
execute pa_in_alumnos (7, '206020069', 'Marco Antonio', 'Cabrera', 'Mendez','INAD','6S11', 6, 'A', 86);
execute pa_in_alumnos (8, '206020069', 'Marco Antonio', 'Cabrera', 'Mendez','IER','6S11', 6, 'A', 96);
execute pa_in_alumnos (9, '206020069', 'Marco Antonio', 'Cabrera', 'Mendez','ISA','6S11', 6, 'A', 67);
execute pa_in_alumnos (10, '206020069', 'Marco Antonio', 'Cabrera', 'Mendez','TIC','1S11', 6, 'A', 89);
execute pa_in_alumnos (11, '206020069', 'Marco Antonio', 'Cabrera', 'Mendez','CP','1S11', 6, 'A', 91);
-----------------------Esta seccion esta orientada a almacenar los datos de los estudiantes y separalos por carreras------------------
create table isc(
idisc number (5) primary key not null,
matricula_isc nvarchar2 (12),
nombre_isc nvarchar2(80),
grupo_isc nvarchar2(5),
edicifio_isc nvarchar2 (5));

create or replace procedure in_isc
as
begin
    
    insert into isc 
    select id_alumnos, matricula_alu, nombre_alu ||' '||apellido_alu_pa ||' '||apellido_alu_ma , grupo_alu, edicifio_alu
    from alumnoss
    where carrera_alu='ISC';   --where

end;

execute in_isc;

create table tic(
idtic number (5) primary key not null,
matricula_tic nvarchar2 (12),
nombre_tic nvarchar2(80),
grupo_tic nvarchar2(5),
edicifio_tic nvarchar2 (5));

create or replace procedure in_tic
as
begin
    
    insert into tic 
    select id_alumnos, matricula_alu, nombre_alu ||' '||apellido_alu_pa ||' '||apellido_alu_ma , grupo_alu, edicifio_alu
    from alumnoss
    where carrera_alu='TIC';   --where

end;

execute in_tic;

create table connn(
idcon number (5) primary key not null,
matricula_con nvarchar2 (12),
nombre_con nvarchar2(80),
grupo_con nvarchar2(5),
edicifio_con nvarchar2 (5));

create or replace procedure in_con
as
begin
    
    insert into connn 
    select id_alumnos, matricula_alu, nombre_alu ||' '||apellido_alu_pa ||' '||apellido_alu_ma , grupo_alu, edicifio_alu
    from alumnoss
    where carrera_alu='CP';   --where

end;

execute in_con;

create table leg(
idleg number (5) primary key not null,
matricula_leg nvarchar2 (12),
nombre_leg nvarchar2(80),
grupo_leg nvarchar2(5),
edicifio_leg nvarchar2 (5));

create or replace procedure in_leg
as
begin
    
    insert into leg 
    select id_alumnos, matricula_alu, nombre_alu ||' '||apellido_alu_pa ||' '||apellido_alu_ma , grupo_alu, edicifio_alu
    from alumnoss
    where carrera_alu='LEG';   --where

end;

execute in_leg;

create table inam(
idinam number (5) primary key not null,
matricula_inam nvarchar2 (12),
nombre_inam nvarchar2(80),
grupo_inam nvarchar2(5),
edicifio_inam nvarchar2 (5));

create or replace procedure in_inam
as
begin
    
    insert into inam 
    select id_alumnos, matricula_alu, nombre_alu ||' '||apellido_alu_pa ||' '||apellido_alu_ma , grupo_alu, edicifio_alu
    from alumnoss
    where carrera_alu='INAM';   --where

end;

execute in_inam;

create table inin(
idinin number (5) primary key not null,
matricula_inin nvarchar2 (12),
nombre_inin nvarchar2(80),
grupo_inin nvarchar2(5),
edicifio_inin nvarchar2 (5));

create or replace procedure in_inin
as
begin
    
    insert into inin 
    select id_alumnos, matricula_alu, nombre_alu ||' '||apellido_alu_pa ||' '||apellido_alu_ma , grupo_alu, edicifio_alu
    from alumnoss
    where carrera_alu='ININ';   --where

end;

execute in_inin;

create table inad(
idinad number (5) primary key not null,
matricula_inad nvarchar2 (12),
nombre_inad nvarchar2(80),
grupo_inad nvarchar2(5),
edicifio_inad nvarchar2 (5));

create or replace procedure in_inad
as
begin
    
    insert into inad 
    select id_alumnos, matricula_alu, nombre_alu ||' '||apellido_alu_pa ||' '||apellido_alu_ma , grupo_alu, edicifio_alu
    from alumnoss
    where carrera_alu='INAD';   --where

end;

execute in_inad;

create table ier(
idier number (5) primary key not null,
matricula_ier nvarchar2 (12),
nombre_ier nvarchar2(80),
grupo_ier nvarchar2(5),
edicifio_ier nvarchar2 (5));

create or replace procedure in_ier
as
begin
    
    insert into ier
    select id_alumnos, matricula_alu, nombre_alu ||' '||apellido_alu_pa ||' '||apellido_alu_ma , grupo_alu, edicifio_alu
    from alumnoss
    where carrera_alu='IER';   --where

end;

execute in_ier;

create table isa(
idisa number (5) primary key not null,
matricula_isa nvarchar2 (12),
nombre_isa nvarchar2(80),
grupo_isa nvarchar2(5),
edicifio_isa nvarchar2 (5));

create or replace procedure in_isa
as
begin
    
    insert into isa 
    select id_alumnos, matricula_alu, nombre_alu ||' '||apellido_alu_pa ||' '||apellido_alu_ma , grupo_alu, edicifio_alu
    from alumnoss
    where carrera_alu='ISA';   --where

end;

execute in_isa;


drop table alumnoss;

drop table isc;

drop table tic;

drop table connn;

drop table leg;

drop table inam;

drop table inin;

drop table inad;

drop table ier;

drop table isa;



select * from alumnoss;

select * from isc;

select * from tic;

select * from connn;

select * from leg;

select * from inam;

select * from inin;

select * from inad;

select * from ier;

select * from isa;

-------------------Esta seccion esta orientada a comparar cuales son los alumnos que se encuentran en las diferentes carreras------------------
select * from isc join tic on grupo_isc like '1%' and grupo_tic like '1%' join connn on grupo_isc like '1%' and grupo_con like '1%'
join leg on grupo_isc like '1%' and grupo_leg like '1%' join inam on grupo_isc like '1%' and grupo_inam like '1%' 
join inin on grupo_isc like '1%' and grupo_inin like '1%'
join inad on grupo_isc like '1%' and grupo_inad like '1%' join ier on grupo_isc like '1%' and grupo_ier like '1%' 
join isa on grupo_isc like '1%' and grupo_isa like '1%';

select * from isc join tic on grupo_isc like '2%' and grupo_tic like '2%' join connn on grupo_isc like '2%' and grupo_con like '2%'
join leg on grupo_isc like '2%' and grupo_leg like '2%' join inam on grupo_isc like '2%' and grupo_inam like '2%' 
join inin on grupo_isc like '2%' and grupo_inin like '2%'
join inad on grupo_isc like '2%' and grupo_inad like '2%' join ier on grupo_isc like '2%' and grupo_ier like '2%' 
join isa on grupo_isc like '2%' and grupo_isa like '2%';

select * from isc join tic on grupo_isc like '3%' and grupo_tic like '3%' join connn on grupo_isc like '3%' and grupo_con like '3%'
join leg on grupo_isc like '3%' and grupo_leg like '3%' join inam on grupo_isc like '3%' and grupo_inam like '3%' 
join inin on grupo_isc like '3%' and grupo_inin like '3%'
join inad on grupo_isc like '3%' and grupo_inad like '3%' join ier on grupo_isc like '3%' and grupo_ier like '3%' 
join isa on grupo_isc like '3%' and grupo_isa like '3%';

select * from isc join tic on grupo_isc like '4%' and grupo_tic like '4%' join connn on grupo_isc like '4%' and grupo_con like '4%'
join leg on grupo_isc like '4%' and grupo_leg like '4%' join inam on grupo_isc like '4%' and grupo_inam like '4%' 
join inin on grupo_isc like '4%' and grupo_inin like '4%'
join inad on grupo_isc like '4%' and grupo_inad like '4%' join ier on grupo_isc like '4%' and grupo_ier like '4%' 
join isa on grupo_isc like '4%' and grupo_isa like '4%';

select * from isc join tic on grupo_isc like '5%' and grupo_tic like '5%' join connn on grupo_isc like '5%' and grupo_con like '5%'
join leg on grupo_isc like '5%' and grupo_leg like '5%' join inam on grupo_isc like '5%' and grupo_inam like '5%' 
join inin on grupo_isc like '5%' and grupo_inin like '5%'
join inad on grupo_isc like '5%' and grupo_inad like '5%' join ier on grupo_isc like '5%' and grupo_ier like '5%' 
join isa on grupo_isc like '5%' and grupo_isa like '5%';

select * from isc join tic on grupo_isc like '6%' and grupo_tic like '6%' join connn on grupo_isc like '6%' and grupo_con like '6%'
join leg on grupo_isc like '6%' and grupo_leg like '6%' join inam on grupo_isc like '6%' and grupo_inam like '6%' 
join inin on grupo_isc like '6%' and grupo_inin like '6%'
join inad on grupo_isc like '6%' and grupo_inad like '6%' join ier on grupo_isc like '6%' and grupo_ier like '6%' 
join isa on grupo_isc like '6%' and grupo_isa like '6%';

select * from isc join tic on grupo_isc like '7%' and grupo_tic like '7%' join connn on grupo_isc like '7%' and grupo_con like '7%'
join leg on grupo_isc like '7%' and grupo_leg like '7%' join inam on grupo_isc like '7%' and grupo_inam like '7%' 
join inin on grupo_isc like '7%' and grupo_inin like '7%'
join inad on grupo_isc like '7%' and grupo_inad like '7%' join ier on grupo_isc like '7%' and grupo_ier like '7%' 
join isa on grupo_isc like '7%' and grupo_isa like '7%';

select * from isc join tic on grupo_isc like '8%' and grupo_tic like '8%' join connn on grupo_isc like '8%' and grupo_con like '8%'
join leg on grupo_isc like '8%' and grupo_leg like '8%' join inam on grupo_isc like '8%' and grupo_inam like '8%' 
join inin on grupo_isc like '8%' and grupo_inin like '8%'
join inad on grupo_isc like '8%' and grupo_inad like '8%' join ier on grupo_isc like '8%' and grupo_ier like '8%' 
join isa on grupo_isc like '8%' and grupo_isa like '8%';

select * from isc join tic on grupo_isc like '9%' and grupo_tic like '9%' join connn on grupo_isc like '9%' and grupo_con like '9%'
join leg on grupo_isc like '9%' and grupo_leg like '9%' join inam on grupo_isc like '9%' and grupo_inam like '9%' 
join inin on grupo_isc like '9%' and grupo_inin like '9%'
join inad on grupo_isc like '9%' and grupo_inad like '9%' join ier on grupo_isc like '9%' and grupo_ier like '9%' 
join isa on grupo_isc like '9%' and grupo_isa like '9%';

-----------------------Esta seccion esta orientada a separar a los alumnios que tengan la posibilidad de obtener una beca------------------
create table becarios100(
idbaca100 number (5) primary key not null,
matricula_beca100 nvarchar2 (12),
nombre_beca100 nvarchar2(80),
grupo_beca100 nvarchar2(5),
edicifio_beca100 nvarchar2 (5));

create or replace procedure in_beca100
as
begin
    
    insert into becarios100
    select id_alumnos, matricula_alu, nombre_alu ||' '||apellido_alu_pa ||' '||apellido_alu_ma , grupo_alu, edicifio_alu
    from alumnoss
    where promedio_alu>=95 ;   --where

end;
execute in_beca100;

create table becarios75(
idbaca75 number (5) primary key not null,
matricula_beca75 nvarchar2 (12),
nombre_beca75 nvarchar2(80),
grupo_beca75 nvarchar2(5),
edicifio_beca75 nvarchar2 (5));

create or replace procedure in_beca75
as
begin
    
    insert into becarios75
    select id_alumnos, matricula_alu, nombre_alu ||' '||apellido_alu_pa ||' '||apellido_alu_ma , grupo_alu, edicifio_alu
    from alumnoss
    where promedio_alu>=92 and promedio_alu<=94 ;   --where

end;

execute in_beca75;

create table becarios50(
idbaca50 number (5) primary key not null,
matricula_beca50 nvarchar2 (12),
nombre_beca50 nvarchar2(80),
grupo_beca50 nvarchar2(5),
edicifio_beca50 nvarchar2 (5));

create or replace procedure in_beca50
as
begin
    
    insert into becarios50
    select id_alumnos, matricula_alu, nombre_alu ||' '||apellido_alu_pa ||' '||apellido_alu_ma , grupo_alu, edicifio_alu
    from alumnoss
    where promedio_alu>=90 and promedio_alu<=91 ;   --where

end;

execute in_beca50;

create table becarios35(
idbaca35 number (5) primary key not null,
matricula_beca35 nvarchar2 (12),
nombre_beca35 nvarchar2(80),
grupo_beca35 nvarchar2(5),
edicifio_beca35 nvarchar2 (5));

create or replace procedure in_beca35
as
begin
    
    insert into becarios35
    select id_alumnos, matricula_alu, nombre_alu ||' '||apellido_alu_pa ||' '||apellido_alu_ma , grupo_alu, edicifio_alu
    from alumnoss
    where promedio_alu>=87 and promedio_alu<=89 ;   --where

end;

execute in_beca35;

create table becarios25(
idbaca25 number (5) primary key not null,
matricula_beca25 nvarchar2 (12),
nombre_beca25 nvarchar2(80),
grupo_beca25 nvarchar2(5),
edicifio_beca25 nvarchar2 (5));

create or replace procedure in_beca25
as
begin
    
    insert into becarios25
    select id_alumnos, matricula_alu, nombre_alu ||' '||apellido_alu_pa ||' '||apellido_alu_ma , grupo_alu, edicifio_alu
    from alumnoss
    where promedio_alu>=84 and promedio_alu<=86 ;   --where

end;

execute in_beca25;

create table becarios10(
idbaca10 number (5) primary key not null,
matricula_beca10 nvarchar2 (12),
nombre_beca10 nvarchar2(80),
grupo_beca10 nvarchar2(5),
edicifio_beca10 nvarchar2 (5));

create or replace procedure in_beca10
as
begin
    
    insert into becarios10
    select id_alumnos, matricula_alu, nombre_alu ||' '||apellido_alu_pa ||' '||apellido_alu_ma , grupo_alu, edicifio_alu
    from alumnoss
    where promedio_alu>=80 and promedio_alu<=83 ;   --where

end;

execute in_beca10;


drop table becarios100;

drop table becarios75; 

drop table becarios50; 

drop table becarios35; 

drop table becarios25; 

drop table becarios10;



select * from becarios100;

select * from becarios75;

select * from becarios50;

select * from becarios35;

select * from becarios25;

select * from becarios10;



