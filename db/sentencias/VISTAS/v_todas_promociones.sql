CREATE VIEW v_todas_promociones AS
SELECT a.id AS promocion,
       a.id_servicio,
       a.nombre,
       a.descripcion,
       a.porcentaje_descuento,
       a.precio_promocion,
       a.imagen,
       a.fecha_inicio,
       a.fecha_fin,
       a.estatus,
       a.fecha_creacion,
       a.estado,
       b.id AS el_id_servicio,
       (c.nombre || ' ' || b.nombre  || ' ' || d.nombre) AS servicios
    FROM promocion a
       JOIN servicio b ON b.id = a.id_servicio
          JOIN tipo_servicio c ON c.id = b.id_tipo_servicio
     JOIN categoria_servicio d ON d.id = c.id_categoria_servicio
       WHERE a.estatus='A'::bpchar;
