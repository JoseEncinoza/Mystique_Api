INSERT INTO dia_laborable (nombre) VALUES
('Lunes'),
('Martes'),
('Miercoles'),
('Jueves'),
('Viernes'),
('Sabado'),
('Domingo');

INSERT INTO bloque (hora_inicio, hora_fin) VALUES
('07:00', '08:00'),
('08:00', '09:00'),
('09:00', '10:00'),
('10:00', '11:00'),
('11:00', '12:00'),
('14:00', '15:00'),
('15:00', '16:00'),
('16:00', '17:00'),
('17:00', '18:00'),
('18:00', '19:00'),
('19:00', '20:00');

INSERT INTO criterio (nombre) VALUES
('Atención al cliente'),
('Infraestructura del local'),
('Ambientación del local'),
('Calidad de los servicios'),
('Precios de los servicios');

INSERT INTO tipo_respuesta_presupuesto(nombre) VALUES
('En acuerdo'),
('En desacuerdo por precio elevado'),
('En desacuerdo por precio elevado en relacion a la competencia'),
('En desacuerdo por precio elevado respecto a relacion calidad/servicio '),
('En desacuerdo por otras razones');

INSERT INTO tipo_respuesta_solicitud(nombre) VALUES
('Solicitud Aprobada'),
('Rechazada por falta de insumos'),
('Rechazada por indisponibilidad de empleado'),
('Rechazada por día no laborable'),
('Rechazada por razones externas');

INSERT INTO tipo_respuesta_comentario (nombre) VALUES
('Agradecimiento'),
('Sugerencia considerada'),
('Sugerencia no procesada'),
('Consulta solucionada'),
('Queja procesada'),
('Queja no procesada');

INSERT INTO razon_incidencia (nombre) VALUES
('Empleado'),
('Negocio'),
('Cliente'),
('Durante el servicio');

INSERT INTO tipo_incidencia (nombre, id_razon_incidencia) VALUES
('Retraso del empleado', 1),
('Imposibilidad de asistencia del empleado', 1),
('Día No laborable', 2),
('Circunstancias externas', 2),
('Insumos necesarios agotados', 2),
('Retraso del cliente', 3),
('Indisponibilidad del cliente', 3),
('Insumo agotado', 4),
('Falla electrica', 4),
('Peticion del cliente', 4);


INSERT INTO tipo_reclamo (nombre) VALUES
('Atención'),
('Resultado no esperado'),
('Alergia por Producto');


INSERT INTO tipo_respuesta_reclamo (nombre) VALUES
('Procede'),
('No procede por vencimiento de garantia'),
('No procede por incidencias durante el servicio'),
('No procede por incongruencia en el reclamo'),
('No procede por condiciones del servicio');












