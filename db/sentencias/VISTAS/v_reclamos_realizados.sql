CREATE OR REPLACE VIEW public.vista_reclamos_realizados AS 
 SELECT a.id,
    a.descripcion,
    a.fecha_creacion AS registro_reclamo,
    b.id_orden_servicio,
    b.id_servicio_solicitado,
    b.fecha_creacion AS dia_atendido,
    e.nombre AS tipo_servicio,
    c.nombre AS servicio_reclamado,
    d.cantidad_dias AS garantia,
    f.id_solicitud,
    g.id_cliente,
    h.nombre,
    h.apellido
   FROM reclamo a
     JOIN detalle_servicio b ON b.id = a.id_detalle_servicio
     JOIN servicio c ON c.id = b.id_servicio_solicitado
     JOIN tipo_servicio e ON e.id = c.id_tipo_servicio
     JOIN garantia d ON d.id_servicio = c.id
     JOIN orden_servicio f ON b.id_orden_servicio = f.id
     JOIN solicitud g ON f.id_solicitud = g.id
     JOIN cliente h ON g.id_cliente = h.id
  WHERE a.estatus = 'A'::bpchar;

ALTER TABLE public.vista_reclamos_realizados
  OWNER TO postgres;
