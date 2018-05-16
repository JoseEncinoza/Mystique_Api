CREATE OR REPLACE VIEW public.vista_solicitudes AS 
 SELECT     a.id,
	    a.id_cliente,
	    a.id_promocion,
	    ( SELECT count(1) AS count
           FROM servicio_solicitado c
          WHERE c.id_solicitud = a.id) AS cantidad_servicios,
	    a.sexo,
	    a.empleado,
	    a.estado,
	    b.nombre,
	    b.apellido
   FROM solicitud a
     JOIN cliente b ON a.id_cliente = b.id
  WHERE a.estatus = 'A'::bpchar;