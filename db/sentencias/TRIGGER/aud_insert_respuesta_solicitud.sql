CREATE OR REPLACE FUNCTION public.aud_insert_respuesta_solicitud()
  RETURNS trigger AS
$BODY$
  DECLARE
    BEGIN
       INSERT INTO 
         auditoria(nombre_tabla, operacion, usuario, fecha_creacion, valor_viejo, valor_nuevo) VALUES(
          'respuesta_solicitud', 'INSERT', session_user, now(), null, new);
            RETURN NULL;
            END
            $BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION public.aud_insert_respuesta_solicitud()
  OWNER TO postgres;
