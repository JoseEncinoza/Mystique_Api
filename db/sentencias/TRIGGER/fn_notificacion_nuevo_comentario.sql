CREATE OR REPLACE FUNCTION notificacion_nuevo_comentario()
RETURNS TRIGGER AS  $notificacion_nuevo_comentario$
  DECLARE
    BEGIN
       INSERT INTO
         notificacion(id_tipo_notificacion,
          id_usuario, id_registro) VALUES(
          1, (SELECT a.id FROM usuario a, rol b, rol_funcion c
            WHERE a.id_rol = b.id AND c.id_rol = a.id_rol AND c.id_funcion=24 ),
            NEW.id);
            RETURN NULL;
            END
            $notificacion_nuevo_comentario$
            LANGUAGE plpgsql;
           