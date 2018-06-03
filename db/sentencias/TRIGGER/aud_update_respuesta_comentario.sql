 CREATE FUNCTION aud_update_respuesta_comentario()
RETURNS TRIGGER AS  $aud_update_respuesta_comentario$
  DECLARE
    BEGIN
       INSERT INTO 
         auditoria(nombre_tabla, operacion, usuario, fecha_creacion, valor_viejo, valor_nuevo) VALUES(
          'respuesta_comentario', 'UPDATE', session_user, now(), old, new);
            RETURN NULL;
            END
            $aud_update_respuesta_comentario$
            LANGUAGE plpgsql;

  CREATE TRIGGER aud_update_respuesta_comentario 	
  AFTER UPDATE ON respuesta_comentario FOR EACH ROW
EXECUTE PROCEDURE aud_update_respuesta_comentario();