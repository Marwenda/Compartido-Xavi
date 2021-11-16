INSERT INTO EJERCICIOS(ID,Nombre,Aerobico,GrupoMuscular,HIT,Gimnasio)
VALUES  (1,"Press Banca", FALSE, "Torso" , FALSE, TRUE ),
        (2,"Press Hombro", FALSE, "Torso" , FALSE, TRUE ),
        (3,"Curl de Biceps", FALSE, "Torso" , FALSE, TRUE ),
        (4,"Sentadilla con peso", FALSE, "Piernas" , FALSE, TRUE ),
        (5,"Trotar", TRUE, "Full Body" , TRUE, FALSE ) ;


INSERT INTO CLIENTES(ID, Alias,Pass,Nombre_apell,Email,Edad,Peso,Altura,Ejercicios_norepetir,Mov_reducida)
VALUES  (1,"Miriru","Password","Maria Irun","maria@bemen3.cat",25,51.3,165.2,"Trotar",FALSE),
        (2,"Maruchan","contraseña","Kathy Perry","Kathyper@gmail.com",27,55.3,175,"Sentadilla",FALSE),
        (3,"Gordito feliz","Pastel","Antonio Julian","Felicito@hotmail.com",31,95.8,185.2,"",TRUE), 
        (4,"J","MenInBlack","Will Smith","WSmithy@gmail.com",55,88,192,"",FALSE),
        (5,"Captain","America","Chris Evans","1stAvenger@gmail.com",42,95,197,"",FALSE);

/*------------Inserció de dades ----------*/
INSERT INTO TABLA_EJERCICIOS
VALUES (1, 1, '2021-10-15', 'Press hombro 4 series por 12 repeticiones #  Press banca 3 series por 11 repetiiopnes # Sentadilla con peso 3 series por 21 repeticiones # '),
        (2, 2, '2021-10-16', 'Curl biceps 5 series por 10 repeticiones # Sentadilla con peso 3 series por 21 repeticiones # Trotar 20 minutos ritmo relajado'),
        (3, 3, '2021-10-17', 'Sentadilla con peso 3 series por 21 repeticiones # Trotar 20 minutos ritmo relajado # Press banca 3 series por 11 repetiiopnes'),
        (4, 4, '2021-10-18', 'Trotar 20 minutos ritmo relajado # Press banca 3 series por 11 repetiiopnes # Press hombro 4 series por 12 repeticiones # Curl biceps 5 series por 10 repeticiones'),
        (5, 5, '2021-10-19', 'Press banca 3 series por 11 repetiiopnes # Curl biceps 5 series por 10 repeticiones # Sentadilla con peso 3 series por 21 repeticiones');

INSERT INTO FEEDBACK
VALUES (1, 10, 9, 'Me ha encantado el Curl biceps!', 2, 2),
        (2, 8, 10, 'Me ha encantado, una tabla completisima!', 1, 1),
        (3, 6, 6, 'No me ha gustado mucho, un poco repetitiva!', 3, 3),
        (4, 10, 5, 'Demasiado dura, estoy rebentado..!', 5, 5),
        (5, 10, 4, 'No me ha gustado... una tabla poco completa...!', 4, 4);







