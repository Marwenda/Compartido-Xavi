/*
Nom del fitxer: Script BD_CorazonFit
Nom de la base de dades: BD_CorazonFit
Nom i cognoms dels autors: Alfonso López, Xavier Collado
Data de creació: 16/11/2021
*/
CREATE DATABASE IF NOT EXISTS CorazonFit ;
USE CorazonFit ;

CREATE TABLE EJERCICIOS (
ID int UNIQUE NOT NULL ,
Nombre varchar(50),
Aerobico boolean,
GrupoMuscular varchar(50),
HIT boolean,
Gimnasio boolean,
primary key (ID )
)engine=innodb;

CREATE TABLE CLIENTES (
ID int UNIQUE NOT NULL,
Alias varchar(15),
Pass varchar(50),
Nombre_apell varchar(50),
Email varchar(50),
Edad int,
Peso float,
Altura float,
Ejercicios_norepetir varchar(40),
=======
Ejercicios_norepetir varchar(20),
Mov_reducida boolean,
primary key (ID)
)engine=innodb;

CREATE TABLE TABLA_EJERCICIOS (
ID int not null unique,     /* 10*/
ID_Cliente int,             /* 2 */
Fecha date,
Contenido_Tabla varchar(500) ,
=======
Contenido_tabla varchar(300),    /*curl de pecho 3 repticones 5 series # curl...*/
primary key (ID, ID_Cliente),
foreign key (ID_Cliente) references CLIENTES(ID)
)engine=innodb;

CREATE TABLE FEEDBACK (
ID_Feedback int not null unique, /*1*/
Cansancio int,
G_Satisfaccion int,
Comentario varchar(500),          /*Genial*/
ID_Cliente int not null unique,  /*2*/
ID_Tabla int not null unique,   /*10*/
primary key (ID_Feedback),
foreign key (ID_Cliente) references CLIENTES(ID),
foreign key (ID_Tabla) references TABLA_EJERCICIOS(ID)
)engine=innodb;
