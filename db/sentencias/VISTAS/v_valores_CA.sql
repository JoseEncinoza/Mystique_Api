CREATE VIEW v_valores_CA AS
SELECT a.id AS tipo_parametro,
       a.nombre AS el_tipo,
       a.clasificacion,
       b.id AS parametro,
       b.nombre AS el_parametro,
       b.id_tipo_parametro,
       b.visible,
       c.id,
       c.id_parametro,
       c.nombre,
       c.descripcion
       FROM valor_parametro c
       JOIN parametro b ON b.id = c.id_parametro
       JOIN tipo_parametro a ON a.id = b.id_tipo_parametro
       WHERE a.clasificacion='CA' AND c.estatus='A'::bpchar
       