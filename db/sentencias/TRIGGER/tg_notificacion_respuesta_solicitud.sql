CREATE FUNCTION notificacion_respuesta_solicitud()
RETURNS TRIGGER AS  $notificacion_respuesta_solicitud$
  DECLARE
    BEGIN
       INSERT INTO
         notificacion(id_tipo_notificacion,
          id_usuario, id_registro) VALUES(
          6, (SELECT c.id_usuario FROM respuesta_solicitud a, solicitud b, cliente c
          WHERE a.id_solicitud = b.id AND b.id_cliente = c.id AND a.id = NEW.id),
            NEW.id);
            RETURN NULL;
            END
            $notificacion_respuesta_solicitud$
            LANGUAGE plpgsql;

  CREATE TRIGGER notificacion_respuesta_solicitud 	
  AFTER INSERT ON respuesta_solicitud FOR EACH ROW
EXECUTE PROCEDURE notificacion_respuesta_solicitud();