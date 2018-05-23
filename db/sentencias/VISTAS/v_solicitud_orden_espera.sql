CREATE VIEW v_solicitud_orden_espera AS
 SELECT     a.id,
	    a.id_cliente,
	    a.id_promocion,
	    ( SELECT count(1) AS count
           FROM servicio_solicitado c
          WHERE c.id_solicitud = a.id) AS cantidad_servicios,
	    a.sexo,
	    a.empleado,
	    a.estado,

	    c.id AS presupuesto,
	    c.id_solicitud AS s_presupuesto,
	    c.monto_total,

	    b.id AS orden_servicio,
	    b.id_orden_servicio,
	    b.id_solicitud
	    
	    
   FROM solicitud a
     JOIN orden_servicio b ON a.id = b.id_solicitud
     JOIN presupuesto c ON c.id_solicitud = a.id
  WHERE a.estatus = 'A'::bpchar AND b.estado='E';