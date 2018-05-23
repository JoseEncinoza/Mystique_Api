CREATE VIEW v_citas_agenda AS
SELECT a.id,
       a.id_cliente,
       a.id_incidencia,
       a.estado,
       b.id AS cita,
       b.id_orden_servicio,
       b.id_agenda,
       b.estado AS estado_cita,
       b.fecha_creacion,
       c.id_cita,
       c.id_horario,
       d.id AS el_horario,
       d.id_bloque,
       d.id_dia_laborable,
       e.dia,
       f.hora_inicio,
       f.hora_fin,
       g.id AS orden_servicio,
       g.id_solicitud,
       g.id_orden_servicio AS otra_orden,
       g.estado AS estado_orden,
       h.id AS solicitud,
       h.id_promocion,
       h.id_cliente AS el_cliente,
       i.nombre,
       i.apellido,
       i.id_usuario,
       j.correo
       FROM agenda a
       JOIN cita b ON b.id_agenda = a.id
       JOIN horario_cita c ON c.id_cita = b.id
       JOIN horario d ON c.id_horario = d.id
       JOIN dia_laborable e ON e.id = d.id_dia_laborable
       JOIN bloque f ON f.id = d.id_bloque
       JOIN orden_servicio g ON g.id = b.id_orden_servicio
       JOIN solicitud h ON h.id = g.id_solicitud
       JOIN cliente i ON i.id = h.id_cliente
       JOIN usuario j ON j.id = i.id_usuario
       WHERE  a.estatus='A'::bpchar AND h.estado='A'
       
       
       
       
       
       
       
      
  