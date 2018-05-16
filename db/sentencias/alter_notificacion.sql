ALTER TABLE public.notificacion
  DROP COLUMN nombre;
ALTER TABLE public.notificacion
  DROP COLUMN descripcion;
ALTER TABLE public.notificacion
  DROP COLUMN nombre_tabla;


ALTER TABLE public.tipo_insumo
  ADD COLUMN nombre character varying(100);