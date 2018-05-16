// recuerda cambiar campo sexo en empleado
-----------------------------------------------------------------[
ALTER TABLE public.promocion
  ADD COLUMN estado character(1) DEFAULT 'A';
--------------------------------------------------------------[

CREATE TABLE public.cita
(
   id serial, 
   id_orden_servicio integer, 
   id_bloque integer, 
   fecha_cita date, 
   fecha_creacion timestamp without time zone DEFAULT now(), 
   estatus character(1) DEFAULT 'A'::bpchar, 
   PRIMARY KEY (id), 
   FOREIGN KEY (id_orden_servicio) REFERENCES public.orden_servicio (id) ON UPDATE NO ACTION ON DELETE NO ACTION, 
   FOREIGN KEY (id_bloque) REFERENCES public.bloque (id) ON UPDATE NO ACTION ON DELETE NO ACTION
) 
WITH (
  OIDS = FALSE
);
----------------------------------------------------{{{

ALTER TABLE public.agenda
  ADD COLUMN id_cita integer;

ALTER TABLE public.cita
  ADD COLUMN estado character(1) DEFAULT 'E';

ALTER TABLE public.agenda
  ADD FOREIGN KEY (id_cita) REFERENCES public.cita (id) ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE public.agenda
  ADD COLUMN estado character(1) DEFAULT 'E';


-------------------------------------------------------{{{




AUN FALTAAA

ALTER TABLE public.agenda
  ADD COLUMN id_cliente integer;

ALTER TABLE public.agenda
  ADD COLUMN id_incidencia integer;


ALTER TABLE public.agenda
  ADD FOREIGN KEY (id_incidencia) REFERENCES public.incidencia_orden (id) ON UPDATE NO ACTION ON DELETE NO ACTION;




CREATE TABLE public.horario_agenda
(
   id serial, 
   id_agenda integer, 
   id_horario_empleado integer, 
   fecha_creacion timestamp without time zone DEFAULT now(), 
   estatus character DEFAULT 'A', 
   PRIMARY KEY (id), 
   FOREIGN KEY (id_agenda) REFERENCES public.agenda (id) ON UPDATE NO ACTION ON DELETE NO ACTION, 
   FOREIGN KEY (id_horario_empleado) REFERENCES public.horario_empleado (id) ON UPDATE NO ACTION ON DELETE NO ACTION
) 
WITH (
  OIDS = FALSE
);

ALTER TABLE public.horario_empleado
  DROP COLUMN id_agenda;



