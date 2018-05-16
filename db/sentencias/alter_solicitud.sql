ALTER TABLE public.solicitud
  DROP COLUMN empleado_pelu;
ALTER TABLE public.solicitud
  DROP COLUMN empleado_maqui;
ALTER TABLE public.solicitud
  ADD COLUMN empleado integer[];