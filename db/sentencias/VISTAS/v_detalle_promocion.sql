CREATE VIEW v_detalle_promocion AS
SELECT a.id,
       a.id_promocion,
       a.id_valor_parametro,
       b.nombre AS promocion,
       c.nombre,
       d.nombre AS parametro,
       e.nombre AS tipo_parametro,
       e.clasificacion
      FROM detalle_promocion a
       JOIN promocion b ON b.id = a.id_promocion
       JOIN valor_parametro c ON c.id = a.id_valor_parametro
       JOIN parametro d ON d.id = c.id_parametro
       JOIN tipo_parametro e ON e.id = d.id_tipo_parametro
       WHERE  a.estatus = 'A'::bpchar;
