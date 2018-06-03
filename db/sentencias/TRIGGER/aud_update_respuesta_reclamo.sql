CREATE FUNCTION aud_update_respuesta_reclamo()
RETURNS TRIGGER AS  $aud_update_respuesta_reclamo$
  DECLARE
    BEGIN
       INSERT INTO 
         auditoria(nombre_tabla, operacion, usuario, fecha_creacion, valor_viejo, valor_nuevo) VALUES(
          'respuesta_reclamo', 'UPDATE', session_user, now(), old, new);
            RETURN NULL;
            END
            $aud_update_respuesta_reclamo$
            LANGUAGE plpgsql;

  CREATE TRIGGER aud_update_respuesta_reclamo 	
  AFTER UPDATE ON respuesta_reclamo FOR EACH ROW
EXECUTE PROCEDURE aud_update_respuesta_reclamo();