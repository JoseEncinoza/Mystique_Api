 CREATE FUNCTION aud_update_respuesta_solicitud()
RETURNS TRIGGER AS  $aud_update_respuesta_solicitud$
  DECLARE
    BEGIN
       INSERT INTO 
         auditoria(nombre_tabla, operacion, usuario, fecha_creacion, valor_viejo, valor_nuevo) VALUES(
          'respuesta_solicitud', 'UPDATE', session_user, now(), old, new);
            RETURN NULL;
            END
            $aud_update_respuesta_solicitud$
            LANGUAGE plpgsql;

  CREATE TRIGGER aud_update_respuesta_solicitud 	
  AFTER UPDATE ON respuesta_solicitud FOR EACH ROW
EXECUTE PROCEDURE aud_update_respuesta_solicitud();