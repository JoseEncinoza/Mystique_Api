 CREATE FUNCTION aud_update_orden_servicio()
RETURNS TRIGGER AS  $aud_update_orden_servicio$
  DECLARE
    BEGIN
       INSERT INTO 
         auditoria(nombre_tabla, operacion, usuario, fecha_creacion, valor_viejo, valor_nuevo) VALUES(
          'orden_servicio', 'UPDATE', session_user, now(), old, new);
            RETURN NULL;
            END
            $aud_update_orden_servicio$
            LANGUAGE plpgsql;

  CREATE TRIGGER aud_update_orden_servicio 	
  AFTER UPDATE ON orden_servicio FOR EACH ROW
EXECUTE PROCEDURE aud_update_orden_servicio();