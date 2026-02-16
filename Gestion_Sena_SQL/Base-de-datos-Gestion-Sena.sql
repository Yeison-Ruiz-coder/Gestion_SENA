CREATE DATABASE IF NOT EXISTS Gestion_Sena;
USE Gestion_Sena;


CREATE TABLE aprendices (
    Documento_aprendiz INT PRIMARY KEY,
    Nombre_aprendiz VARCHAR(50),
    Apellido_aprendiz VARCHAR(50),
    Telefono_aprendiz VARCHAR(20),
    Correo_aprendiz VARCHAR(100)
) ENGINE = INNODB;


CREATE TABLE modalidades (
    Id_modalidad INT PRIMARY KEY AUTO_INCREMENT,
    Tipo_modalidad ENUM('Presencial','Virtual') NOT NULL

) ENGINE = INNODB;

CREATE TABLE programas (
    Id_programa INT PRIMARY KEY AUTO_INCREMENT,
    Nombre_programa VARCHAR(100),
    Duracion_programa VARCHAR(50),
    Id_modalidad INT,
    
    CONSTRAINT fk_programas_modalidades
    FOREIGN KEY (Id_modalidad)
    REFERENCES modalidades(Id_modalidad)
) ENGINE = INNODB;


CREATE TABLE inscripciones (
    Id_inscripcion INT PRIMARY KEY AUTO_INCREMENT,
    Documento_aprendiz INT,
    Id_programa INT,
    Ficha_inscripcion VARCHAR(30),
    Fecha_inicio DATE,
    Fecha_fin DATE,
    Estado_inscripcion ENUM('Activa','Finalizada','Cancelada','Suspendida') NOT NULL,

    
    CONSTRAINT fk_inscripciones_aprendices
    FOREIGN KEY (Documento_aprendiz)
    REFERENCES aprendices(Documento_aprendiz),
    
    CONSTRAINT fk_inscripciones_programas
    FOREIGN KEY (Id_programa)
    REFERENCES programas(Id_programa)
) ENGINE = INNODB;


CREATE TABLE competencias (
    Id_competencia INT PRIMARY KEY AUTO_INCREMENT,
    Nombre_competencia VARCHAR(100),
    Duracion_competencia VARCHAR(50),
    Descripcion_competencia TEXT
) ENGINE = INNODB;


CREATE TABLE competencias_programas (
    Id_competencia_programa INT PRIMARY KEY AUTO_INCREMENT,
    Id_competencia INT,
    Id_programa INT,
    
    CONSTRAINT fk_comp_prog_competencias
    FOREIGN KEY (Id_competencia)
    REFERENCES competencias(Id_competencia),
    
    CONSTRAINT fk_comp_prog_programas
    FOREIGN KEY (Id_programa)
    REFERENCES programas(Id_programa),
    
    CONSTRAINT unique_competencia_programa
    UNIQUE (Id_competencia, Id_programa)
) ENGINE = INNODB;

CREATE TABLE instructores (
    Documento_instructor INT PRIMARY KEY,
    Nombre_instructor VARCHAR(50),
    Apellido_instructor VARCHAR(50),
    Telefono_instructor VARCHAR(20),
    Correo_instructor VARCHAR(100)
) ENGINE = INNODB;


CREATE TABLE competencias_instructores (
    Id_competencia_instructor INT PRIMARY KEY AUTO_INCREMENT,
    Id_competencia INT,
    Documento_instructor INT,
    Fecha_certificacion DATE,
    
    CONSTRAINT fk_comp_inst_competencias
    FOREIGN KEY (Id_competencia)
    REFERENCES competencias(Id_competencia),
    
    CONSTRAINT fk_comp_inst_instructores
    FOREIGN KEY (Documento_instructor)
    REFERENCES instructores(Documento_instructor),
    
    CONSTRAINT unique_competencia_instructor
    UNIQUE (Id_competencia, Documento_instructor)
) ENGINE = INNODB;


CREATE TABLE instructores_programas (
    Id_instructor_programa INT PRIMARY KEY AUTO_INCREMENT,
    Documento_instructor INT,
    Id_programa INT,
    Fecha_asignacion DATE,
    
    CONSTRAINT fk_inst_prog_instructores
    FOREIGN KEY (Documento_instructor)
    REFERENCES instructores(Documento_instructor),
    
    CONSTRAINT fk_inst_prog_programas
    FOREIGN KEY (Id_programa)
    REFERENCES programas(Id_programa),
    
    CONSTRAINT unique_instructor_programa
    UNIQUE (Documento_instructor, Id_programa)
) ENGINE = INNODB;