-- View: public.vista_respuesta_presupuesto

-- DROP VIEW public.vista_respuesta_presupuesto;

CREATE OR REPLACE VIEW public.vista_respuesta_presupuesto AS 
 SELECT a.id,
    a.id_presupuesto,
    a.descripcion,
    b.nombre,
    a.fecha_creacion
   FROM respuesta_presupuesto a
     JOIN tipo_respuesta_presupuesto b ON b.id = a.id_tipo_respuesta_presupuesto
  WHERE a.estatus = 'A'::bpchar;

ALTER TABLE public.vista_respuesta_presupuesto
  OWNER TO postgres;
