CREATE DATABASE FinalBicicleteria_db;

USE FinalBicicleteria_db;

CREATE TABLE Bicicleteria (
	idBicicleteria INT NOT NULL,
    ganancias VARCHAR(45),
    cantVentas INT,
    PRIMARY KEY (idBicicleteria)
);

CREATE TABLE Bicicleta (
	nroDeSerie VARCHAR(45) UNIQUE,
    modelo VARCHAR(45),
    anio INT,
    precio VARCHAR(45),
    Bicicleteria_idBicicleteria INT,
    FOREIGN KEY(Bicicleteria_idBicicleteria) 
    REFERENCES Bicicleteria(idBicicleteria),
    PRIMARY KEY (nroDeSerie)
);

INSERT INTO Bicicleteria (idBicicleteria, ganancias, cantVentas)
VALUES	(1, "300000", 25),
		(2, "250000", 17),
        (3, "120000", 8);

INSERT INTO Bicicleta (nroDeSerie, modelo, anio, precio, Bicicleteria_idBicicleteria)
VALUES	("FAG2304", "de Montaña", 2019, "25000", 1),
		("DEL5866", "de Ruta", 2021, "40000", 3),
        ("ARG1546", "de Montaña", 2020, "30000", 2),
        ("ABC1234", "Urbana", 2020, "20000", 1),
        ("ASD1111", "Urbana", 2018, "35000", 1),
        ("QWE7894", "de Montaña", 2021, "45000", 3);
        