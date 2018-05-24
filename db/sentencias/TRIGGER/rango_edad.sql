CREATE OR REPLACE FUNCTION grabar_rango_edad() RETURNS TRIGGER AS $grabar_rango_edad$
DECLARE
BEGIN
IF date_part('years', age(NEW.fecha_nacimiento)) >= 18 AND date_part('years', age(NEW.fecha_nacimiento)) <=25 THEN
INSERT INTO perfil (id_valor_parametro,id_cliente) VALUES (15, NEW.id);
END IF;
IF date_part('years', age(NEW.fecha_nacimiento)) >= 26 AND date_part('years', age(NEW.fecha_nacimiento)) <= 35 THEN
INSERT INTO perfil (id_valor_parametro,id_cliente) VALUES (16, NEW.id);
END IF;
IF date_part('years', age(NEW.fecha_nacimiento)) >= 36 AND date_part('years', age(NEW.fecha_nacimiento)) <= 49 THEN
INSERT INTO perfil (id_valor_parametro,id_cliente) VALUES (17, NEW.id);
END IF;
IF date_part('years', age(NEW.fecha_nacimiento)) >= 50 AND date_part('years', age(NEW.fecha_nacimiento)) <= 80 THEN
INSERT INTO perfil (id_valor_parametro,id_cliente) VALUES (18, NEW.id);
END IF;


RETURN NULL;
END;
$grabar_rango_edad$ LANGUAGE plpgsql;

CREATE TRIGGER grabar_rango_edad AFTER INSERT
ON cliente FOR EACH ROW
EXECUTE PROCEDURE grabar_rango_edad();