CREATE VIEW v_todos_consejos AS
SELECT a.id,
       a.imagen,
       a.titulo,
       a.descripcion,
       a.autor,
       a.fecha_creacion
       FROM consejo a
       WHERE a.estatus= 'A'::bpchar;
       
       