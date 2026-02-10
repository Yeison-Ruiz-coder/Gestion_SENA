CREATE DATABASE IF NOT EXISTS Gestion_SENA;
USE Gestion_SENA;


CREATE TABLE IF NOT EXISTS programas (
    Id_programa INT AUTO_INCREMENT PRIMARY KEY,
    Nombre_programa VARCHAR(50) NOT NULL,
    Duracion_programa INT NOT NULL
    
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS modalidades (
    Id_modalidad INT AUTO_INCREMENT PRIMARY KEY,
    Presencial_modalidad VARCHAR(50) NOT NULL,
    Virtual_modalidad VARCHAR(50) NOT NULL
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS competencias (
    Id_competencia INT AUTO_INCREMENT PRIMARY KEY,
    Nombre_competencia VARCHAR(50) NOT NULL,
    Duracion_competencia INT NOT NULL,
    Descripcion_competencia TEXT NOT NULL
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS instructor (
    Id_documento_instructor INT AUTO_INCREMENT PRIMARY KEY,
    Nombre_instructor VARCHAR(50) NOT NULL,
    Apellido_instructor VARCHAR(50) NOT NULL,
    Telefono_instructor INT NOT NULL,
    Correo_instructor VARCHAR(50) NOT NULL
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS aprendiz (
    Id_documento_aprendiz INT AUTO_INCREMENT PRIMARY KEY,
    Nombre_aprendiz VARCHAR(50) NOT NULL,
    Apellido_aprendiz VARCHAR(50) NOT NULL,
    Telefono_aprendiz INT NOT NULL,
    Correo_aprendiz VARCHAR(50) NOT NULL,
    Ficha_aprendiz INT NOT NULL,
    
    
    Id_programa_aprendiz INT NOT NULL,
    
    CONSTRAINT fkaprendiz_programas
	FOREIGN KEY (Id_programa_aprendiz)
	REFERENCES programas(Id_programa)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS modalidad_programa (
    Id_modalidad_programa INT AUTO_INCREMENT PRIMARY KEY,
    modalidades_Id_modalidad INT NOT NULL,
    programas_Id_programa INT NOT NULL,

    CONSTRAINT fkmodalidad_programa_modalidades
	FOREIGN KEY (modalidades_Id_modalidad)
    REFERENCES modalidades(Id_modalidad),

    CONSTRAINT fkmodalidad_programa_programas
	FOREIGN KEY (programas_Id_programa)
    REFERENCES programas(Id_programa)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS competencia_programa (
    Id_competencia_programa INT AUTO_INCREMENT PRIMARY KEY,
    modalidades_Id_modalidad INT NOT NULL,
    competencias_Id_competencia INT NOT NULL,

    CONSTRAINT fkcompetencia_programa_competencias
	FOREIGN KEY (modalidades_Id_modalidad)
    REFERENCES modalidades(Id_modalidad),

    CONSTRAINT fkcompetencia_programa_programas
	FOREIGN KEY (competencias_Id_competencia )
    REFERENCES competencias(Id_competencia)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS competencia_instructor (
    Id_competencia_instructor INT AUTO_INCREMENT PRIMARY KEY,
    competencias_Id_competencia INT NOT NULL,
	instructor_Id_instructor INT NOT NULL,

    CONSTRAINT fkcompetencia_instructor_instructor
	FOREIGN KEY (instructor_Id_instructor)
    REFERENCES instructor(Id_instructor),

    CONSTRAINT fkcompetencia_instructor_Competencias
	FOREIGN KEY (competencias_Id_competencia )
    REFERENCES competencias(Id_competencia)
) ENGINE=INNODB;