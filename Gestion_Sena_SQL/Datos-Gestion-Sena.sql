INSERT INTO aprendices VALUES
(1001,'Juan','Perez','3001111111','juan.perez@mail.com'),
(1002,'Maria','Gomez','3002222222','maria.gomez@mail.com'),
(1003,'Carlos','Lopez','3003333333','carlos.lopez@mail.com'),
(1004,'Ana','Martinez','3004444444','ana.martinez@mail.com'),
(1005,'Luis','Rodriguez','3005555555','luis.rodriguez@mail.com'),
(1006,'Sofia','Hernandez','3006666666','sofia.hernandez@mail.com'),
(1007,'David','Ramirez','3007777777','david.ramirez@mail.com'),
(1008,'Laura','Torres','3008888888','laura.torres@mail.com'),
(1009,'Miguel','Castro','3009999999','miguel.castro@mail.com'),
(1010,'Valentina','Morales','3010000000','valentina.morales@mail.com');


INSERT INTO modalidades (Tipo_modalidad) VALUES
('Presencial'),
('Virtual');


INSERT INTO programas (Nombre_programa,Duracion_programa,Id_modalidad) VALUES
('Tecnico en Sistemas','12 meses',1),
('Tecnico en Contabilidad','12 meses',1),
('Tecnico en Cocina','12 meses',1),
('Tecnologo en ADSO','24 meses',1),
('Tecnologo en Gestion Empresarial','24 meses',2),
('Tecnico en Marketing','12 meses',2),
('Tecnologo en Logistica','24 meses',1),
('Tecnico en Electricidad','12 meses',1),
('Tecnologo en Multimedia','24 meses',2),
('Tecnico en Recursos Humanos','12 meses',2);


INSERT INTO inscripciones
(Documento_aprendiz,Id_programa,Ficha_inscripcion,Fecha_inicio,Fecha_fin,Estado_inscripcion)
VALUES
(1001,1,'F001','2025-01-10','2025-12-10','Activa'),
(1002,2,'F002','2024-01-10','2024-12-10','Finalizada'),
(1003,3,'F003','2025-02-01','2025-11-30','Activa'),
(1004,4,'F004','2023-01-15','2024-12-15','Finalizada'),
(1005,5,'F005','2025-03-01','2026-12-01','Activa'),
(1006,6,'F006','2024-02-10','2024-11-10','Cancelada'),
(1007,7,'F007','2025-04-01','2026-12-01','Suspendida'),
(1008,8,'F008','2025-05-01','2026-05-01','Activa'),
(1009,9,'F009','2024-03-01','2025-03-01','Finalizada'),
(1010,10,'F010','2025-06-01','2026-06-01','Activa');


INSERT INTO competencias (Nombre_competencia,Duracion_competencia,Descripcion_competencia) VALUES
('Analisis de requerimientos','3 meses','Analizar necesidades del cliente'),
('Programacion Web','4 meses','Desarrollo de aplicaciones web'),
('Base de Datos','3 meses','Modelado y gestion de datos'),
('Contabilidad Basica','3 meses','Registro contable empresarial'),
('Cocina Internacional','4 meses','Preparacion de platos internacionales'),
('Marketing Digital','3 meses','Estrategias digitales'),
('Logistica Empresarial','4 meses','Gestion de inventarios'),
('Electricidad Basica','3 meses','Instalaciones electricas'),
('Diseno Multimedia','4 meses','Creacion de contenido visual'),
('Gestion Humana','3 meses','Administracion de talento humano');


INSERT INTO competencias_programas (Id_competencia,Id_programa) VALUES
(1,4),
(2,4),
(3,4),
(4,2),
(5,3),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10);


INSERT INTO instructores
(Documento_instructor,Nombre_instructor,Apellido_instructor,Telefono_instructor,Correo_instructor)
VALUES
(2001,'Andres','Vargas','3101111111','andres.vargas@mail.com'),
(2002,'Patricia','Suarez','3102222222','patricia.suarez@mail.com'),
(2003,'Fernando','Diaz','3103333333','fernando.diaz@mail.com'),
(2004,'Claudia','Rojas','3104444444','claudia.rojas@mail.com'),
(2005,'Ricardo','Mendoza','3105555555','ricardo.mendoza@mail.com'),
(2006,'Diana','Castillo','3106666666','diana.castillo@mail.com'),
(2007,'Jorge','Navarro','3107777777','jorge.navarro@mail.com'),
(2008,'Natalia','Ortega','3108888888','natalia.ortega@mail.com'),
(2009,'Camilo','Herrera','3109999999','camilo.herrera@mail.com'),
(2010,'Paula','Jimenez','3110000000','paula.jimenez@mail.com');


INSERT INTO competencias_instructores (Id_competencia,Documento_instructor,Fecha_certificacion) VALUES
(1,2001,'2020-05-10'),
(2,2002,'2019-03-15'),
(3,2003,'2021-06-20'),
(4,2004,'2018-07-25'),
(5,2005,'2017-08-30'),
(6,2006,'2022-01-12'),
(7,2007,'2020-09-09'),
(8,2008,'2019-11-11'),
(9,2009,'2021-04-18'),
(10,2010,'2023-02-22');


INSERT INTO instructores_programas (Documento_instructor,Id_programa,Fecha_asignacion) VALUES
(2001,4,'2025-01-01'),
(2002,2,'2024-01-01'),
(2003,3,'2025-02-01'),
(2004,1,'2025-01-15'),
(2005,5,'2025-03-01'),
(2006,6,'2024-02-01'),
(2007,7,'2025-04-01'),
(2008,8,'2025-05-01'),
(2009,9,'2024-03-01'),
(2010,10,'2025-06-01');
