-- View: public.vista_respuesta_comentario

-- DROP VIEW public.vista_respuesta_comentario;

CREATE OR REPLACE VIEW public.vista_respuesta_comentario AS 
 SELECT a.id,
    a.id_tipo_respuesta_comentario,
    a.id_comentario,
    a.descripcion,
    b.nombre AS tipo_respuesta_comentario
   FROM respuesta_comentario a
     JOIN tipo_respuesta_comentario b ON b.id = a.id_tipo_respuesta_comentario
  WHERE a.estatus = 'A'::bpchar;

ALTER TABLE public.vista_respuesta_comentario
  OWNER TO postgres;
