CREATE FUNCTION aud_insert_respuesta_comentario()
RETURNS TRIGGER AS  $aud_insert_respuesta_comentario$
  DECLARE
    BEGIN
       INSERT INTO 
         auditoria(nombre_tabla, operacion, usuario, fecha_creacion, valor_viejo, valor_nuevo) VALUES(
          'respuesta_comentario', 'INSERT', session_user, now(), null, new);
            RETURN NULL;
            END
            $aud_insert_respuesta_comentario$
            LANGUAGE plpgsql;

  CREATE TRIGGER aud_insert_respuesta_comentario 	
  AFTER INSERT ON respuesta_comentario FOR EACH ROW
EXECUTE PROCEDURE aud_insert_respuesta_comentario();