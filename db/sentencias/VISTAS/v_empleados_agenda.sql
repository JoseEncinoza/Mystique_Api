CREATE VIEW v_empleados_orden AS
SELECT a.id_empleado,
       a.id_orden_servicio,
       b.id,
       b.nombre,
       b.apellido,
       b.cedula,
       b.telefono,
       b.direccion,
       b.fecha_nacimiento
       FROM empleado_asignado a
       JOIN empleado b ON b.id = a.id_empleado
       WHERE b.estatus='A'::bpchar
       