CREATE FUNCTION notificacion_nueva_solicitud()
RETURNS TRIGGER AS  $notificacion_nueva_solicitud$
  DECLARE
    BEGIN
       INSERT INTO
         notificacion(id_tipo_notificacion,
          id_usuario, id_registro) VALUES(
          3, (SELECT a.id FROM usuario a, rol b, rol_funcion c
            WHERE a.id_rol = b.id AND c.id_rol = a.id_rol AND c.id_funcion=21),
            NEW.id);
            RETURN NULL;
            END
            $notificacion_nueva_solicitud$
            LANGUAGE plpgsql;


CREATE TRIGGER notificacion_nueva_solicitud
AFTER INSERT ON solicitud FOR EACH ROW
EXECUTE PROCEDURE notificacion_nueva_solicitud();