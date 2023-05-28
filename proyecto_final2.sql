create table prof(
id_prof number (5) primary key not null,
nombre_prof nvarchar2(30),
apellido_prof_pa nvarchar2 (30),
apellido_prof_ma nvarchar2 (30),
carrera_prof nvarchar2 (5),
nombre_clase_prof nvarchar2 (80),
grupo_prof nvarchar2 (5)
);

create or replace procedure pa_in_prof
(id_prof in number  default 0, nombre_prof in nvarchar2 default 'nombre',
apellido_prof_pa in nvarchar2 default 'apellido paterno',apellido_prof_ma in nvarchar2 default 'apellido materno',
carrera_prof in nvarchar2 default 'Sin carrera',nombre_clase_prof in nvarchar2 default 'Null',grupo_prof in nvarchar2 default 'Null' )
as 
begin 
insert into prof values (id_prof, nombre_prof, apellido_prof_pa, apellido_prof_ma, carrera_prof, nombre_clase_prof, grupo_prof);
end;
-----------------------Esta seccion esta orientada a almacenar los datos de los profesores------------------
execute pa_in_prof (1, 'Marco Antonio', 'Cabrera', 'Mendez','ISC','aaaaaaaaaaaa','6S11');
execute pa_in_prof (2, 'Marco Antonio', 'Cabrera', 'Mendez','TIC','bbbbbbbbbbbb','6S11');
execute pa_in_prof (3, 'Marco Antonio', 'Cabrera', 'Mendez','CP','cccccccccccc','6S11');
execute pa_in_prof (4, 'Marco Antonio', 'Cabrera', 'Mendez','LEG','dddddddddddd','1S11');
execute pa_in_prof (5, 'Marco Antonio', 'Cabrera', 'Mendez','INAM','eeeeeeeeeeeeeee','1S11');
execute pa_in_prof (6, 'Marco Antonio', 'Cabrera', 'Mendez','ININ','fffffffffffffff','1S11');
execute pa_in_prof (7, 'Marco Antonio', 'Cabrera', 'Mendez','INAD','fffffffffffffff','6S11');
execute pa_in_prof (8, 'Marco Antonio', 'Cabrera', 'Mendez','IER','fffffffffffffff','6S11');
execute pa_in_prof (9, 'Marco Antonio', 'Cabrera', 'Mendez','ISA','fffffffffffffff','1S11');
execute pa_in_prof (10, 'Marco Antonio', 'Cabrera', 'Mendez','TIC','fffffffffffffff','1S11');
execute pa_in_prof (11, 'Marco Antonio', 'Cabrera', 'Mendez','CP','fffffffffffffff', '1S11');

select * from prof;

drop table prof;
-----------------------Esta seccion esta orientada a almacenar los datos de los profesores y se separan por carreras------------------
create table isc1(
idisc1 number (5) primary key not null,
nombre_isc1 nvarchar2(80),
grupo_isc1 nvarchar2(5),
clase_isc1 nvarchar2 (80));

create or replace procedure in_isc1
as
begin
    
    insert into isc1 
    select id_prof, nombre_prof ||' '||apellido_prof_pa ||' '||apellido_prof_ma , grupo_prof, nombre_clase_prof
    from prof
    where carrera_prof='ISC';   --where

end;

execute in_isc1;

create table tic1(
idtic1 number (5) primary key not null,
nombre_tic1 nvarchar2(80),
grupo_tic1 nvarchar2(5),
clase_tic1 nvarchar2 (80));

create or replace procedure in_tic1
as
begin
    
    insert into tic1 
    select id_prof, nombre_prof ||' '||apellido_prof_pa ||' '||apellido_prof_ma , grupo_prof, nombre_clase_prof
    from prof
    where carrera_prof='TIC';   --where

end;

execute in_tic1;

create table connn1(
idcon1 number (5) primary key not null,
nombre_con1 nvarchar2(80),
grupo_con1 nvarchar2(5),
clase_con1 nvarchar2 (80));

create or replace procedure in_con1
as
begin
    
    insert into connn1 
    select id_prof, nombre_prof ||' '||apellido_prof_pa ||' '||apellido_prof_ma , grupo_prof, nombre_clase_prof
    from prof
    where carrera_prof='CP';   --where

end;

execute in_con1;

create table leg1(
idleg1 number (5) primary key not null,
nombre_leg1 nvarchar2(80),
grupo_leg1 nvarchar2(5),
clase_leg1 nvarchar2 (80));

create or replace procedure in_leg1
as
begin
    
    insert into leg1 
    select id_prof, nombre_prof ||' '||apellido_prof_pa ||' '||apellido_prof_ma , grupo_prof, nombre_clase_prof
    from prof
    where carrera_prof='LEG';   --where

end;

execute in_leg1;

create table inam1(
idinam1 number (5) primary key not null,
nombre_inam1 nvarchar2(80),
grupo_inam1 nvarchar2(5),
clase_inam1 nvarchar2 (80));

create or replace procedure in_inam1
as
begin
    
    insert into inam1 
    select id_prof, nombre_prof ||' '||apellido_prof_pa ||' '||apellido_prof_ma , grupo_prof, nombre_clase_prof
    from prof
    where carrera_prof='INAM';   --where

end;

execute in_inam1;

create table inin1(
idinin1 number (5) primary key not null,
nombre_inin1 nvarchar2(80),
grupo_inin1 nvarchar2(5),
clase_inin1 nvarchar2 (80));

create or replace procedure in_inin1
as
begin
    
    insert into inin1 
    select id_prof, nombre_prof ||' '||apellido_prof_pa ||' '||apellido_prof_ma , grupo_prof, nombre_clase_prof
    from prof
    where carrera_prof='ININ';   --where

end;

execute in_inin1;

create table inad1(
idinad1 number (5) primary key not null,
nombre_inad1 nvarchar2(80),
grupo_inad1 nvarchar2(5),
clase_inad1 nvarchar2 (80));

create or replace procedure in_inad1
as
begin
    
    insert into inad1
    select id_prof, nombre_prof ||' '||apellido_prof_pa ||' '||apellido_prof_ma , grupo_prof, nombre_clase_prof
    from prof
    where carrera_prof='INAD';   --where

end;

execute in_inad1;

create table ier1(
idier1 number (5) primary key not null,
nombre_ier1 nvarchar2(80),
grupo_ier1 nvarchar2(5),
clase_ier1 nvarchar2 (80));

create or replace procedure in_ier1
as
begin
    
    insert into ier1
    select id_prof, nombre_prof ||' '||apellido_prof_pa ||' '||apellido_prof_ma , grupo_prof, nombre_clase_prof
    from prof
    where carrera_prof='IER';   --where

end;

execute in_ier1;


create table isa1(
idisa1 number (5) primary key not null,
nombre_isa1 nvarchar2(80),
grupo_isa1 nvarchar2(5),
clase_isa1 nvarchar2 (80));

create or replace procedure in_isa1
as
begin
    
    insert into isa1
    select id_prof, nombre_prof ||' '||apellido_prof_pa ||' '||apellido_prof_ma , grupo_prof, nombre_clase_prof
    from prof
    where carrera_prof='ISA';   --where

end;

execute in_isa1;



drop table isc1;

drop table tic1;

drop table connn1;

drop table leg1;

drop table inam1;

drop table inin1;

drop table inad1;

drop table ier1;

drop table isa1;



select * from isc1;

select * from tic1;

select * from connn1;

select * from leg1;

select * from inam1;

select * from inin1;

select * from inad1;

select * from ier1;

select * from isa1;




