CREATE FUNCTION aud_delete_respuesta_solicitud()
RETURNS TRIGGER AS  $aud_delete_respuesta_solicitud$
  DECLARE
    BEGIN
       INSERT INTO 
         auditoria(nombre_tabla, operacion, usuario, fecha_creacion, valor_viejo, valor_nuevo) VALUES(
          'respuesta_solicitud', 'DELETE', session_user, now(), old, null);
            RETURN NULL;
            END
            $aud_delete_respuesta_solicitud$
            LANGUAGE plpgsql;

  CREATE TRIGGER aud_delete_respuesta_solicitud 	
  AFTER DELETE ON respuesta_solicitud FOR EACH ROW
EXECUTE PROCEDURE aud_delete_respuesta_solicitud();