CREATE FUNCTION notificacion_respuesta_comentario()
RETURNS TRIGGER AS  $notificacion_respuesta_comentario$
  DECLARE
    BEGIN
       INSERT INTO
         notificacion(id_tipo_notificacion,
          id_usuario, id_registro) VALUES(
          2, (SELECT c.id_usuario FROM respuesta_comentario a, comentario b, cliente c
          WHERE a.id_comentario = b.id AND b.id_cliente = c.id AND a.id = NEW.id),
            NEW.id);
            RETURN NULL;
            END
            $notificacion_respuesta_comentario$
            LANGUAGE plpgsql;

  CREATE TRIGGER notificacion_respuesta_comentario 	
  AFTER INSERT ON respuesta_comentario FOR EACH ROW
EXECUTE PROCEDURE notificacion_respuesta_comentario();