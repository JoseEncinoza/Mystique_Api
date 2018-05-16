CREATE TRIGGER notificacion_nuevo_comentario 
AFTER INSERT ON comentario FOR EACH ROW
EXECUTE PROCEDURE notificacion_nuevo_comentario();
