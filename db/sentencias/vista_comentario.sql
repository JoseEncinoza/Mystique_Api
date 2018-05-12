﻿-- View: public.vista_comentario

-- DROP VIEW public.vista_comentario;

CREATE OR REPLACE VIEW public.vista_comentario AS 
 SELECT a.id,
    a.id_cliente,
    b.nombre,
    b.apellido,
    d.correo,
    c.nombre AS tipo_comentario,
    a.descripcion,
    a.fecha_creacion,
    a.estado
   FROM comentario a
     JOIN tipo_comentario c ON c.id = a.id_tipo_comentario
     JOIN cliente b ON b.id = a.id_cliente
     JOIN usuario d ON d.id = b.id_usuario
  WHERE a.estatus = 'A'::bpchar;

ALTER TABLE public.vista_comentario
  OWNER TO postgres;
