INSERT INTO sistema (imagen, nombre) VALUES
('jpg', 'Mystique v.2.2');


INSERT INTO negocio (rif, nombre, hora_inicio, hora_fin_trabajo, imagen, id_sistema) VALUES

('J-246789900', 'Veronica Hair & Makeup', '08:00', '19:00', 'png', 1); 

INSERT INTO descripcion_negocio (id_negocio, descripcion, titulo, tipo_descripcion )VALUES

(1, 'Veronica Hair & MakeUp. Somos un equipo de estilistas que nos hemos unido para brindarte servicios de peluqueria y maquillaje. Nos esforzamos día a día para cumplir con las exigencias de nuestros clientes, y darles un servicio especilizado', 'Descripcion', 'descripcion'),
(1,'Brindar servicios de peluqueria y maquillaje acorde a las exigencias del mercado y sus tendencias', 'Misión', 'mision'),
(1, 'Ser el equipo numero uno de estilistas en el mercado cumpliendo con las demandas de nuestros clientes', 'Visión', 'vision');

INSERT INTO objetivo (id_negocio, descripcion, titulo )VALUES
(1, 'Brindar servicios de peluquería y maquillaje acorde a las necesidades y tendencias del mercado', 'general'),
(1, 'Poner a la disposición de nuestros clientes nuestros conocimientos respecto a peluqueria y maquillaje', 'especifico'),
(1, 'Mantenernos actualizados con las tendencias del mercado en cuanto a maquillaje y peluquería', 'especifico'),
(1, 'Promocionar nuestros y servicios y conocimientos de la manera mas efectiva a nuestros clientes', 'especifico');

INSERT INTO contacto_negocio(id_negocio, tipo_contacto, descripcion )VALUES
(1, 'telefono', '+584145098957'),
(1, 'correo', 'veronica_hair_makeup@gmail.com'),
(1, 'direccion', 'El Obelisco, zona oeste');


