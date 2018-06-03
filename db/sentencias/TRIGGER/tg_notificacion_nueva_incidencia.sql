CREATE FUNCTION notificacion_nueva_incidencia()
RETURNS TRIGGER AS  $notificacion_nueva_incidencia$
  DECLARE
    BEGIN
       INSERT INTO
         notificacion(id_tipo_notificacion,
          id_usuario, id_registro) VALUES(
          7, (SELECT d.id_usuario FROM incidencia_orden a, orden_servicio b, solicitud c, cliente d 
          WHERE a.id_orden_servicio = b.id AND b.id_solicitud= c.id AND c.id_cliente = d.id AND a.id = NEW.id),
            NEW.id);
            RETURN NULL;
            END
            $notificacion_nueva_incidencia$
            LANGUAGE plpgsql;

  CREATE TRIGGER notificacion_nueva_incidencia 	
  AFTER INSERT ON incidencia_orden FOR EACH ROW
EXECUTE PROCEDURE notificacion_nueva_incidencia();