
CREATE OR REPLACE VIEW public.vista_presupuesto AS 
 SELECT b.id,
    a.id_solicitud,
    a.monto_total
   FROM presupuesto a
     JOIN solicitud b ON b.id = a.id_solicitud
  WHERE a.estatus = 'A'::bpchar;

ALTER TABLE public.vista_presupuesto
  OWNER TO postgres;