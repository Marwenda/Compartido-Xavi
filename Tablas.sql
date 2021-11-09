
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
Altura int,
Ejerciciosnorepetir int,
Capacitat int ,
primary key (ID)
foreign key (ejerciciosnorepetir) REFERENCES EJERCICIOS(ID)
)engine=innodb;
CREATE TABLE TABLA_EJERCICIOS (
ID int not null unique,
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

CREATE TABLE FEEDBACK (
N_Feedback int not null unique,
Cansancio int,
G_Satisfaccion int,
Cometnario varchar(500),
ID_Cliente int not null unique,
ID_Tabla int not null unique,
primary key (N_Feedback),
foreign key (ID_Cliente) references CLIENTES(ID),
foreign key (ID_Tabla) references TABLAS_EJERCICIOS(ID)
)engine=innodb;
