
CREATE DATABASE IF NOT EXISTS CorazonFit ;
USE CorazonFit ;

CREATE TABLE EJERCICIOS (
ID int UNIQUE NOT NULL,
Nombre varchar(50),
Aerobico boolean,
GrupoMuscular varchar(50),
HIT boolean,
Gimnasio boolean,
primary key (ID)
)engine=innodb;

CREATE TABLE CLIENTES (
ID int UNIQUE NOT NULL,
Alias varchar(15),
Pass varchar(50),
Nombre,apell varchar(50),
Email varchar(50),
Edad int,
Peso int,
Altura int,>
Ejerciciosnorepetir int,
Capacitat int ,
primary key (ID)
)engine=innodb;

