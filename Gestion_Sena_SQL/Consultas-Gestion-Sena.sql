SELECT * FROM aprendices WHERE Nombre_aprendiz LIKE 'M%' AND Correo_aprendiz LIKE '%mail.com';

SELECT * FROM instructores WHERE Apellido_instructor LIKE '%ez%' OR Nombre_instructor LIKE 'A%';

SELECT * FROM competencias WHERE Duracion_competencia LIKE '3%'
AND (
    Descripcion_competencia LIKE '%Gestion%'
    OR Descripcion_competencia LIKE '%Analizar%'
);


SELECT * FROM instructores WHERE Apellido_instructor LIKE '%ez' OR Nombre_instructor LIKE 'A%';


SELECT * FROM inscripciones WHERE (Estado_inscripcion = 'Activa' OR Estado_inscripcion = 'Suspendida') AND Fecha_inicio LIKE '2025%';

