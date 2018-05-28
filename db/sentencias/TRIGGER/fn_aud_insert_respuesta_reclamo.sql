 CREATE FUNCTION aud_insert_respuesta_reclamo()
RETURNS TRIGGER AS  $aud_insert_respuesta_reclamo$
  DECLARE
    BEGIN
       INSERT INTO 
         auditoria(nombre_tabla, operacion, usuario, fecha_creacion, valor_viejo, valor_nuevo) VALUES(
          'respuesta_reclamo', 'INSERT', session_user, now(), null, new);
            RETURN NULL;
            END
            $aud_insert_respuesta_reclamo$
            LANGUAGE plpgsql;

  CREATE TRIGGER aud_insert_respuesta_reclamo 	
  AFTER INSERT ON respuesta_reclamo FOR EACH ROW
EXECUTE PROCEDURE aud_insert_respuesta_reclamo();