
CREATE DATABASE IF NOT EXISTS CorazonFit ;
USE CorazonFit ;

CREATE TABLE EJERCICIOS (
ID int,
Nombre varchar(50),
Aerobico boolean,
Nombre varchar(50),
Aerobico boolean,
primary key (ID)
)engine=innodb;

CREATE TABLE AULES (
Codi varchar(7),
Capacitat int ,
primary key (codi)
)engine=innodb;

