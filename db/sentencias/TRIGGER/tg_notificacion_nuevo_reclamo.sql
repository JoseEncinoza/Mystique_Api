CREATE FUNCTION notificacion_nuevo_reclamo()
RETURNS TRIGGER AS  $notificacion_nuevo_reclamo$
  DECLARE
    BEGIN
       INSERT INTO
         notificacion(id_tipo_notificacion,
          id_usuario, id_registro) VALUES(
          7, (SELECT a.id FROM usuario a, rol b, rol_funcion c
            WHERE a.id_rol = b.id AND c.id_rol = a.id_rol AND c.id_funcion=23),
            NEW.id);
            RETURN NULL;
            END
            $notificacion_nuevo_reclamo$
            LANGUAGE plpgsql;


CREATE TRIGGER notificacion_nuevo_reclamo
AFTER INSERT ON reclamo FOR EACH ROW
EXECUTE PROCEDURE notificacion_nuevo_reclamo();