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

CREATE TABLE TABLA EJERCICIOS (
ID int,
ID_Cliente int,
Fecha date,
ID_Ejercicios int,
Nombre_Ejercicio varchar(50),
Series_Ejercicio int,
Repeticiones_por_serie int,
primary key (ID, ID_Cliente),
foreign key (ID_Cliente) references CLIENTES(ID)
foreign key (ID_Ejercicio) references EJERCICIOS(ID)
foreign key (Nombre_Ejercicio) references EJERCICIOS(Nombre)
)engine=innodb;