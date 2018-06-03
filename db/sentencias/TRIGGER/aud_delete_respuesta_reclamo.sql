CREATE FUNCTION aud_delete_respuesta_reclamo()
RETURNS TRIGGER AS  $aud_delete_respuesta_reclamo$
  DECLARE
    BEGIN
       INSERT INTO 
         auditoria(nombre_tabla, operacion, usuario, fecha_creacion, valor_viejo, valor_nuevo) VALUES(
          'respuesta_reclamo', 'DELETE', session_user, now(), old, null);
            RETURN NULL;
            END
            $aud_delete_respuesta_reclamo$
            LANGUAGE plpgsql;

  CREATE TRIGGER aud_delete_respuesta_reclamo 	
  AFTER DELETE ON respuesta_reclamo FOR EACH ROW
EXECUTE PROCEDURE aud_delete_respuesta_reclamo();