CREATE OR REPLACE FUNCTION public.notificacion_nueva_comentario()
  RETURNS trigger AS
$BODY$
  DECLARE
    BEGIN
       INSERT INTO
         notificacion(id_tipo_notificacion,
         id_usuario, id_registro) 
          SELECT 1, v.id, new.id
          FROM v_funcion_comentario v;         
             RETURN NULL;
END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION public.notificacion_nueva_comentario()
  OWNER TO postgres;
