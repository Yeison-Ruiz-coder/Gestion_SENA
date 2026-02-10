-- programas de formación
INSERT INTO programas (Nombre_programa, Duracion_programa) VALUES
('Tecnología en Análisis y Desarrollo de Software', 24),
('Tecnólogo en Gestión Logística', 18),
('Técnico en Programación de Software', 12),
('Tecnología en Diseño Gráfico', 18),
('Técnico en Sistemas', 12);

-- modalidades
INSERT INTO modalidades (Presencial_modalidad, Virtual_modalidad) VALUES
('Presencial 100%', 'Virtual 0%'),
('Presencial 80%', 'Virtual 20%'),
('Presencial 50%', 'Virtual 50%'),
('Presencial 30%', 'Virtual 70%'),
('Presencial 0%', 'Virtual 100%');

-- competencias
INSERT INTO competencias (Nombre_competencia, Duracion_competencia, Descripcion_competencia) VALUES
('Programación Básica', 120, 'Fundamentos de programación y lógica algorítmica'),
('Base de Datos', 90, 'Diseño y administración de bases de datos relacionales'),
('Desarrollo Web', 150, 'Creación de aplicaciones web frontend y backend'),
('Inglés Técnico', 60, 'Comunicación en inglés para entornos tecnológicos'),
('Gestión de Proyectos', 80, 'Metodologías ágiles y gestión de proyectos TI');

-- instructores
INSERT INTO instructor (Id_documento_instructor, Nombre_instructor, Apellido_instructor, Telefono_instructor, Correo_instructor) VALUES
(1001, 'Carlos', 'Gómez', 310111111, 'carlos.gomez@sena.edu.co'),
(1002, 'Ana', 'Rodríguez', 320222222, 'ana.rodriguez@sena.edu.co'),
(1003, 'Luis', 'Martínez', 300333333, 'luis.martinez@sena.edu.co'),
(1004, 'María', 'López', 315444444, 'maria.lopez@sena.edu.co'),
(1005, 'Pedro', 'Sánchez', 318555555, 'pedro.sanchez@sena.edu.co');

-- aprendices
INSERT INTO aprendiz (Id_documento_aprendiz, Nombre_aprendiz, Apellido_aprendiz, Telefono_aprendiz, Correo_aprendiz, Ficha_aprendiz, Id_programa_aprendiz) VALUES
(2001, 'Juan', 'Pérez', 311666666, 'juan.perez@misena.edu.co', 2557865, 1),
(2002, 'Sofía', 'Ramírez', 312777777, 'sofia.ramirez@misena.edu.co', 2557865, 1),
(2003, 'Andrés', 'Díaz', 313888888, 'andres.diaz@misena.edu.co', 2557901, 2),
(2004, 'Camila', 'Torres', 314999999, 'camila.torres@misena.edu.co', 2557923, 3),
(2005, 'Diego', 'Vargas', 317000000, 'diego.vargas@misena.edu.co', 2557934, 4);

-- modalidad-programa
INSERT INTO modalidad_programa (modalidades_Id_modalidad, programas_Id_programa) VALUES
(1, 1),  
(3, 1),  
(5, 2),  
(2, 3),  
(4, 4);  

-- competencia-programa
INSERT INTO competencia_programa (programas_Id_programa, competencias_Id_competencia) VALUES
(1, 1),  
(1, 2),  
(1, 3),  
(2, 2),  
(3, 1);  

-- competencia-instructor
INSERT INTO competencia_instructor (competencias_Id_competencia, instructor_Id_documento_instructor) VALUES
(1, 1001), 
(2, 1001), 
(3, 1002),  
(4, 1003),  
(5, 1004);  

-- relaciones instructor-programa
INSERT INTO instructor_programa (instructor_Id_documento_instructor, programas_Id_programa) VALUES
(1001, 1),  
(1001, 2),  
(1002, 1),  
(1003, 3),  
(1004, 4);