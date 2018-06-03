CREATE FUNCTION notificacion_nueva_solicitud()
RETURNS TRIGGER  LANGUAGE plpgsql
AS $$
  DECLARE
    BEGIN
       INSERT INTO
         notificacion(id_tipo_notificacion,
         id_usuario, id_registro) 
          SELECT 3, v.id, new.id
          FROM v_funcion_solicitud v;         
             RETURN NULL;
END
$$;


CREATE TRIGGER notificacion_nueva_solicitud
AFTER INSERT ON solicitud FOR EACH ROW
EXECUTE PROCEDURE notificacion_nueva_solicitud();