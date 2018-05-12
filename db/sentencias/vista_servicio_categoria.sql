-- View: public.vista_servicio_categoria

-- DROP VIEW public.vista_servicio_categoria;

CREATE OR REPLACE VIEW public.vista_servicio_categoria AS 
 SELECT a.id,
    b.nombre AS tipo_servicio,
    a.nombre,
    a.precio,
    a.descripcion,
    c.nombre AS categoria_servicio
   FROM servicio a
     JOIN tipo_servicio b ON b.id = a.id_tipo_servicio
     JOIN categoria_servicio c ON c.id = b.id_categoria_servicio
  WHERE a.estatus = 'A'::bpchar;

ALTER TABLE public.vista_servicio_categoria
  OWNER TO postgres;
