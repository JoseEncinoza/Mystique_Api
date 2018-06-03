CREATE FUNCTION notificacion_respuesta_reclamo()
RETURNS TRIGGER AS  $notificacion_respuesta_reclamo$
  DECLARE
    BEGIN
       INSERT INTO
         notificacion(id_tipo_notificacion,
          id_usuario, id_registro) VALUES(
          6, (SELECT f.id_usuario FROM respuesta_reclamo a, reclamo b, detalle_servicio c, orden_servicio d, solicitud e, cliente f 
          WHERE a.id_reclamo = b.id AND b.id_detalle_servicio = c.id AND c.id_orden_servicio= d.id AND d.id_solicitud= e.id AND e.id_cliente = f.id AND a.id = NEW.id),
            NEW.id);
            RETURN NULL;
            END
            $notificacion_respuesta_reclamo$
            LANGUAGE plpgsql;

  CREATE TRIGGER notificacion_respuesta_reclamo 	
  AFTER INSERT ON respuesta_reclamo FOR EACH ROW
EXECUTE PROCEDURE notificacion_respuesta_reclamo();