CREATE VIEW v_cliente_promocion AS
SELECT a.id AS promocion,
       a.id_servicio,
       a.nombre,
       a.descripcion,
       a.porcentaje_descuento,
       a.precio_promocion,
       a.imagen,
       a.fecha_inicio,
       a.fecha_fin,
       a.estatus,
       a.fecha_creacion,
       b.id_promocion AS detalle_promocion,
       b.id_valor_parametro,
       c.id AS valor_parametro,
       c.nombre AS nombre_valor,
       d.id AS perfil,
       e.id AS cliente,
       e.nombre AS nombre_cliente,
       e.apellido
       FROM promocion a
       JOIN detalle_promocion b ON b.id_promocion = a.id
       JOIN valor_parametro c ON c.id = b.id_valor_parametro
       JOIN perfil d ON d.id_valor_parametro = b.id_valor_parametro
       JOIN cliente e ON e.id = d.id_cliente
       WHERE a.estatus='A'::bpchar;
       
       
   