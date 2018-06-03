CREATE FUNCTION aud_delete_respuesta_comentario()
RETURNS TRIGGER AS  $aud_delete_respuesta_comentario$
  DECLARE
    BEGIN
       INSERT INTO 
         auditoria(nombre_tabla, operacion, usuario, fecha_creacion, valor_viejo, valor_nuevo) VALUES(
          'respuesta_comentario', 'DELETE', session_user, now(), old, null);
            RETURN NULL;
            END
            $aud_delete_respuesta_comentario$
            LANGUAGE plpgsql;

  CREATE TRIGGER aud_delete_respuesta_comentario 	
  AFTER DELETE ON respuesta_comentario FOR EACH ROW
EXECUTE PROCEDURE aud_delete_respuesta_comentario();