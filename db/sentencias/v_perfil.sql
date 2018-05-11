CREATE VIEW v_perfil_cliente AS
SELECT a.id AS id_perfil,
       a.id_cliente,
       a.id_valor_parametro,
       a.estatus,
       a.fecha_creacion,
       b.nombre AS valor,
       b.descripcion,
       c.nombre AS parametro,
       d.nombre AS caracteristica,
       d.clasificacion
       FROM perfil a 
       JOIN valor_parametro b ON b.id = a.id_valor_parametro
       JOIN parametro c ON c.id = b.id_parametro
       JOIN tipo_parametro d ON d.id = c.id_tipo_parametro
       WHERE a.estatus='A'::bpchar;  
       
       