CREATE VIEW v_agendas AS
SELECT a.id,
       a.id_cliente,
       a.id_incidencia,
       a.id_cita,
       a.estado,
       b.id AS cliente,
       (b.nombre || ' ' || b.apellido) AS nombre_cliente,
     
       d.id AS cita,
       d.fecha_cita,
       d.id_bloque,
       
       ARRAY (SELECT e.id
         FROM empleado e
          JOIN empleado_asignado f ON a.id = f.id_agenda
         WHERE f.id_empleado = e.id AND e.estatus = 'A'::bpchar) AS empleados_asignado,

       ARRAY(SELECT g.id 
       FROM horario g
       JOIN horario_agenda h ON h.id_agenda = a.id
       JOIN horario_empleado i ON i.id = h.id_horario_empleado
       WHERE i.id_horario = g.id  AND g.estatus = 'A'::bpchar) AS horarios_agenda
       
       FROM agenda a
       JOIN cita d ON d.id = a.id_cita
       JOIN cliente b ON b.id = a.id_cliente
         WHERE a.estatus = 'A'::bpchar
       
       
       
       
       
       
       
       