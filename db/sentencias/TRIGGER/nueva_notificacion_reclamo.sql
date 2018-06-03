CREATE OR REPLACE FUNCTION public.notificacion_nueva_reclamo()
  RETURNS trigger AS
$BODY$
  DECLARE
    BEGIN
       INSERT INTO
         notificacion(id_tipo_notificacion,
         id_usuario, id_registro) 
          SELECT 5, v.id, new.id
          FROM v_funcion_reclamo v;         
             RETURN NULL;
END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION public.notificacion_nueva_reclamo()
  OWNER TO postgres;