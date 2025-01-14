--Caracteristica
insert into public.caracteristica (carac_nombre, carac_unidad_medida) values ('Capacidad de tripulacion', 'cantidad');
insert into public.caracteristica (carac_nombre, carac_unidad_medida) values ('Capacidad de pasajeros', 'cantidad');
insert into public.caracteristica (carac_nombre, carac_unidad_medida) values ('Longitud', 'm');
insert into public.caracteristica (carac_nombre, carac_unidad_medida) values ('Envergadura', 'm');
insert into public.caracteristica (carac_nombre, carac_unidad_medida) values ('Altura', 'm');
insert into public.caracteristica (carac_nombre, carac_unidad_medida) values ('Flecha alar', 'grados');
insert into public.caracteristica (carac_nombre, carac_unidad_medida) values ('Peso vacio', 'kg');
insert into public.caracteristica (carac_nombre, carac_unidad_medida) values ('Peso maximo de despegue', 'kg');
insert into public.caracteristica (carac_nombre, carac_unidad_medida) values ('Peso maximo de aterrizaje', 'kg');
insert into public.caracteristica (carac_nombre, carac_unidad_medida) values ('Velocidad maxima', 'km/h');
insert into public.caracteristica (carac_nombre, carac_unidad_medida) values ('Velocidad crucero', 'km/h');
insert into public.caracteristica (carac_nombre, carac_unidad_medida) values ('Capacidad maxima de combustible', 'L');
insert into public.caracteristica (carac_nombre, carac_unidad_medida) values ('Motores', 'cantidad');

--Cargo
insert into public."cargo" ("car_cod", "car_nombre", "car_sueldo_hora_extra") values (nextval('car_cod_seq'), 'Ingeniero aeronautico','3');
insert into public."cargo" ("car_cod", "car_nombre", "car_sueldo_hora_extra") values (nextval('car_cod_seq'), 'Tecnico de Diseno','3');
insert into public."cargo" ("car_cod", "car_nombre", "car_sueldo_hora_extra") values (nextval('car_cod_seq'), 'Mecanico de aeronave','3');
insert into public."cargo" ("car_cod", "car_nombre", "car_sueldo_hora_extra") values (nextval('car_cod_seq'), 'Ensamblador de estructuras','3');
insert into public."cargo" ("car_cod", "car_nombre", "car_sueldo_hora_extra") values (nextval('car_cod_seq'), 'Tecnico de aviacion','3');
insert into public."cargo" ("car_cod", "car_nombre", "car_sueldo_hora_extra") values (nextval('car_cod_seq'), 'Gerente de proyecto','3');
insert into public."cargo" ("car_cod", "car_nombre", "car_sueldo_hora_extra") values (nextval('car_cod_seq'), 'Personal de prueba','3');
insert into public."cargo" ("car_cod", "car_nombre", "car_sueldo_hora_extra") values (nextval('car_cod_seq'), 'Logistica','3');
insert into public."cargo" ("car_cod", "car_nombre", "car_sueldo_hora_extra") values (nextval('car_cod_seq'), 'Ingeniero metalurgico','3');
insert into public."cargo" ("car_cod", "car_nombre", "car_sueldo_hora_extra") values (nextval('car_cod_seq'), 'Ingeniero mecanico','3');

--Estatus
insert into public.estatus (estat_nombre) values 
	('Realizado'),
	('En proceso'),
	('Sin iniciar'),
	('En traslado'),
	('Solicitado'),
	('Rechazado'),
	('Almacenado'),
	('En construccion'),
	('En prueba'),
	('Despachado');

--Horario
insert into public.horario (hora_entrada, hora_salida, hora_dia) values ('3:48 AM', '9:25 AM', 'lunes');
insert into public.horario (hora_entrada, hora_salida, hora_dia) values ('1:29 AM', '11:29 AM', 'martes');
insert into public.horario (hora_entrada, hora_salida, hora_dia) values ('9:40 AM', '9:40 AM', 'martes');
insert into public.horario (hora_entrada, hora_salida, hora_dia) values ('6:55 AM', '1:50 AM', 'domingo');
insert into public.horario (hora_entrada, hora_salida, hora_dia) values ('6:26 AM', '10:18 AM', 'martes');
insert into public.horario (hora_entrada, hora_salida, hora_dia) values ('9:06 AM', '9:10 AM', 'viernes');
insert into public.horario (hora_entrada, hora_salida, hora_dia) values ('6:51 AM', '7:15 AM', 'miércoles');
insert into public.horario (hora_entrada, hora_salida, hora_dia) values ('3:23 AM', '4:44 AM', 'lunes');
insert into public.horario (hora_entrada, hora_salida, hora_dia) values ('12:32 AM', '10:01 AM', 'martes');
insert into public.horario (hora_entrada, hora_salida, hora_dia) values ('1:43 AM', '11:02 AM', 'viernes');
insert into public.horario (hora_entrada, hora_salida, hora_dia) values ('1:28 AM', '11:29 AM', 'domingo');
insert into public.horario (hora_entrada, hora_salida, hora_dia) values ('5:58 AM', '1:37 AM', 'viernes');
insert into public.horario (hora_entrada, hora_salida, hora_dia) values ('8:17 AM', '3:18 AM', 'miércoles');
insert into public.horario (hora_entrada, hora_salida, hora_dia) values ('7:17 AM', '12:00 AM', 'martes');
insert into public.horario (hora_entrada, hora_salida, hora_dia) values ('11:21 AM', '7:10 AM', 'sábado');
insert into public.horario (hora_entrada, hora_salida, hora_dia) values ('10:03 AM', '6:51 AM', 'jueves');
insert into public.horario (hora_entrada, hora_salida, hora_dia) values ('1:19 AM', '3:33 AM', 'sábado');
insert into public.horario (hora_entrada, hora_salida, hora_dia) values ('7:08 AM', '11:41 AM', 'sábado');
insert into public.horario (hora_entrada, hora_salida, hora_dia) values ('10:29 AM', '7:21 AM', 'miércoles');
insert into public.horario (hora_entrada, hora_salida, hora_dia) values ('7:26 AM', '11:08 AM', 'miércoles');
insert into public.horario (hora_entrada, hora_salida, hora_dia) values ('8:23 AM', '5:08 AM', 'lunes');
insert into public.horario (hora_entrada, hora_salida, hora_dia) values ('11:40 AM', '1:40 AM', 'viernes');
insert into public.horario (hora_entrada, hora_salida, hora_dia) values ('8:24 AM', '4:55 AM', 'miércoles');
insert into public.horario (hora_entrada, hora_salida, hora_dia) values ('11:28 AM', '8:13 AM', 'domingo');
insert into public.horario (hora_entrada, hora_salida, hora_dia) values ('4:53 AM', '3:17 AM', 'jueves');
insert into public.horario (hora_entrada, hora_salida, hora_dia) values ('10:21 AM', '5:15 AM', 'miércoles');
insert into public.horario (hora_entrada, hora_salida, hora_dia) values ('1:47 AM', '1:20 AM', 'domingo');
insert into public.horario (hora_entrada, hora_salida, hora_dia) values ('7:04 AM', '6:51 AM', 'martes');
insert into public.horario (hora_entrada, hora_salida, hora_dia) values ('6:38 AM', '8:53 AM', 'lunes');
insert into public.horario (hora_entrada, hora_salida, hora_dia) values ('9:41 AM', '3:53 AM', 'domingo');
insert into public.horario (hora_entrada, hora_salida, hora_dia) values ('8:00 AM', '4:04 AM', 'jueves');
insert into public.horario (hora_entrada, hora_salida, hora_dia) values ('4:46 AM', '10:50 AM', 'martes');
insert into public.horario (hora_entrada, hora_salida, hora_dia) values ('8:58 AM', '12:50 AM', 'lunes');
insert into public.horario (hora_entrada, hora_salida, hora_dia) values ('1:21 AM', '1:41 AM', 'lunes');
insert into public.horario (hora_entrada, hora_salida, hora_dia) values ('3:42 AM', '10:54 AM', 'lunes');
insert into public.horario (hora_entrada, hora_salida, hora_dia) values ('1:13 AM', '5:03 AM', 'lunes');
insert into public.horario (hora_entrada, hora_salida, hora_dia) values ('5:43 AM', '12:38 AM', 'miércoles');
insert into public.horario (hora_entrada, hora_salida, hora_dia) values ('11:57 AM', '1:10 AM', 'miércoles');
insert into public.horario (hora_entrada, hora_salida, hora_dia) values ('10:32 AM', '1:57 AM', 'jueves');
insert into public.horario (hora_entrada, hora_salida, hora_dia) values ('2:10 AM', '5:34 AM', 'martes');

--Lugar
INSERT INTO public.lugar(lu_nombre,lu_tipo) VALUES
('Amazonas', 'estado'),
('Anzoátegui', 'estado'),
('Apure', 'estado'),
('Aragua', 'estado'),
('Barinas', 'estado'),
('Bolívar', 'estado'),
('Carabobo', 'estado'),
('Cojedes', 'estado'),
('Delta Amacuro', 'estado'),
('Falcón', 'estado'),
('Guárico', 'estado'),
('Lara', 'estado'),
('Mérida', 'estado'),
('Miranda', 'estado'),
('Monagas', 'estado'),
('Nueva Esparta', 'estado'),
('Portuguesa', 'estado'),
('Sucre', 'estado'),
('Táchira', 'estado'),
('Trujillo', 'estado'),
('Vargas', 'estado'),
('Yaracuy', 'estado'),
('Zulia', 'estado'),
('Distrito Capital', 'estado'),
('Dependencias Federales', 'estado');

INSERT INTO public.lugar ( fk_lugar,lu_nombre,lu_tipo) VALUES
(1, 'Alto Orinoco','municipio'),
(1, 'Atabapo','municipio'),
(1, 'Atures','municipio'),
(1, 'Autana','municipio'),
(1, 'Manapiare','municipio'),
(1, 'Maroa','municipio'),
(1, 'Río Negro','municipio'),


(2, 'Anaco','municipio'),
(2, 'Aragua','municipio'),
(2, 'Manuel Ezequiel Bruzual','municipio'),
(2, 'Diego Bautista Urbaneja','municipio'),
(2, 'Fernando Peñalver','municipio'),
(2, 'Francisco Del Carmen Carvajal','municipio'),
(2, 'General Sir Arthur McGregor','municipio'),
(2, 'Guanta','municipio'),
(2, 'Independencia','municipio'),
(2, 'José Gregorio Monagas','municipio'),
(2, 'Juan Antonio Sotillo','municipio'),
(2, 'Juan Manuel Cajigal','municipio'),
(2, 'Libertad','municipio'),
(2, 'Francisco de Miranda','municipio'),
(2, 'Pedro María Freites','municipio'),
(2, 'Píritu','municipio'),
(2, 'San José de Guanipa','municipio'),
(2, 'San Juan de Capistrano','municipio'),
(2, 'Santa Ana','municipio'),
(2, 'Simón Bolívar','municipio'),
(2, 'Simón Rodríguez','municipio'),

(3, 'Achaguas','municipio'),
(3, 'Biruaca','municipio'),
(3, 'Muñóz','municipio'),
(3, 'Páez','municipio'),
(3, 'Pedro Camejo','municipio'),
(3, 'Rómulo Gallegos','municipio'),
(3, 'San Fernando','municipio'),

(4, 'Atanasio Girardot','municipio'),
(4, 'Bolívar','municipio'),
(4, 'Camatagua','municipio'),
(4, 'Francisco Linares Alcántara','municipio'),
(4, 'José Ángel Lamas','municipio'),
(4, 'José Félix Ribas','municipio'),
(4, 'José Rafael Revenga','municipio'),
(4, 'Libertador','municipio'),
(4, 'Ocumare de la Costa de Oro','municipio'),
(4, 'San Casimiro','municipio'),
(4, 'Mario Briceño Iragorry','municipio'),
(4, 'San Sebastián','municipio'),
(4, 'Santiago Mariño','municipio'),
(4, 'Santos Michelena','municipio'),
(4, 'Sucre','municipio'),
(4, 'Tovar','municipio'),
(4, 'Urdaneta','municipio'),
(4, 'Zamora','municipio'),

(5, 'Alberto Arvelo Torrealba','municipio'),
(5, 'Andrés Eloy Blanco','municipio'),
(5, 'Antonio José de Sucre','municipio'),
(5, 'Arismendi','municipio'),
(5, 'Barinas','municipio'),
(5, 'Bolívar','municipio'),
(5, 'Cruz Paredes','municipio'),
(5, 'Ezequiel Zamora','municipio'),
(5, 'Obispos','municipio'),
(5, 'Pedraza','municipio'),
(5, 'Rojas','municipio'),
(5, 'Sosa','municipio'),

(6, 'Caroní','municipio'),
(6, 'Cedeño','municipio'),
(6, 'El Callao','municipio'),
(6, 'Gran Sabana','municipio'),
(6, 'Heres','municipio'),
(6, 'Piar','municipio'),
(6, 'Angostura (Raúl Leoni)','municipio'),
(6, 'Roscio','municipio'),
(6, 'Sifontes','municipio'),
(6, 'Sucre','municipio'),
(6, 'Padre Pedro Chien','municipio'),

(7, 'Bejuma','municipio'),
(7, 'Carlos Arvelo','municipio'),
(7, 'Diego Ibarra','municipio'),
(7, 'Guacara','municipio'),
(7, 'Juan José Mora','municipio'),
(7, 'Libertador','municipio'),
(7, 'Los Guayos','municipio'),
(7, 'Miranda','municipio'),
(7, 'Montalbán','municipio'),
(7, 'Naguanagua','municipio'),
(7, 'Puerto Cabello','municipio'),
(7, 'San Diego','municipio'),
(7, 'San Joaquín','municipio'),
(7, 'Valencia','municipio'),

(8, 'Anzoátegui','municipio'),
(8, 'Tinaquillo','municipio'),
(8, 'Girardot','municipio'),
(8, 'Lima Blanco','municipio'),
(8, 'Pao de San Juan Bautista','municipio'),
(8, 'Ricaurte','municipio'),
(8, 'Rómulo Gallegos','municipio'),
(8, 'San Carlos','municipio'),
(8, 'Tinaco','municipio'),

(9, 'Antonio Díaz','municipio'),
(9, 'Casacoima','municipio'),
(9, 'Pedernales','municipio'),
(9, 'Tucupita','municipio'),

(10, 'Acosta','municipio'),
(10, 'Bolívar','municipio'),
(10, 'Buchivacoa','municipio'),
(10, 'Cacique Manaure','municipio'),
(10, 'Carirubana','municipio'),
(10, 'Colina','municipio'),
(10, 'Dabajuro','municipio'),
(10, 'Democracia','municipio'),
(10, 'Falcón','municipio'),
(10, 'Federación','municipio'),
(10, 'Jacura','municipio'),
(10, 'José Laurencio Silva','municipio'),
(10, 'Los Taques','municipio'),
(10, 'Mauroa','municipio'),
(10, 'Miranda','municipio'),
(10, 'Monseñor Iturriza','municipio'),
(10, 'Palmasola','municipio'),
(10, 'Petit','municipio'),
(10, 'Píritu','municipio'),
(10, 'San Francisco','municipio'),
(10, 'Sucre','municipio'),
(10, 'Tocópero','municipio'),
(10, 'Unión','municipio'),
(10, 'Urumaco','municipio'),
(10, 'Zamora','municipio'),

(11, 'Camaguán','municipio'),
(11, 'Chaguaramas','municipio'),
(11, 'El Socorro','municipio'),
(11, 'José Félix Ribas','municipio'),
(11, 'José Tadeo Monagas','municipio'),
(11, 'Juan Germán Roscio','municipio'),
(11, 'Julián Mellado','municipio'),
(11, 'Las Mercedes','municipio'),
(11, 'Leonardo Infante','municipio'),
(11, 'Pedro Zaraza','municipio'),
(11, 'Ortíz','municipio'),
(11, 'San Gerónimo de Guayabal','municipio'),
(11, 'San José de Guaribe','municipio'),
(11, 'Santa María de Ipire','municipio'),
(11, 'Sebastián Francisco de Miranda','municipio'),

(12, 'Andrés Eloy Blanco','municipio'),
(12, 'Crespo','municipio'),
(12, 'Iribarren','municipio'),
(12, 'Jiménez','municipio'),
(12, 'Morán','municipio'),
(12, 'Palavecino','municipio'),
(12, 'Simón Planas','municipio'),
(12, 'Torres','municipio'),
(12, 'Urdaneta','municipio'),

(13, 'Alberto Adriani','municipio'),
(13, 'Andrés Bello','municipio'),
(13, 'Antonio Pinto Salinas','municipio'),
(13, 'Aricagua','municipio'),
(13, 'Arzobispo Chacón','municipio'),
(13, 'Campo Elías','municipio'),
(13, 'Caracciolo Parra Olmedo','municipio'),
(13, 'Cardenal Quintero','municipio'),
(13, 'Guaraque','municipio'),
(13, 'Julio César Salas','municipio'),
(13, 'Justo Briceño','municipio'),
(13, 'Libertador','municipio'),
(13, 'Miranda','municipio'),
(13, 'Obispo Ramos de Lora','municipio'),
(13, 'Padre Noguera','municipio'),
(13, 'Pueblo Llano','municipio'),
(13, 'Rangel','municipio'),
(13, 'Rivas Dávila','municipio'),
(13, 'Santos Marquina','municipio'),
(13, 'Sucre','municipio'),
(13, 'Tovar','municipio'),
(13, 'Tulio Febres Cordero','municipio'),
(13, 'Zea','municipio'),

(14, 'Acevedo','municipio'),
(14, 'Andrés Bello','municipio'),
(14, 'Baruta','municipio'),
(14, 'Brión','municipio'),
(14, 'Buroz','municipio'),
(14, 'Carrizal','municipio'),
(14, 'Chacao','municipio'),
(14, 'Cristóbal Rojas','municipio'),
(14, 'El Hatillo','municipio'),
(14, 'Guaicaipuro','municipio'),
(14, 'Independencia','municipio'),
(14, 'Lander','municipio'),
(14, 'Los Salias','municipio'),
(14, 'Páez','municipio'),
(14, 'Paz Castillo','municipio'),
(14, 'Pedro Gual','municipio'),
(14, 'Plaza','municipio'),
(14, 'Simón Bolívar','municipio'),
(14, 'Sucre','municipio'),
(14, 'Urdaneta','municipio'),
(14, 'Zamora','municipio'),

(15, 'Acosta','municipio'),
(15, 'Aguasay','municipio'),
(15, 'Bolívar','municipio'),
(15, 'Caripe','municipio'),
(15, 'Cedeño','municipio'),
(15, 'Ezequiel Zamora','municipio'),
(15, 'Libertador','municipio'),
(15, 'Maturín','municipio'),
(15, 'Piar','municipio'),
(15, 'Punceres','municipio'),
(15, 'Santa Bárbara','municipio'),
(15, 'Sotillo','municipio'),
(15, 'Uracoa','municipio'),


(16, 'Antolín del Campo','municipio'),
(16, 'Arismendi','municipio'),
(16, 'García','municipio'),
(16, 'Gómez','municipio'),
(16, 'Maneiro','municipio'),
(16, 'Marcano','municipio'),
(16, 'Mariño','municipio'),
(16, 'Península de Macanao','municipio'),
(16, 'Tubores','municipio'),
(16, 'Villalba','municipio'),
(16, 'Díaz','municipio'),

(17, 'Agua Blanca','municipio'),
(17, 'Araure','municipio'),
(17, 'Esteller','municipio'),
(17, 'Guanare','municipio'),
(17, 'Guanarito','municipio'),
(17, 'Monseñor José Vicente de Unda','municipio'),
(17, 'Ospino','municipio'),
(17, 'Páez','municipio'),
(17, 'Papelón','municipio'),
(17, 'San Genaro de Boconoíto','municipio'),
(17, 'San Rafael de Onoto','municipio'),
(17, 'Santa Rosalía','municipio'),
(17, 'Sucre','municipio'),
(17, 'Turén','municipio'),

(18, 'Andrés Eloy Blanco','municipio'),
(18, 'Andrés Mata','municipio'),
(18, 'Arismendi','municipio'),
(18, 'Benítez','municipio'),
(18, 'Bermúdez','municipio'),
(18, 'Bolívar','municipio'),
(18, 'Cajigal','municipio'),
(18, 'Cruz Salmerón Acosta','municipio'),
(18, 'Libertador','municipio'),
(18, 'Mariño','municipio'),
(18, 'Mejía','municipio'),
(18, 'Montes','municipio'),
(18, 'Ribero','municipio'),
(18, 'Sucre','municipio'),
(18, 'Valdéz','municipio'),

(19, 'Andrés Bello','municipio'),
(19, 'Antonio Rómulo Costa','municipio'),
(19, 'Ayacucho','municipio'),
(19, 'Bolívar','municipio'),
(19, 'Cárdenas','municipio'),
(19, 'Córdoba','municipio'),
(19, 'Fernández Feo','municipio'),
(19, 'Francisco de Miranda','municipio'),
(19, 'García de Hevia','municipio'),
(19, 'Guásimos','municipio'),
(19, 'Independencia','municipio'),
(19, 'Jáuregui','municipio'),
(19, 'José María Vargas','municipio'),
(19, 'Junín','municipio'),
(19, 'Libertad','municipio'),
(19, 'Libertador','municipio'),
(19, 'Lobatera','municipio'),
(19, 'Michelena','municipio'),
(19, 'Panamericano','municipio'),
(19, 'Pedro María Ureña','municipio'),
(19, 'Rafael Urdaneta','municipio'),
(19, 'Samuel Darío Maldonado','municipio'),
(19, 'San Cristóbal','municipio'),
(19, 'Seboruco','municipio'),
(19, 'Simón Rodríguez','municipio'),
(19, 'Sucre','municipio'),
(19, 'Torbes','municipio'),
(19, 'Uribante','municipio'),
(19, 'San Judas Tadeo','municipio'),

(20, 'Andrés Bello','municipio'),
(20, 'Boconó','municipio'),
(20, 'Bolívar','municipio'),
(20, 'Candelaria','municipio'),
(20, 'Carache','municipio'),
(20, 'Escuque','municipio'),
(20, 'José Felipe Márquez Cañizalez','municipio'),
(20, 'Juan Vicente Campos Elías','municipio'),
(20, 'La Ceiba','municipio'),
(20, 'Miranda','municipio'),
(20, 'Monte Carmelo','municipio'),
(20, 'Motatán','municipio'),
(20, 'Pampán','municipio'),
(20, 'Pampanito','municipio'),
(20, 'Rafael Rangel','municipio'),
(20, 'San Rafael de Carvajal','municipio'),
(20, 'Sucre','municipio'),
(20, 'Trujillo','municipio'),
(20, 'Urdaneta','municipio'),
(20, 'Valera','municipio'),

(21, 'Vargas','municipio'),

(22, 'Arístides Bastidas','municipio'),
(22, 'Bolívar','municipio'),
(22, 'Bruzual','municipio'),
(22, 'Cocorote','municipio'),
(22, 'Independencia','municipio'),
(22, 'José Antonio Páez','municipio'),
(22, 'La Trinidad','municipio'),
(22, 'Manuel Monge','municipio'),
(22, 'Nirgua','municipio'),
(22, 'Peña','municipio'),
(22, 'San Felipe','municipio'),
(22, 'Sucre','municipio'),
(22, 'Urachiche','municipio'),
(22, 'José Joaquín Veroes','municipio'),

(23, 'Almirante Padilla','municipio'),
(23, 'Baralt','municipio'),
(23, 'Cabimas','municipio'),
(23, 'Catatumbo','municipio'),
(23, 'Colón','municipio'),
(23, 'Francisco Javier Pulgar','municipio'),
(23, 'Páez','municipio'),
(23, 'Jesús Enrique Losada','municipio'),
(23, 'Jesús María Semprún','municipio'),
(23, 'La Cañada de Urdaneta','municipio'),
(23, 'Lagunillas','municipio'),
(23, 'Machiques de Perijá','municipio'),
(23, 'Mara','municipio'),
(23, 'Maracaibo','municipio'),
(23, 'Miranda','municipio'),
(23, 'Rosario de Perijá','municipio'),
(23, 'San Francisco','municipio'),
(23, 'Santa Rita','municipio'),
(23, 'Simón Bolívar','municipio'),
(23, 'Sucre','municipio'),
(23, 'Valmore Rodríguez','municipio'),

(24, 'Libertador','municipio');


INSERT INTO public.lugar ( fk_lugar,lu_nombre,lu_tipo) VALUES
(26,'Alto Orinoco','parroquia'),
(26, 'Huachamacare Acanaña','parroquia'),
(26, 'Marawaka Toky Shamanaña','parroquia'),
(26, 'Mavaka Mavaka','parroquia'),
(26, 'Sierra Parima Parimabé','parroquia'),

(27, 'Ucata Laja Lisa','parroquia'),
(27, 'Yapacana Macuruco','parroquia'),
(27, 'Caname Guarinuma','parroquia'),
(27, 'San Fernando de Atabapo','parroquia'),

(28, 'Fernando Girón Tovar','parroquia'),
(28, 'Luis Alberto Gómez','parroquia'),
(28, 'Pahueña Limón de Parhueña','parroquia'),
(28, 'Platanillal Platanillal','parroquia'),

(29, 'Samariapo','parroquia'),
(29, 'Sipapo','parroquia'),
(29, 'Munduapo','parroquia'),
(29, 'Guayapo','parroquia'),
(29, 'Isla Ratón','parroquia'),

(30, 'Alto Ventuari','parroquia'),
(30, 'Medio Ventuari','parroquia'),
(30, 'Bajo Ventuari','parroquia'),
(30, 'San Juan de Manapiare','parroquia'),

(31, 'Maroa','parroquia'),
(31, 'Victorino','parroquia'),
(31, 'Comunidad','parroquia'),

(32, 'Casiquiare','parroquia'),
(32, 'Cocuy','parroquia'),
(32, 'San Carlos de Río Negro','parroquia'),
(32, 'Solano','parroquia'),

(33, 'Anaco','parroquia'),
(33, 'San Joaquín','parroquia'),
(33, 'Buena Vista','parroquia'),

(34, 'Cachipo','parroquia'),
(34, 'Aragua de Barcelona','parroquia'),


(35, 'Clarines','parroquia'),
(35, 'Guanape','parroquia'),
(35, 'Sabana de Uchire','parroquia'),

(36, 'Lechería','parroquia'),
(36, 'El Morro','parroquia'),

(37, 'Puerto Píritu','parroquia'),
(37, 'San Miguel','parroquia'),
(37, 'Sucre','parroquia'),

(38, 'Valle de Guanape','parroquia'),
(38, 'Santa Bárbara','parroquia'),


(39, 'El Chaparro','parroquia'),
(39, 'Tomás Alfaro','parroquia'),
(39, 'Calatrava','parroquia'),

(40, 'Guanta','parroquia'),
(40, 'Chorrerón','parroquia'),

(41, 'Mamo','parroquia'),
(41, 'Soledad','parroquia'),

(42, 'Mapire','parroquia'),
(42, 'Piar','parroquia'),
(42, 'Santa Clara','parroquia'),
(42, 'San Diego de Cabrutica','parroquia'),
(42, 'Uverito','parroquia'),
(42, 'Zuata','parroquia'),

(43,'Puerto La Cruz','parroquia'),
(43,'Pozuelos','parroquia'),

(44, 'Onoto','parroquia'),
(44, 'San Pablo','parroquia'),

(45, 'San Mateo','parroquia'),
(45, 'El Carito','parroquia'),
(45, 'Santa Inés','parroquia'),
(45, 'La Romereña','parroquia'),

(46, 'Atapirire','parroquia'),
(46, 'Boca del Pao','parroquia'),
(46, 'El Pao','parroquia'),
(46, 'Pariaguán','parroquia'),

(47, 'Cantaura','parroquia'),
(47, 'Libertador','parroquia'),
(47, 'Santa Rosa','parroquia'),
(47, 'Urica','parroquia'),

(48, 'Píritu','parroquia'),
(48, 'San Francisco','parroquia'),

(49, 'San José de Guanipa','parroquia'),

(50, 'Boca de Uchire','parroquia'),
(50, 'Boca de Chávez','parroquia'),

(51, 'Pueblo Nuevo','parroquia'),
(51, 'Santa Ana','parroquia'),

(52, 'Bergantín','parroquia'),
(52, 'Caigua','parroquia'),
(52, 'El Carmen','parroquia'),
(52, 'El Pilar','parroquia'),
(52, 'Naricual','parroquia'),
(52, 'San Crsitóbal','parroquia'),

(53, 'Edmundo Barrios','parroquia'),
(53, 'Miguel Otero Silva','parroquia'),


(54, 'Achaguas','parroquia'),
(54, 'Apurito','parroquia'),
(54, 'El Yagual','parroquia'),
(54, 'Guachara','parroquia'),
(54, 'Mucuritas','parroquia'),
(54, 'Queseras del medio','parroquia'),


(55, 'Biruaca','parroquia'),


(56, 'Bruzual','parroquia'),
(56, 'Mantecal','parroquia'),
(56, 'Quintero','parroquia'),
(56, 'Rincón Hondo','parroquia'),
(56, 'San Vicente','parroquia'),


(57, 'Guasdualito','parroquia'),
(57, 'Aramendi','parroquia'),
(57, 'El Amparo','parroquia'),
(57, 'San Camilo','parroquia'),
(57, 'Urdaneta','parroquia'),


(58, 'San Juan de Payara','parroquia'),
(58, 'Codazzi','parroquia'),
(58, 'Cunaviche','parroquia'),

(59, 'Elorza','parroquia'),
(59, 'La Trinidad','parroquia'),

(60, 'San Fernando','parroquia'),
(60, 'El Recreo','parroquia'),
(60, 'Peñalver','parroquia'),
(60, 'San Rafael de Atamaica','parroquia'),

(61, 'Pedro José Ovalles','parroquia'),
(61, 'Joaquín Crespo','parroquia'),
(61, 'José Casanova Godoy','parroquia'),
(61, 'Madre María de San José','parroquia'),
(61, 'Andrés Eloy Blanco','parroquia'),
(61, 'Los Tacarigua','parroquia'),
(61, 'Las Delicias','parroquia'),
(61,'Choroní','parroquia'),

(62, 'Bolívar','parroquia'),

(63, 'Camatagua','parroquia'),
(63, 'Carmen de Cura','parroquia'),

(64, 'Santa Rita','parroquia'),
(64, 'Francisco de Miranda','parroquia'),
(64, 'Moseñor Feliciano González','parroquia'),



(65, 'Santa Cruz','parroquia'),

(66, 'José Félix Ribas','parroquia'),
(66, 'Castor Nieves Ríos','parroquia'),
(66, 'Las Guacamayas','parroquia'),
(66, 'Pao de Zárate','parroquia'),
(66, 'Zuata','parroquia'),

(67, 'José Rafael Revenga','parroquia'),
(67, 'El Consejo','parroquia'),

(68, 'Palo Negro','parroquia'),
(68, 'San Martín de Porres','parroquia'),


(69, 'Ocumare de la Costa','parroquia'),

(70, 'San Casimiro','parroquia'),
(70, 'Güiripa','parroquia'),
(70, 'Ollas de Caramacate','parroquia'),
(70, 'Valle Morín','parroquia'),

(71, 'El Limón','parroquia'),
(71, 'Caña de Azúcar','parroquia'),


(72, 'San Sebastían','parroquia'),



(73, 'Turmero','parroquia'),
(73, 'Arevalo Aponte','parroquia'),
(73, 'Chuao','parroquia'),
(73, 'Samán de Güere','parroquia'),
(73, 'Alfredo Pacheco Miranda','parroquia'),

(74, 'Santos Michelena','parroquia'),
(74, 'Tiara','parroquia'),



(75, 'Cagua','parroquia'),
(75, 'Bella Vista','parroquia'),

(76, 'Tovar','parroquia'),

(77, 'Urdaneta','parroquia'),
(77, 'Las Peñitas','parroquia'),
(77, 'San Francisco de Cara','parroquia'),
(77, 'Taguay','parroquia'),


(78, 'Zamora','parroquia'),
(78, 'Magdaleno','parroquia'),
(78, 'San Francisco de Asís','parroquia'),
(78, 'Valles de Tucutunemo','parroquia'),
(78, 'Augusto Mijares','parroquia'),


(79, 'Sabaneta','parroquia'),
(79, 'Juan Antonio Rodríguez Domínguez','parroquia'),

(80, 'El Cantón','parroquia'),
(80, 'Santa Cruz de Guacas','parroquia'),
(80, 'Puerto Vivas','parroquia'),

(81, 'Ticoporo','parroquia'),
(81, 'Nicolás Pulido','parroquia'),
(81, 'Andrés Bello','parroquia'),

(82, 'Arismendi','parroquia'),
(82, 'Guadarrama','parroquia'),
(82, 'La Unión','parroquia'),
(82, 'San Antonio','parroquia'),

(83, 'Barinas','parroquia'),
(83, 'Alberto Arvelo Larriva','parroquia'),
(83, 'San Silvestre','parroquia'),
(83, 'Santa Inés','parroquia'),
(83, 'Santa Lucía','parroquia'),
(83, 'Torumos','parroquia'),
(83, 'El Carmen','parroquia'),
(83, 'Rómulo Betancourt','parroquia'),
(83, 'Corazón de Jesús','parroquia'),
(83, 'Ramón Ignacio Méndez','parroquia'),
(83, 'Alto Barinas','parroquia'),
(83, 'Manuel Palacio Fajardo','parroquia'),
(83, 'Juan Antonio Rodríguez Domínguez','parroquia'),
(83, 'Dominga Ortiz de Páez','parroquia'),

(84, 'Barinitas','parroquia'),
(84, 'Altamira de Cáceres','parroquia'),
(84, 'Calderas','parroquia'),

(85, 'Barrancas','parroquia'),
(85, 'El Socorro','parroquia'),
(85, 'Mazparrito','parroquia'),

(86, 'Santa Bárbara','parroquia'),
(86, 'Pedro Briceño Méndez','parroquia'),
(86, 'Ramón Ignacio Méndez','parroquia'),
(86, 'José Ignacio del Pumar','parroquia'),

(87, 'Obispos','parroquia'),
(87, 'Guasimitos','parroquia'),
(87, 'El Real','parroquia'),
(87, 'La Luz','parroquia'),

(88, 'Ciudad Bolívia','parroquia'),
(88, 'José Ignacio Briceño','parroquia'),
(88, 'José Félix Ribas','parroquia'),
(88, 'Páez','parroquia'),

(89, 'Libertad','parroquia'),
(89, 'Dolores','parroquia'),
(89, 'Santa Rosa','parroquia'),
(89, 'Palacio Fajardo','parroquia'),
(89, 'Simón Rodríguez','parroquia'),


(90, 'Ciudad de Nutrias','parroquia'),
(90, 'El Regalo','parroquia'),
(90, 'Puerto Nutrias','parroquia'),
(90, 'Santa Catalina','parroquia'),
(90, 'Simón Bolívar','parroquia'),

(91, 'Cachamay','parroquia'),
(91, 'Chirica','parroquia'),
(91, 'Dalla Costa','parroquia'),
(91, 'Once de Abril','parroquia'),
(91, 'Simón Bolívar','parroquia'),
(91, 'Unare','parroquia'),
(91, 'Universidad','parroquia'),
(91, 'Vista al Sol','parroquia'),
(91, 'Pozo Verde','parroquia'),
(91, 'Yocoima','parroquia'),
(91, '5 de Julio','parroquia'),

(92, 'Cedeño','parroquia'),
(92, 'Altagracia','parroquia'),
(92, 'Ascensión Farreras','parroquia'),
(92, 'Guaniamo','parroquia'),
(92, 'La Urbana','parroquia'),
(92, 'Pijiguaos','parroquia'),

(93, 'El Callao','parroquia'),

(94, 'Gran Sabana','parroquia'),
(94, 'Ikabarú','parroquia'),

(95, 'Catedral','parroquia'),
(95, 'Zea','parroquia'),
(95, 'Orinoco','parroquia'),
(95, 'José Antonio Páez','parroquia'),
(95, 'Marhuanta','parroquia'),
(95, 'Agua Salada','parroquia'),
(95, 'Vista Hermosa','parroquia'),
(95, 'La Sabanita','parroquia'),
(95, 'Panapana','parroquia'),

(96, 'Andrés Eloy Blanco','parroquia'),
(96, 'Upata','parroquia'),
(96, 'Pedro Cova','parroquia'),

(97, 'Raúl Leoni','parroquia'),
(97, 'Barceloneta','parroquia'),
(97, 'Santa Bárbara','parroquia'),
(97, 'San Francisco','parroquia'),

(98, 'Roscio','parroquia'),
(98, 'Salóm','parroquia'),

(99, 'Sifontes','parroquia'),
(99, 'Dalla Costa','parroquia'),
(99, 'San Isidro','parroquia'),

(100, 'Sucre','parroquia'),
(100, 'Aripao','parroquia'),
(100, 'Guarataro','parroquia'),
(100, 'Las Majadas','parroquia'),
(100, 'Moitaco','parroquia'),

(101, 'Padre Pedro Chien','parroquia'),
(101, 'Río Grande','parroquia'),


(102, 'Canoabo','parroquia'),
(102, 'Simón Bolívar','parroquia'),


(103, 'Güigüe','parroquia'),
(103, 'Carabobo','parroquia'),
(103, 'Tacarigua','parroquia'),

(104, 'Mariara','parroquia'),
(104, 'Aguas Calientes','parroquia'),

(105, 'Ciudad Alianza','parroquia'),
(105, 'Guacara','parroquia'),
(105, 'Yagua','parroquia'),

(106, 'Morón','parroquia'),
(106, 'Yagua','parroquia'),

(107, 'Tocuyito','parroquia'),
(107, 'Independencia','parroquia'),
	
(108, 'Los Guayos','parroquia'),

(109, 'Miranda','parroquia'),

(110, 'Montalbán','parroquia'),

(111, 'Naguanagua','parroquia'),


(112, 'Bartolomé Salóm','parroquia'),
(112, 'Democracia','parroquia'),
(112, 'Fraternidad','parroquia'),
(112, 'Goaigoaza','parroquia'),
(112, 'Juan José Flores','parroquia'),
(112, 'Unión','parroquia'),
(112, 'Borburata','parroquia'),
(112, 'Patanemo','parroquia'),

(113, 'San Diego','parroquia'),

(114, 'San Joaquín','parroquia'),

(115, 'Candelaria','parroquia'),
(115, 'Catedral','parroquia'),
(115, 'El Socorro','parroquia'),
(115, 'Miguel Peña','parroquia'),
(115, 'Rafael Urdaneta','parroquia'),
(115, 'San Blas','parroquia'),
(115, 'San José','parroquia'),
(115, 'Santa Rosa','parroquia'),
(115, 'Negro Primero','parroquia'),

(116, 'Cojedes','parroquia'),
(116, 'Juan de Mata Suárez','parroquia'),

(117, 'Tinaquillo','parroquia'),

(118, 'El Baúl','parroquia'),
(118, 'Sucre','parroquia'),

(119, 'La Aguadita','parroquia'),
(119, 'Macapo','parroquia'),


(120, 'El Pao','parroquia'),

(121, 'El Amparo','parroquia'),
(121, 'Libertad de Cojedes','parroquia'),

(122, 'Rómulo Gallegos','parroquia'),

(123, 'San Carlos de Austria','parroquia'),
(123, 'Juan Ángel Bravo','parroquia'),
(123, 'Manuel Manrique','parroquia'),

(124, 'General en Jefe José Laurencio Silva','parroquia'),

(125, 'Curiapo','parroquia'),
(125, 'Almirante Luis Brión','parroquia'),
(125, 'Francisco Aniceto Lugo','parroquia'),
(125, 'Manuel Renaud','parroquia'),
(125, 'Padre Barral','parroquia'),
(125, 'Santos de Abelgas','parroquia'),

(126, 'Imataca','parroquia'),
(126, 'Juan Bautista Arismendi','parroquia'),
(126, 'Manuel Piar','parroquia'),
(126, 'Rómulo Gallegos','parroquia'),

(127, 'Pedernales','parroquia'),
(127, 'Luis Beltrán Prieto Figueroa','parroquia'),

(128, 'San José','parroquia'),
(128, 'José Vidal Marcano','parroquia'),
(128, 'Juan Millán','parroquia'),
(128, 'Leonardo Ruíz Pineda','parroquia'),
(128, 'Mariscal Antonio José de Sucre','parroquia'),
(128, 'Monseñor Argimiro García','parroquia'),
(128, 'San Rafael (Delta Amacuro)','parroquia'),
(128, 'Virgen del Valle','parroquia'),

(129, 'Capadare','parroquia'),
(129, 'La Pastora','parroquia'),
(129, 'Libertador','parroquia'),
(129, 'San Juan de los Cayos','parroquia'),

(130, 'Aracua','parroquia'),
(130, 'La Peña','parroquia'),
(130, 'San Luis','parroquia'),

(131, 'Bariro','parroquia'),
(131, 'Borojó','parroquia'),
(131, 'Capatárida','parroquia'),
(131, 'Guajiro','parroquia'),
(131, 'Seque','parroquia'),
(131, 'Zazárida','parroquia'),
(131, 'Valle de Eroa','parroquia'),

(132, 'Cacique Manaure','parroquia'),

(133, 'Norte','parroquia'),
(133, 'Carirubana','parroquia'),
(133, 'Santa Ana','parroquia'),
(133, 'Urbana Punta Cardón','parroquia'),

(134, 'La Vela de Coro','parroquia'),
(134, 'Acurigua','parroquia'),
(134, 'Guaibacoa','parroquia'),
(134, 'Las Calderas','parroquia'),
(134, 'Macoruca','parroquia'),


(135, 'Dabajuro','parroquia'),

(136, 'Agua Clara','parroquia'),
(136, 'Avaria','parroquia'),
(136, 'Pedregal','parroquia'),
(136, 'Piedra Grande','parroquia'),
(136, 'Purureche','parroquia'),

(137, 'Adaure','parroquia'),
(137, 'Adícora','parroquia'),
(137, 'Baraived','parroquia'),
(137, 'Buena Vista','parroquia'),
(137, 'Jadacaquiva','parroquia'),
(137, 'El Vínculo','parroquia'),
(137, 'El Hato','parroquia'),
(137, 'Moruy','parroquia'),
(137, 'Pueblo Nuevo','parroquia'),

(138, 'Agua Larga','parroquia'),
(138, 'Churuguara','parroquia'),
(138, 'El Paují','parroquia'),
(138, 'Independencia','parroquia'),
(138, 'Mapararí','parroquia'),

(139, 'Agua Linda','parroquia'),
(139, 'Araurima','parroquia'),
(139, 'Jacura','parroquia'),

(140, 'Tucacas','parroquia'),
(140, 'Boca de Aroa','parroquia'),

(141, 'Los Taques','parroquia'),
(141, 'Judibana','parroquia'),

(142, 'Mene de Mauroa','parroquia'),
(142, 'San Félix','parroquia'),
(142, 'Casigua','parroquia'),

(143, 'Guzmán Guillermo','parroquia'),
(143, 'Mitare','parroquia'),
(143, 'Río Seco','parroquia'),
(143, 'Sabaneta','parroquia'),
(143, 'San Antonio','parroquia'),
(143, 'San Gabriel','parroquia'),
(143, 'Santa Ana','parroquia'),


(144, 'Boca del Tocuyo','parroquia'),
(144, 'Chichiriviche','parroquia'),
(144, 'Tocuyo de la Costa','parroquia'),

(145, 'Palmasola','parroquia'),

(146, 'Cabure','parroquia'),
(146, 'Colina','parroquia'),
(146, 'Curimagua','parroquia'),


(147, 'San José de la Costa','parroquia'),
(147, 'Píritu','parroquia'),


(148, 'San Francisco','parroquia'),


(149, 'Sucre','parroquia'),
(149, 'Pecaya','parroquia'),


(150, 'Tocópero','parroquia'),

(151, 'El Charal','parroquia'),
(151, 'Las Vegas del Tuy','parroquia'),
(151, 'Santa Cruz de Bucaral','parroquia'),

(152, 'Bruzual','parroquia'),
(152, 'Urumaco','parroquia'),

(153, 'Puerto Cumarebo','parroquia'),
(153, 'La Ciénaga','parroquia'),
(153, 'La Soledad','parroquia'),
(153, 'Pueblo Cumarebo','parroquia'),
(153, 'Zazárida','parroquia'),

--(155, 'Churuguara'),

(154, 'Camaguán','parroquia'),
(154, 'Puerto Miranda','parroquia'),
(154, 'Uverito','parroquia'),


(155, 'Chaguaramas','parroquia'),

(156, 'El Socorro','parroquia'),

(157, 'Tucupido','parroquia'),
(157, 'San Rafael de Laya','parroquia'),

(158, 'Altagracia de Orituco','parroquia'),
(158, 'San Rafael de Orituco','parroquia'),
(158, 'San Francisco Javier de Lezama','parroquia'),
(158, 'Paso Real de Macaira','parroquia'),
(158, 'Carlos Soublette','parroquia'),
(158, 'San Francisco de Macaira','parroquia'),
(158, 'Libertad de Orituco','parroquia'),

(159, 'Cantagallo','parroquia'),
(159, 'San Juan de los Morros','parroquia'),
(159, 'Parapara','parroquia'),

(160, 'El Sombrero','parroquia'),
(160, 'Sosa','parroquia'),


(161, 'Las Mercedes','parroquia'),
(161, 'Cabruta','parroquia'),
(161, 'Santa Rita de Manapire','parroquia'),

(162, 'Valle de la Pascua','parroquia'),
(162, 'Espino','parroquia'),

(163, 'San José de Unare','parroquia'),
(163, 'Zaraza','parroquia'),

(164, 'San José de Tiznados','parroquia'),
(164, 'San Francisco de Tiznados','parroquia'),
(164, 'San Lorenzo de Tiznados','parroquia'),
(164, 'Ortiz','parroquia'),

(165, 'Guayabal','parroquia'),
(165, 'Cazorla','parroquia'),

(166, 'San José de Guaribe','parroquia'),

(167, 'Santa María de Ipire','parroquia'),
(167, 'Altamira','parroquia'),

(168, 'El Calvario','parroquia'),
(168, 'El Rastro','parroquia'),
(168, 'Guardatinajas','parroquia'),
(168, 'Capital Urbana Calabozo','parroquia'),

(169, 'Quebrada Honda de Guache','parroquia'),
(169, 'Pío Tamayo','parroquia'),
(169, 'Yacambú','parroquia'),

(170, 'Fréitez','parroquia'),
(170, 'José María Blanco','parroquia'),


(171, 'Catedral','parroquia'),
(171, 'Concepción','parroquia'),
(171, 'El Cují','parroquia'),
(171, 'Juan de Villegas','parroquia'),
(171, 'Santa Rosa','parroquia'),
(171, 'Tamaca','parroquia'),
(171, 'Unión','parroquia'),
(171, 'Aguedo Felipe Alvarado','parroquia'),
(171, 'Buena Vista','parroquia'),
(171, 'Juárez','parroquia'),

(172, 'Juan Bautista Rodríguez','parroquia'),
(172, 'Cuara','parroquia'),
(172, 'Diego de Lozada','parroquia'),
(172, 'Paraíso de San José','parroquia'),
(172, 'San Miguel','parroquia'),
(172, 'Tintorero','parroquia'),
(172, 'José Bernardo Dorante','parroquia'),
(172, 'Coronel Mariano Peraza ','parroquia'),


(173, 'Bolívar','parroquia'),
(173, 'Anzoátegui','parroquia'),
(173, 'Guarico','parroquia'),
(173, 'Hilario Luna y Luna','parroquia'),
(173, 'Humocaro Alto','parroquia'),
(173, 'Humocaro Bajo','parroquia'),
(173, 'La Candelaria','parroquia'),
(173, 'Morán','parroquia'),

(174, 'Cabudare','parroquia'),
(174, 'José Gregorio Bastidas','parroquia'),
(174, 'Agua Viva','parroquia'),

(175,'Sarare','parroquia'),
(175,'Buría','parroquia'),
(175,'Gustavo Vegas León','parroquia'),

(176,'Trinidad Samuel','parroquia'),
(176,'Antonio Díaz','parroquia'),
(176,'Camacaro','parroquia'),
(176,'Castañeda','parroquia'),
(176,'Cecilio Zubillaga','parroquia'),
(176,'Chiquinquirá','parroquia'),
(176,'El Blanco','parroquia'),
(176,'Espinoza de los Monteros','parroquia'),
(176,'Lara','parroquia'),
(176,'Las Mercedes','parroquia'),
(176,'Manuel Morillo','parroquia'),
(176,'Montaña Verde','parroquia'),
(176,'Montes de Oca','parroquia'),
(176,'Torres','parroquia'),
(176,'Heriberto Arroyo','parroquia'),
(176,'Reyes Vargas','parroquia'),
(176,'Altagracia','parroquia'),



(177, 'Siquisique','parroquia'),
(177, 'Moroturo','parroquia'),
(177, 'San Miguel','parroquia'),
(177, 'Xaguas','parroquia'),

(178, 'Presidente Betancourt','parroquia'),
(178, 'Presidente Páez','parroquia'),
(178, 'Presidente Rómulo Gallegos','parroquia'),
(178, 'Gabriel Picón González','parroquia'),
(178, 'Héctor Amable Mora','parroquia'),
(178, 'José Nucete Sardi','parroquia'),
(178, 'Pulido Méndez','parroquia'),

(179, 'La Azulita','parroquia'),

(180, 'Santa Cruz de Mora','parroquia'),
(180, 'Mesa Bolívar','parroquia'),
(180, 'Mesa de Las Palmas','parroquia'),

(181, 'Aricagua','parroquia'),
(181, 'San Antonio','parroquia'),

(182, 'Canagua','parroquia'),
(182, 'Capurí','parroquia'),
(182, 'Chacantá','parroquia'),
(182, 'El Molino','parroquia'),
(182, 'Guaimaral','parroquia'),
(182, 'Mucutuy','parroquia'),
(182, 'Mucuchachí','parroquia'),

(183, 'Fernández Peña','parroquia'),
(183, 'Matriz','parroquia'),
(183, 'Montalbán','parroquia'),
(183, 'Acequias','parroquia'),
(183, 'Jají','parroquia'),
(183, 'La Mesa','parroquia'),
(183, 'San José del Sur','parroquia'),

(184, 'Tucaní','parroquia'),
(184, 'Florencio Ramírez','parroquia'),


(185, 'Santo Domingo','parroquia'),
(185, 'Las Piedras','parroquia'),

(186, 'Guaraque','parroquia'),
(186, 'Mesa de Quintero','parroquia'),
(186, 'Río Negro','parroquia'),

(187, 'Arapuey','parroquia'),
(187, 'Palmira','parroquia'),

(188, 'San Cristóbal de Torondoy','parroquia'),
(188, 'Torondoy','parroquia'),

(189, 'Antonio Spinetti Dini','parroquia'),
(189, 'Arias','parroquia'),
(189, 'Caracciolo Parra Pérez','parroquia'),
(189, 'Domingo Peña','parroquia'),
(189, 'El Llano','parroquia'),
(189, 'Gonzalo Picón Febres','parroquia'),
(189, 'Jacinto Plaza','parroquia'),
(189, 'Juan Rodríguez Suárez','parroquia'),
(189, 'Lasso de la Vega','parroquia'),
(189, 'Mariano Picón Salas','parroquia'),
(189, 'Milla','parroquia'),
(189, 'Osuna Rodríguez','parroquia'),
(189, 'Sagrario','parroquia'),
(189, 'El Morro','parroquia'),
(189, 'Los Nevados','parroquia'),


(190, 'Andrés Eloy Blanco','parroquia'),
(190, 'La Venta','parroquia'),
(190, 'Piñango','parroquia'),
(190, 'Timotes','parroquia'),

(191, 'Eloy Paredes','parroquia'),
(191, 'San Rafael de Alcázar','parroquia'),
(191, 'Santa Elena de Arenales','parroquia'),

(192, 'Santa María de Caparo','parroquia'),

(193, 'Pueblo Llano','parroquia'),

(194, 'Cacute','parroquia'),
(194, 'La Toma','parroquia'),
(194, 'Mucuchíes','parroquia'),
(194, 'Mucurubá','parroquia'),
(194, 'San Rafael','parroquia'),


(195, 'Gerónimo Maldonado','parroquia'),
(195, 'Bailadores','parroquia'),

(196, 'Tabay','parroquia'),

(197, 'Chiguará','parroquia'),
(197, 'Estánquez','parroquia'),
(197, 'Lagunillas','parroquia'),
(197, 'La Trampa','parroquia'),
(197, 'Pueblo Nuevo del Sur','parroquia'),
(197, 'San Juan','parroquia'),

(198, 'El Amparo','parroquia'),
(198, 'El Llano','parroquia'),
(198, 'San Francisco','parroquia'),
(198, 'Tovar','parroquia'),

(199, 'Independencia','parroquia'),
(199, 'María de la Concepción Palacios Blanco','parroquia'),
(199, 'Nueva Bolivia','parroquia'),
(199, 'Santa Apolonia','parroquia'),

(200, 'Caño El Tigre','parroquia'),
(200, 'Zea','parroquia'),

(201, 'Aragüita','parroquia'),
(201, 'Arévalo González','parroquia'),
(201, 'Capaya','parroquia'),
(201, 'Caucagua','parroquia'),
(201, 'Panaquire','parroquia'),
(201, 'Ribas','parroquia'),
(201, 'El Café','parroquia'),
(201, 'Marizapa','parroquia'),

(202, 'Cumbo','parroquia'),
(202, 'San José de Barlovento','parroquia'),

(203, 'El Cafetal','parroquia'),
(203, 'Las Minas','parroquia'),

(204, 'Higuerote','parroquia'),
(204, 'Curiepe','parroquia'),
(204, 'Tacarigua de Brión','parroquia'),

(205, 'Mamporal','parroquia'),

(206, 'Carrizal','parroquia'),

(207, 'Chacao','parroquia'),

(208, 'Charallave','parroquia'),
(208, 'Las Brisas','parroquia'),



(209, 'El Hatillo','parroquia'),

(210, 'Altagracia de la Montaña','parroquia'),
(210, 'Cecilio Acosta','parroquia'),
(210, 'Los Teques','parroquia'),
(210, 'El Jarillo','parroquia'),
(210, 'San Pedro','parroquia'),
(210, 'Tácata','parroquia'),
(210, 'Paracotos','parroquia'),

(211, 'Cartanal','parroquia'),
(211, 'Santa Teresa del Tuy','parroquia'),

(212, 'La Democracia','parroquia'),
(212, 'Ocumare del Tuy','parroquia'),
(212, 'Santa Bárbara','parroquia'),

(213, 'San Antonio de los Altos','parroquia'),

(214, 'Río Chico','parroquia'),
(214, 'El Guapo','parroquia'),
(214, 'Tacarigua de la Laguna','parroquia'),
(214, 'Paparo','parroquia'),
(214, 'San Fernando del Guapo','parroquia'),

(215, 'Santa Lucía del Tuy','parroquia'),

(216, 'Cúpira','parroquia'),
(216, 'Machurucuto','parroquia'),

(217, 'Guarenas','parroquia'),

(218, 'San Antonio de Yare','parroquia'),
(218, 'San Francisco de Yare','parroquia'),



(219, 'Leoncio Martínez','parroquia'),
(219, 'Petare','parroquia'),
(219, 'Caucagüita','parroquia'),
(219, 'Filas de Mariche','parroquia'),
(219, 'La Dolorita','parroquia'),


(220, 'Cúa','parroquia'),
(220, 'Nueva Cúa','parroquia'),

(221, 'Guatire','parroquia'),
(221, 'Bolívar','parroquia'),

(222, 'San Antonio de Maturín','parroquia'),
(222, 'San Francisco de Maturín','parroquia'),

(223, 'Aguasay','parroquia'),

(224, 'Caripito','parroquia'),

(225, 'El Guácharo','parroquia'),
(225, 'La Guanota','parroquia'),
(225, 'Sabana de Piedra','parroquia'),
(225, 'San Agustín','parroquia'),
(225, 'Teresen','parroquia'),
(225, 'Caripe','parroquia'),


(226, 'Areo','parroquia'),
(226, 'Capital Cedeño','parroquia'),
(226, 'San Félix de Cantalicio','parroquia'),
(226, 'Viento Fresco','parroquia'),

(227, 'El Tejero','parroquia'),
(227, 'Punta de Mata','parroquia'),

(228, 'Chaguaramas','parroquia'),
(228, 'Las Alhuacas','parroquia'),
(228, 'Tabasca','parroquia'),
(228, 'Temblador','parroquia'),


(229, 'Alto de los Godos','parroquia'),
(229, 'Boquerón','parroquia'),
(229, 'Las Cocuizas','parroquia'),
(229, 'La Cruz','parroquia'),
(229, 'San Simón','parroquia'),
(229, 'El Corozo','parroquia'),
(229, 'El Furrial','parroquia'),
(229, 'Jusepín','parroquia'),
(229, 'La Pica','parroquia'),
(229, 'San Vicente','parroquia'),

(230, 'Aparicio','parroquia'),
(230, 'Aragua de Maturín','parroquia'),
(230, 'Chaguamal','parroquia'),
(230, 'El Pinto','parroquia'),
(230, 'Guanaguana','parroquia'),
(230, 'La Toscana','parroquia'),
(230, 'Taguaya','parroquia'),

(231, 'Cachipo','parroquia'),
(231, 'Quiriquire','parroquia'),

(232, 'Santa Bárbara','parroquia'),
(232, 'Morón','parroquia'),

(233, 'Barrancas','parroquia'),
(233, 'Los Barrancos de Fajardo','parroquia'),

(234, 'Uracoa','parroquia'),


(235, 'Antolín del Campo','parroquia'),

(236, 'Arismendi','parroquia'),

(237, 'García','parroquia'),
(237, 'Francisco Fajardo','parroquia'),

(238, 'Bolívar','parroquia'),
(238, 'Guevara','parroquia'),
(238, 'Matasiete','parroquia'),
(238, 'Santa Ana','parroquia'),
(238, 'Sucre','parroquia'),

(239, 'Aguirre','parroquia'),
(239, 'Maneiro','parroquia'),


(240, 'Adrián','parroquia'),
(240, 'Juan Griego','parroquia'),

(241, 'Porlamar','parroquia'),

(242, 'San Francisco de Macanao','parroquia'),
(242, 'Boca de Río','parroquia'),

(243, 'Tubores','parroquia'),
(243, 'Los Baleales','parroquia'),

(244, 'Vicente Fuentes','parroquia'),
(244, 'Villalba','parroquia'),

(245, 'San Juan Bautista','parroquia'),
(245, 'Zabala','parroquia'),

(246, 'Ahua Blanca','parroquia'),

(247, 'Capital Araure','parroquia'),
(247, 'Río Acarigua','parroquia'),

(248, 'Capital Esteller','parroquia'),
(248, 'Uveral','parroquia'),

(249, 'Guanare','parroquia'),
(249, 'Córdoba','parroquia'),
(249, 'San José de la Montaña','parroquia'),
(249, 'San Juan de Guanaguanare','parroquia'),
(249, 'Virgen de la Coromoto','parroquia'),

(250, 'Guanarito','parroquia'),
(250, 'Trinidad de la Capilla','parroquia'),
(250, 'Divina Pastora','parroquia'),

(251, 'Monseñor José Vicente de Unda','parroquia'),
(251, 'Peña Blanca','parroquia'),

(252, 'Capital Ospino','parroquia'),
(252, 'Aparición','parroquia'),
(252, 'La Estación','parroquia'),

(253, 'Páez','parroquia'),
(253, 'Payara','parroquia'),
(253, 'Pimpinela','parroquia'),
(253, 'Ramón Peraza','parroquia'),

(254, 'Papelón','parroquia'),
(254, 'Caño Delgadito','parroquia'),

(255, 'San Genaro de Boconoito','parroquia'),
(255, 'Antolín Tovar','parroquia'),

(256, 'San Rafael de Onoto','parroquia'),
(256, 'Santa Fe','parroquia'),
(256, 'Thermo Morles','parroquia'),

(257, 'Santa Rosalía','parroquia'),
(257, 'Florida','parroquia'),

(258, 'Sucre','parroquia'),
(258, 'Concepción','parroquia'),
(258, 'San Rafael de Palo Alzado','parroquia'),
(258, 'Uvencio Antonio Velásquez','parroquia'),
(258, 'San José de Saguaz','parroquia'),
(258, 'Villa Rosa','parroquia'),

(259, 'Turén','parroquia'),
(259, 'Canelones','parroquia'),
(259, 'Santa Cruz','parroquia'),
(259, 'San Isidro Labrador','parroquia'),

(260, 'Mariño','parroquia'),
(260, 'Rómulo Gallegos','parroquia'),

(261, 'San José de Aerocuar','parroquia'),
(261, 'Tavera Acosta','parroquia'),

(262, 'Río Caribe','parroquia'),
(262, 'Antonio José de Sucre','parroquia'),
(262, 'El Morro de Puerto Santo','parroquia'),
(262, 'Puerto Santo','parroquia'),
(262, 'San Juan de las Galdonas','parroquia'),

(263, 'El Pilar','parroquia'),
(263, 'El Rincón','parroquia'),
(263, 'General Francisco Antonio Váquez','parroquia'),
(263, 'Guaraúnos','parroquia'),
(263, 'Tunapuicito','parroquia'),
(263, 'Unión','parroquia'),

(264, 'Santa Catalina','parroquia'),
(264, 'Santa Rosa','parroquia'),
(264, 'Santa Teresa','parroquia'),
(264, 'Bolívar','parroquia'),
(264, 'Maracapana','parroquia'),

(265, 'Mariguitar','parroquia'),

(266, 'Libertad','parroquia'),
(266, 'El Paujil','parroquia'),
(266, 'Yaguaraparo','parroquia'),

(267, 'Cruz Salmerón Acosta','parroquia'),
(267, 'Chacopata','parroquia'),
(267, 'Manicuare','parroquia'),

(268, 'Tunapuy','parroquia'),
(268, 'Campo Elías','parroquia'),

(269, 'Irapa','parroquia'),
(269, 'Campo Claro','parroquia'),
(269, 'Maraval','parroquia'),
(269, 'San Antonio de Irapa','parroquia'),
(269, 'Soro','parroquia'),

(270, 'Mejía','parroquia'),

(271, 'Cumanacoa','parroquia'),
(271, 'Arenas','parroquia'),
(271, 'Aricagua','parroquia'),
(271, 'Cogollar','parroquia'),
(271, 'San Fernando','parroquia'),
(271, 'San Lorenzo','parroquia'),

(272, 'Villa Frontado (Muelle de Cariaco)','parroquia'),
(272, 'Catuaro','parroquia'),
(272, 'Rendón','parroquia'),
(272, 'San Cruz','parroquia'),
(272, 'Santa María','parroquia'),

(273, 'Altagracia','parroquia'),
(273, 'Santa Inés','parroquia'),
(273, 'Valentín Valiente','parroquia'),
(273, 'Ayacucho','parroquia'),
(273, 'San Juan','parroquia'),
(273, 'Raúl Leoni','parroquia'),
(273, 'Gran Mariscal','parroquia'),

(274, 'Cristóbal Colón','parroquia'),
(274, 'Bideau','parroquia'),
(274, 'Punta de Piedras','parroquia'),
(274, 'Güiria','parroquia'),


(275, 'Andrés Bello','parroquia'),

(276, 'Antonio Rómulo Costa','parroquia'),

(277, 'Ayacucho','parroquia'),
(277, 'Rivas Berti','parroquia'),
(277, 'San Pedro del Río','parroquia'),

(278, 'Bolívar','parroquia'),
(278, 'Palotal','parroquia'),
(278, 'General Juan Vicente Gómez','parroquia'),
(278, 'Isaías Medina Angarita','parroquia'),

(279, 'Táriba','parroquia'),
(279, 'Amenodoro Ángel Lamus','parroquia'),
(279, 'La Florida','parroquia'),

(280, 'Córdoba','parroquia'),

(281, 'Fernández Feo','parroquia'),
(281, 'Alberto Adriani','parroquia'),
(281, 'Santo Domingo','parroquia'),

(282, 'Francisco de Miranda','parroquia'),

(283, 'García de Hevia','parroquia'),
(283, 'Boca de Grita','parroquia'),
(283, 'José Antonio Páez','parroquia'),

(284, 'Guásimos','parroquia'),

(285, 'Independencia','parroquia'),
(285, 'Juan Germán Roscio','parroquia'),
(285, 'Román Cárdenas','parroquia'),

(286, 'Jáuregui','parroquia'),
(286, 'Emilio Constantino Guerrero','parroquia'),
(286, 'Monseñor Miguel Antonio Salas','parroquia'),

(287, 'José María Vargas','parroquia'),

(288, 'Junín','parroquia'),
(288, 'La Petrólea','parroquia'),
(288, 'Quinimarí','parroquia'),
(288, 'Bramón','parroquia'),

(289, 'Libertad','parroquia'),
(289, 'Cipriano Castro','parroquia'),
(289, 'Manuel Felipe Rugeles','parroquia'),

(290, 'Libertador','parroquia'),
(290, 'Doradas','parroquia'),
(290, 'Emeterio Ochoa','parroquia'),
(290, 'San Joaquín de Navay','parroquia'),

(291, 'Lobatera','parroquia'),
(291, 'Constitución','parroquia'),

(292, 'Michelena','parroquia'),

(293, 'Panamericano','parroquia'),
(293, 'La Palmita','parroquia'),

(294, 'Pedro María Ureña','parroquia'),
(294, 'Nueva Arcadia','parroquia'),

(295, 'Delicias','parroquia'),

(296, 'Samuel Darío Maldonado','parroquia'),
(296, 'Boconó','parroquia'),
(296, 'Hernández','parroquia'),

(297, 'La Concordia','parroquia'),
(297, 'San Juan Bautista','parroquia'),
(297, 'Pedro María Morantes','parroquia'),
(297, 'San Sebastián','parroquia'),
(297, 'Dr. Francisco Romero Lobo','parroquia'),

(298, 'Seboruco','parroquia'),

(299, 'Simón Rodríguez','parroquia'),

(300, 'Sucre','parroquia'),
(300, 'Eleazar López Contreras','parroquia'),
(300, 'San Pablo','parroquia'),

(301, 'Torbes','parroquia'),

(302, 'Uribante','parroquia'),
(302, 'Cárdenas','parroquia'),
(302, 'Juan Pablo Peñalosa','parroquia'),
(302, 'Potosí','parroquia'),

(303, 'San Judas Tadeo','parroquia'),

(304, 'Araguaney','parroquia'),
(304, 'El Jaguito','parroquia'),
(304, 'La Esperanza','parroquia'),
(304, 'Santa Isabel','parroquia'),

(305, 'Boconó','parroquia'),
(305, 'El Carmen','parroquia'),
(305, 'Mosquey','parroquia'),
(305, 'Ayacucho','parroquia'),
(305, 'Burbusay','parroquia'),
(305, 'General Ribas','parroquia'),
(305, 'Guaramacal','parroquia'),
(305, 'Vega de Guaramacal','parroquia'),
(305, 'Monseñor Jáuregui','parroquia'),
(305, 'Rafael Rangel','parroquia'),
(305, 'San Miguel','parroquia'),
(305, 'San José','parroquia'),

(306, 'Sabana Grande','parroquia'),
(306, 'Cheregüé','parroquia'),
(306, 'Granados','parroquia'),

(307, 'Arnoldo Gabaldón','parroquia'),
(307, 'Bolivia','parroquia'),
(307, 'Carrillo','parroquia'),
(307, 'Cegarra','parroquia'),
(307, 'Chejendé','parroquia'),
(307, 'Manuel Salvador Ulloa','parroquia'),
(307, 'San José','parroquia'),

(308, 'Carache','parroquia'),
(308, 'La Concepción','parroquia'),
(308, 'Cuicas','parroquia'),
(308, 'Panamericana','parroquia'),
(308, 'Santa Cruz','parroquia'),

(309, 'Escuque','parroquia'),
(309, 'La Unión','parroquia'),
(309, 'Santa Rita','parroquia'),
(309, 'Sabana Libre','parroquia'),

(310, 'El Socorro','parroquia'),
(310, 'Los Caprichos','parroquia'),
(310, 'Antonio José de Sucre','parroquia'),

(311, 'Campo Elías','parroquia'),
(311, 'Arnoldo Gabaldón','parroquia'),

(312, 'Santa Apolonia','parroquia'),
(312, 'El Progreso','parroquia'),
(312, 'La Ceiba','parroquia'),
(312, 'Tres de Febrero','parroquia'),

(313, 'El Dividive','parroquia'),
(313, 'Agua Santa','parroquia'),
(313, 'Agua Caliente','parroquia'),
(313, 'El Cenizo','parroquia'),
(313, 'Valerita','parroquia'),

(314, 'Monte Carmelo','parroquia'),
(314, 'Buena Vista','parroquia'),
(314, 'Santa María del Horcón','parroquia'),

(315, 'Motatán','parroquia'),
(315, 'El Baño','parroquia'),
(315, 'Jalisco','parroquia'),

(316, 'Pampán','parroquia'),
(316, 'Flor de Patria','parroquia'),
(316, 'La Paz','parroquia'),
(316, 'Santa Ana','parroquia'),





(317, 'Pampanito','parroquia'),
(317, 'La Concepción','parroquia'),
(317, 'Pampanito II','parroquia'),

(318, 'Betijoque','parroquia'),
(318, 'José Gregorio Hernández','parroquia'),
(318, 'La Pueblita','parroquia'),
(318, 'Los Cedros','parroquia'),

(319, 'Carvajal','parroquia'),
(319, 'Campo Alegre','parroquia'),
(319, 'Antonio Nicolás Briceño','parroquia'),
(319, 'José Leonardo Suárez','parroquia'),

(320, 'Sabana de Mendoza','parroquia'),
(320, 'Junín','parroquia'),
(320, 'Valmore Rodríguez','parroquia'),
(320, 'El Paraíso','parroquia'),

(321, 'Andrés Linares','parroquia'),
(321, 'Chiquinquirá','parroquia'),
(321, 'Cristóbal Mendoza','parroquia'),
(321, 'Cruz Carrillo','parroquia'),
(321, 'Matriz','parroquia'),
(321, 'Monseñor Carrillo','parroquia'),
(321, 'Tres Esquinas','parroquia'),

(322, 'Cabimbú','parroquia'),
(322, 'Jajó','parroquia'),
(322, 'La Mesa de Esnujaque','parroquia'),
(322, 'Santiago','parroquia'),
(322, 'Tuñame','parroquia'),
(322, 'La Quebrada','parroquia'),

(323, 'Juan Ignacio Montilla','parroquia'),
(323, 'La Beatriz','parroquia'),
(323, 'La Puerta','parroquia'),
(323, 'Mendoza del Valle de Momboy','parroquia'),
(323, 'Mercedes Díaz','parroquia'),
(323, 'San Luis','parroquia'),

(324, 'Caraballeda','parroquia'),
(324, 'Carayaca','parroquia'),
(324, 'Carlos Soublette','parroquia'),
(324, 'Caruao Chuspa','parroquia'),
(324, 'Catia La Mar','parroquia'),
(324, 'El Junko','parroquia'),
(324, 'La Guaira','parroquia'),
(324, 'Macuto','parroquia'),
(324, 'Maiquetía','parroquia'),
(324, 'Naiguatá','parroquia'),
(324, 'Urimare','parroquia'),


(325, 'Arístides Bastidas','parroquia'),

(326, 'Bolívar','parroquia'),

(327, 'Chivacoa','parroquia'),
(327, 'Campo Elías','parroquia'),


(328, 'Cocorote','parroquia'),

(329, 'Independencia','parroquia'),

(330, 'José Antonio Páez','parroquia'),

(331, 'La Trinidad','parroquia'),

(332, 'Manuel Monge','parroquia'),

(333,'Nirgua','parroquia'),
(333, 'Salóm','parroquia'),
(333, 'Temerla','parroquia'),

(334, 'San Andrés','parroquia'),
(334, 'Yaritagua','parroquia'),

(335, 'San Javier','parroquia'),
(335, 'Albarico','parroquia'),
(335, 'San Felipe','parroquia'),

(336, 'Sucre','parroquia'),

(337, 'Urachiche','parroquia'),

(338, 'El Guayabo','parroquia'),
(338, 'Farriar','parroquia'),


(339, 'Isla de Toas','parroquia'),
(339, 'Monagas','parroquia'),
(339, 'San Fernando','parroquia'),

(340, 'San Timoteo','parroquia'),
(340, 'General Urdaneta','parroquia'),
(340, 'Libertador','parroquia'),
(340, 'Marcelino Briceño','parroquia'),
(340, 'Pueblo Nuevo','parroquia'),
(340, 'Manuel Guanipa Matos','parroquia'),

(341, 'Ambrosio','parroquia'),
(341, 'Carmen Herrera','parroquia'),
(341, 'La Rosa','parroquia'),
(341, 'Germán Ríos Linares','parroquia'),
(341, 'San Benito','parroquia'),
(341, 'Rómulo Betancourt','parroquia'),
(341, 'Jorge Hernández','parroquia'),
(341, 'Punta Gorda','parroquia'),
(341, 'Arístides Calvani','parroquia'),

(342, 'Encontrados','parroquia'),
(342, 'Udón Pérez','parroquia'),

(343, 'Moralito','parroquia'),
(343, 'San Carlos del Zulia','parroquia'),
(343, 'Santa Cruz del Zulia','parroquia'),
(343, 'Santa Bárbara','parroquia'),
(343, 'Urribarrí','parroquia'),

(344, 'Carlos Quevedo','parroquia'),
(344, 'Francisco Javier Pulgar','parroquia'),
(344, 'Simón Rodríguez','parroquia'),
(344, 'Guamo-Gavilanes','parroquia'),


(345, 'Sinamaica','parroquia'),
(345, 'Alta Guajira','parroquia'),
(345, 'Elías Sánchez Rubio','parroquia'),
(345, 'Guajira','parroquia'),


(346, 'La Concepción','parroquia'),
(346, 'San José','parroquia'),
(346, 'Mariano Parra León','parroquia'),
(346, 'José Ramón Yépez','parroquia'),

(347, 'Jesús María Semprún','parroquia'),
(347, 'Barí','parroquia'),

(348, 'Concepción','parroquia'),
(348, 'Andrés Bello','parroquia'),
(348, 'Chiquinquirá','parroquia'),
(348, 'El Carmelo','parroquia'),
(348, 'Potreritos','parroquia'),

(349, 'Libertad','parroquia'),
(349, 'Alonso de Ojeda','parroquia'),
(349, 'Venezuela','parroquia'),
(349, 'Eleazar López Contreras','parroquia'),
(349, 'Campo Lara','parroquia'),

(350, 'Bartolomé de las Casas','parroquia'),
(350, 'Libertad','parroquia'),
(350, 'Río Negro','parroquia'),
(350, 'San José de Perijá','parroquia'),


(351, 'San Rafael','parroquia'),
(351, 'La Sierrita','parroquia'),
(351, 'Las Parcelas','parroquia'),
(351, 'Luis de Vicente','parroquia'),
(351, 'Monseñor Marcos Sergio Godoy','parroquia'),
(351, 'Ricaurte','parroquia'),
(351, 'Tamare','parroquia'),

(352, 'Antonio Borjas Romero','parroquia'),
(352, 'Bolívar','parroquia'),
(352, 'Cacique Mara','parroquia'),
(352, 'Carracciolo Parra Pérez','parroquia'),
(352, 'Cecilio Acosta','parroquia'),
(352, 'Cristo de Aranza','parroquia'),
(352, 'Coquivacoa','parroquia'),
(352, 'Chiquinquirá','parroquia'),
(352, 'Francisco Eugenio Bustamante','parroquia'),
(352, 'Idelfonzo Vásquez','parroquia'),
(352, 'Juana de Ávila','parroquia'),
(352, 'Luis Hurtado Higuera','parroquia'),
(352, 'Manuel Dagnino','parroquia'),
(352, 'Olegario Villalobos','parroquia'),
(352, 'Raúl Leoni','parroquia'),
(352, 'Santa Lucía','parroquia'),
(352, 'Venancio Pulgar','parroquia'),
(352, 'San Isidro','parroquia'),

(353, 'Altagracia','parroquia'),
(353, 'Faría','parroquia'),
(353, 'Ana María Campos','parroquia'),
(353, 'San Antonio','parroquia'),
(353, 'San José','parroquia'),

(354, 'Donaldo García','parroquia'),
(354, 'El Rosario','parroquia'),
(354, 'Sixto Zambrano','parroquia'),

(355, 'San Francisco','parroquia'),
(355, 'El Bajo','parroquia'),
(355, 'Domitila Flores','parroquia'),
(355, 'Francisco Ochoa','parroquia'),
(355, 'Los Cortijos','parroquia'),
(355, 'Marcial Hernández','parroquia'),
(355, 'José Domingo Rus','parroquia'),

(356, 'Santa Rita','parroquia'),
(356, 'El Mene','parroquia'),
(356, 'Pedro Lucas Urribarrí','parroquia'),
(356, 'José Cenobio Urribarrí','parroquia'),

(357, 'Rafael Maria Baralt','parroquia'),
(357, 'Manuel Manrique','parroquia'),
(357, 'Rafael Urdaneta','parroquia'),

(358, 'Bobures','parroquia'),
(358, 'Gibraltar','parroquia'),
(358, 'Heras','parroquia'),
(358, 'Monseñor Arturo Álvarez','parroquia'),
(358, 'Rómulo Gallegos','parroquia'),
(358, 'El Batey','parroquia'),

(359, 'Rafael Urdaneta','parroquia'),
(359, 'La Victoria','parroquia'),
(359, 'Raúl Cuenca','parroquia'),

(360, 'Altagracia','parroquia'),
(360, 'Antímano','parroquia'),
(360, 'Caricuao','parroquia'),
(360, 'Catedral','parroquia'),
(360, 'Coche','parroquia'),
(360, 'El Junquito','parroquia'),
(360, 'El Paraíso','parroquia'),
(360, 'El Recreo','parroquia'),
(360, 'El Valle','parroquia'),
(360, 'La Candelaria','parroquia'),
(360, 'La Pastora','parroquia'),
(360, 'La Vega','parroquia'),
(360, 'Macarao','parroquia'),
(360, 'San Agustín','parroquia'),
(360, 'San Bernardino','parroquia'),
(360, 'San José','parroquia'),
(360, 'San Juan','parroquia'),
(360, 'San Pedro','parroquia'),
(360, 'Santa Rosalía','parroquia'),
(360, 'Santa Teresa','parroquia'),
(360, 'Sucre (Catia)','parroquia'),
(360, '23 de enero','parroquia'); 

--Modelo
insert into modelo (mod_nombre, mod_descripcion) values ('AU-80', 'Fue diseñado para rutas transcontinentales y normalmente necesitaba una parada para repostar cuando se utilizaba para la ruta del Atlántico Norte.');
insert into modelo (mod_nombre, mod_descripcion) values ('AU-801', 'Es una aeronave trimotor comercial de tamaño medio');
insert into modelo (mod_nombre, mod_descripcion) values ('AU-802', 'Es un avión de reacción de pasajeros de fuselaje estrecho de corto a medio alcance y se desarrolló como una versión derivada de los AU-80 y AU-801, de menor coste, menor tamaño y bimotor.');
insert into modelo (mod_nombre, mod_descripcion) values ('AU-802A', 'Es un avión de reacción de pasajeros de fuselaje estrecho de corto a medio alcance y se desarrolló como una versión derivada de los AU-80 y AU-801, de menor coste, menor tamaño y bimotor.');
insert into modelo (mod_nombre, mod_descripcion) values ('AU-802B', 'Es un avión de reacción de pasajeros de fuselaje estrecho de corto a medio alcance y se desarrolló como una versión derivada de los AU-80 y AU-801, de menor coste, menor tamaño y bimotor.');
insert into modelo (mod_nombre, mod_descripcion) values ('AU-802C', 'Es un avión de reacción de pasajeros de fuselaje estrecho de corto a medio alcance y se desarrolló como una versión derivada de los AU-80 y AU-801, de menor coste, menor tamaño y bimotor.');
insert into modelo (mod_nombre, mod_descripcion) values ('AU-802D', 'Es un avión de reacción de pasajeros de fuselaje estrecho de corto a medio alcance y se desarrolló como una versión derivada de los AU-80 y AU-801, de menor coste, menor tamaño y bimotor.');
insert into modelo (mod_nombre, mod_descripcion) values ('AU-802E', 'Es un avión de reacción de pasajeros de fuselaje estrecho de corto a medio alcance y se desarrolló como una versión derivada de los AU-80 y AU-801, de menor coste, menor tamaño y bimotor.');
insert into modelo (mod_nombre, mod_descripcion) values ('AU-802F', 'Es un avión de reacción de pasajeros de fuselaje estrecho de corto a medio alcance y se desarrolló como una versión derivada de los AU-80 y AU-801, de menor coste, menor tamaño y bimotor.');
insert into modelo (mod_nombre, mod_descripcion) values ('AU-747Plus', 'Es un avión comercial transcontinental de fuselaje ancho conocido por su impresionante tamaño, está entre los aviones más reconocibles del mundo.');
insert into modelo (mod_nombre, mod_descripcion) values ('AU-747Platinum', 'Es un avión comercial transcontinental de fuselaje ancho conocido por su impresionante tamaño, está entre los aviones más reconocibles del mundo.');
insert into modelo (mod_nombre, mod_descripcion) values ('AU-747Gold', 'Es un avión comercial transcontinental de fuselaje ancho conocido por su impresionante tamaño, está entre los aviones más reconocibles del mundo.');
insert into modelo (mod_nombre, mod_descripcion) values ('AU-747Silver', 'Es un avión comercial transcontinental de fuselaje ancho conocido por su impresionante tamaño, está entre los aviones más reconocibles del mundo.');
insert into modelo (mod_nombre, mod_descripcion) values ('AU-747SilverB', 'Es un avión comercial transcontinental de fuselaje ancho conocido por su impresionante tamaño, está entre los aviones más reconocibles del mundo.');

--Natural
insert into "Natural" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Nat_apellido", "Per_Nat_estado_civil") values ('Sofía', '2022-05-23', 30744123, 1, 'Calle Miranda', 'Rodríguez', 'Casado');
insert into "Natural" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Nat_apellido", "Per_Nat_estado_civil") values ('Juan', '2020-04-13', 30983847, 1, 'Calle Miranda', 'Rodriguez', 'Viudo');
insert into "Natural" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Nat_apellido", "Per_Nat_estado_civil") values ('Juan', '2023-12-21', 23724723, 2, 'Avenida Bolivar', 'Martinez', 'Soltero');
insert into "Natural" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Nat_apellido", "Per_Nat_estado_civil") values ('Maria', '2020-02-08', 4453350, 2, 'Calle Miranda', 'Garcia', 'Divorciado');
insert into "Natural" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Nat_apellido", "Per_Nat_estado_civil") values ('Luis', '2023-04-05', 13698548, 3, 'Calle 23', 'Garcia', 'Soltero');
insert into "Natural" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Nat_apellido", "Per_Nat_estado_civil") values ('Luis', '2019-08-02', 7214014, 3, 'Carrera 10', 'Lopez', 'Casado');
insert into "Natural" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Nat_apellido", "Per_Nat_estado_civil") values ('Ana', '2013-10-31', 22613939, 4, 'Calle 1', 'Lopez', 'Soltero');
insert into "Natural" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Nat_apellido", "Per_Nat_estado_civil") values ('Pedro', '2012-04-17', 23711023, 4, 'Carrera 10', 'Rodriguez', 'Casado');
insert into "Natural" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Nat_apellido", "Per_Nat_estado_civil") values ('Luis', '2014-10-19', 16134689, 5, 'Calle 1', 'Rodriguez', 'Divorciado');
insert into "Natural" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Nat_apellido", "Per_Nat_estado_civil") values ('Maria', '2017-02-05', 16025344, 5, 'Calle 1', 'Rodriguez', 'Soltero');
insert into "Natural" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Nat_apellido", "Per_Nat_estado_civil") values ('Maria', '2016-09-11', 20520646, 6, 'Carrera 10', 'Hernandez', 'Divorciado');
insert into "Natural" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Nat_apellido", "Per_Nat_estado_civil") values ('Ana', '2018-04-07', 1671300, 6, 'Carrera 10', 'Hernandez', 'Casado');
insert into "Natural" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Nat_apellido", "Per_Nat_estado_civil") values ('Juan', '2018-09-01', 21615683, 7, 'Calle 23', 'Lopez', 'Soltero');
insert into "Natural" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Nat_apellido", "Per_Nat_estado_civil") values ('Juan', '2024-08-26', 24540953, 7, 'Calle 1', 'Martinez', 'Divorciado');
insert into "Natural" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Nat_apellido", "Per_Nat_estado_civil") values ('Pedro', '2024-08-06', 16023239, 8, 'Avenida Bolivar', 'Lopez', 'Casado');
insert into "Natural" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Nat_apellido", "Per_Nat_estado_civil") values ('Maria', '2012-11-14', 13243182, 8, 'Calle Miranda', 'Rodriguez', 'Divorciado');
insert into "Natural" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Nat_apellido", "Per_Nat_estado_civil") values ('Ana', '2019-08-02', 2897551, 9, 'Calle 1', 'Rodriguez', 'Casado');
insert into "Natural" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Nat_apellido", "Per_Nat_estado_civil") values ('Luis', '2022-09-23', 29072092, 9, 'Calle Miranda', 'Martinez', 'Viudo');
insert into "Natural" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Nat_apellido", "Per_Nat_estado_civil") values ('Pedro', '2023-08-25', 16541324, 10, 'Calle 23', 'Hernandez', 'Divorciado');
insert into "Natural" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Nat_apellido", "Per_Nat_estado_civil") values ('Pedro', '2024-08-12', 32933106, 10, 'Calle 1', 'Hernandez', 'Divorciado');
insert into "Natural" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Nat_apellido", "Per_Nat_estado_civil") values ('Maria', '2013-09-29', 19814060, 11, 'Calle 23', 'Garcia', 'Soltero');
insert into "Natural" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Nat_apellido", "Per_Nat_estado_civil") values ('Maria', '2024-07-14', 2319764, 11, 'Avenida Bolivar', 'Martinez', 'Soltero');
insert into "Natural" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Nat_apellido", "Per_Nat_estado_civil") values ('Juan', '2012-09-17', 30711083, 12, 'Carrera 10', 'Lopez', 'Viudo');
insert into "Natural" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Nat_apellido", "Per_Nat_estado_civil") values ('Juan', '2017-03-31', 26031743, 12, 'Avenida Bolivar', 'Martinez', 'Viudo');
insert into "Natural" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Nat_apellido", "Per_Nat_estado_civil") values ('Pedro', '2022-10-16', 28236893, 13, 'Calle 1', 'Martinez', 'Soltero');
insert into "Natural" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Nat_apellido", "Per_Nat_estado_civil") values ('Ana', '2019-01-30', 32063000, 13, 'Avenida Bolivar', 'Rodriguez', 'Divorciado');
insert into "Natural" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Nat_apellido", "Per_Nat_estado_civil") values ('Pedro', '2023-02-18', 14803076, 14, 'Calle 1', 'Garcia', 'Casado');
insert into "Natural" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Nat_apellido", "Per_Nat_estado_civil") values ('Carlos', '2012-11-21', 28097132, 14, 'Calle 23', 'Martinez', 'Soltero');
insert into "Natural" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Nat_apellido", "Per_Nat_estado_civil") values ('Carlos', '2016-02-24', 12159766, 15, 'Carrera 10', 'Garcia', 'Viudo');
insert into "Natural" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Nat_apellido", "Per_Nat_estado_civil") values ('Pedro', '2020-01-22', 2023415, 15, 'Calle Miranda', 'Lopez', 'Soltero');
insert into "Natural" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Nat_apellido", "Per_Nat_estado_civil") values ('Maria', '2021-08-04', 10584466, 16, 'Carrera 10', 'Garcia', 'Soltero');
insert into "Natural" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Nat_apellido", "Per_Nat_estado_civil") values ('Pedro', '2012-06-10', 32014199, 16, 'Avenida Bolivar', 'Lopez', 'Viudo');
insert into "Natural" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Nat_apellido", "Per_Nat_estado_civil") values ('Juan', '2019-05-21', 29415688, 17, 'Avenida Bolivar', 'Martinez', 'Soltero');
insert into "Natural" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Nat_apellido", "Per_Nat_estado_civil") values ('Ana', '2015-04-13', 4008015, 17, 'Calle 23', 'Hernandez', 'Viudo');
insert into "Natural" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Nat_apellido", "Per_Nat_estado_civil") values ('Pedro', '2015-12-19', 27057042, 18, 'Calle Miranda', 'Martinez', 'Divorciado');
insert into "Natural" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Nat_apellido", "Per_Nat_estado_civil") values ('Maria', '2023-01-25', 30480698, 18, 'Carrera 10', 'Garcia', 'Divorciado');
insert into "Natural" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Nat_apellido", "Per_Nat_estado_civil") values ('Pedro', '2014-02-16', 21346765, 19, 'Calle Miranda', 'Lopez', 'Divorciado');
insert into "Natural" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Nat_apellido", "Per_Nat_estado_civil") values ('Juan', '2019-04-05', 2556198, 19, 'Carrera 10', 'Martinez', 'Soltero');
insert into "Natural" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Nat_apellido", "Per_Nat_estado_civil") values ('Luis', '2016-11-23', 15629478, 20, 'Carrera 10', 'Martinez', 'Divorciado');
insert into "Natural" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Nat_apellido", "Per_Nat_estado_civil") values ('Maria', '2015-10-08', 21743396, 20, 'Calle 1', 'Garcia', 'Divorciado');
insert into "Natural" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Nat_apellido", "Per_Nat_estado_civil") values ('Carlos', '2024-09-09', 29182149, 21, 'Calle Miranda', 'Hernandez', 'Soltero');
insert into "Natural" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Nat_apellido", "Per_Nat_estado_civil") values ('Maria', '2012-08-29', 27911535, 21, 'Carrera 10', 'Hernandez', 'Casado');
insert into "Natural" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Nat_apellido", "Per_Nat_estado_civil") values ('Maria', '2023-01-08', 18156724, 22, 'Carrera 10', 'Martinez', 'Divorciado');
insert into "Natural" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Nat_apellido", "Per_Nat_estado_civil") values ('Pedro', '2024-10-03', 25325313, 22, 'Carrera 10', 'Hernandez', 'Casado');
insert into "Natural" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Nat_apellido", "Per_Nat_estado_civil") values ('Juan', '2012-09-19', 30658543, 23, 'Calle 1', 'Hernandez', 'Casado');
insert into "Natural" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Nat_apellido", "Per_Nat_estado_civil") values ('Ana', '2023-04-26', 26173454, 23, 'Calle 23', 'Lopez', 'Divorciado');

--Juridica
insert into "Juridica" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Jur_razon_social") values ('Consultoría Global', '2013-04-17', 16902668, 1, 'Calle Miranda', 'Empresa ABC');
insert into "Juridica" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Jur_razon_social") values ('Empresa ABC', '2012-08-14', 30444387, 1, 'Avenida Bolivar', 'Compañía XYZ');
insert into "Juridica" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Jur_razon_social") values ('Servicios Legales S.A.', '2023-09-24', 1090820, 2, 'Avenida Bolivar', 'Sociedad Anónima 456');
insert into "Juridica" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Jur_razon_social") values ('Consultoría Global', '2024-01-21', 6474596, 2, 'Calle Miranda', 'Empresa ABC');
insert into "Juridica" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Jur_razon_social") values ('Consultoría Global', '2022-09-20', 1097019, 3, 'Avenida Bolivar', 'Corporación 123');
insert into "Juridica" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Jur_razon_social") values ('Servicios Legales S.A.', '2014-01-09', 1329761, 3, 'Carrera 10', 'Empresa ABC');
insert into "Juridica" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Jur_razon_social") values ('Corporación XYZ', '2020-06-24', 27451158, 4, 'Calle 1', 'Compañía XYZ');
insert into "Juridica" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Jur_razon_social") values ('Servicios Legales S.A.', '2020-06-08', 23310408, 4, 'Calle Miranda', 'Sociedad Anónima 456');
insert into "Juridica" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Jur_razon_social") values ('Inversiones 123', '2012-12-04', 23008055, 5, 'Calle 1', 'Corporación 123');
insert into "Juridica" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Jur_razon_social") values ('Consultoría Global', '2016-07-10', 22856646, 5, 'Calle 23', 'Sociedad Anónima 456');
insert into "Juridica" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Jur_razon_social") values ('Corporación XYZ', '2015-11-22', 32063626, 6, 'Calle Miranda', 'Compañía XYZ');
insert into "Juridica" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Jur_razon_social") values ('Empresa ABC', '2022-11-29', 9410738, 6, 'Calle 1', 'Sociedad Anónima 456');
insert into "Juridica" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Jur_razon_social") values ('Empresa ABC', '2016-08-06', 31425964, 7, 'Calle Miranda', 'Sociedad Anónima 456');
insert into "Juridica" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Jur_razon_social") values ('Inversiones 123', '2021-03-14', 17316574, 7, 'Avenida Bolivar', 'Empresa ABC');
insert into "Juridica" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Jur_razon_social") values ('Servicios Legales S.A.', '2024-07-09', 18404224, 8, 'Calle Miranda', 'Sociedad Anónima 456');
insert into "Juridica" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Jur_razon_social") values ('Corporación XYZ', '2017-08-29', 22413978, 8, 'Avenida Bolivar', 'Corporación 123');
insert into "Juridica" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Jur_razon_social") values ('Corporación XYZ', '2014-02-14', 24788158, 9, 'Calle Miranda', 'Compañía XYZ');
insert into "Juridica" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Jur_razon_social") values ('Empresa ABC', '2021-08-08', 10112849, 10, 'Calle 23', 'Corporación 123');
insert into "Juridica" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Jur_razon_social") values ('Corporación XYZ', '2016-03-15', 13528111, 10, 'Avenida Bolivar', 'Compañía XYZ');
insert into "Juridica" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Jur_razon_social") values ('Inversiones 123', '2020-09-17', 6155839, 11, 'Calle 23', 'Empresa ABC');
insert into "Juridica" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Jur_razon_social") values ('Servicios Legales S.A.', '2013-12-03', 1325667, 11, 'Calle 1', 'Sociedad Anónima 456');
insert into "Juridica" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Jur_razon_social") values ('Corporación XYZ', '2014-12-02', 21206633, 12, 'Calle 1', 'Corporación 123');
insert into "Juridica" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Jur_razon_social") values ('Empresa ABC', '2020-06-09', 1578902, 12, 'Carrera 10', 'Corporación 123');
insert into "Juridica" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Jur_razon_social") values ('Corporación XYZ', '2018-09-03', 19042111, 13, 'Avenida Bolivar', 'Empresa ABC');
insert into "Juridica" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Jur_razon_social") values ('Empresa ABC', '2018-10-20', 20370939, 13, 'Calle 23', 'Corporación 123');
insert into "Juridica" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Jur_razon_social") values ('Servicios Legales S.A.', '2020-11-06', 21399718, 14, 'Carrera 10', 'Corporación 123');
insert into "Juridica" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Jur_razon_social") values ('Empresa ABC', '2022-01-29', 31883567, 14, 'Calle 23', 'Corporación 123');
insert into "Juridica" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Jur_razon_social") values ('Empresa ABC', '2013-12-20', 2956992, 14, 'Calle 23', 'Compañía XYZ');
insert into "Juridica" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Jur_razon_social") values ('Inversiones 123', '2016-06-02', 1411947, 15, 'Calle 1', 'Corporación 123');
insert into "Juridica" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Jur_razon_social") values ('Empresa ABC', '2014-02-09', 13871398, 15, 'Calle Miranda', 'Sociedad Anónima 456');
insert into "Juridica" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Jur_razon_social") values ('Inversiones 123', '2017-03-01', 2863375, 15, 'Calle Miranda', 'Sociedad Anónima 456');
insert into "Juridica" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Jur_razon_social") values ('Empresa ABC', '2022-03-25', 18349953, 16, 'Calle 23', 'Empresa ABC');
insert into "Juridica" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Jur_razon_social") values ('Empresa ABC', '2024-01-17', 16652109, 16, 'Carrera 10', 'Empresa ABC');
insert into "Juridica" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Jur_razon_social") values ('Servicios Legales S.A.', '2021-11-10', 32619541, 17, 'Carrera 10', 'Corporación 123');
insert into "Juridica" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Jur_razon_social") values ('Consultoría Global', '2015-10-06', 20906499, 17, 'Avenida Bolivar', 'Sociedad Anónima 456');
insert into "Juridica" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Jur_razon_social") values ('Servicios Legales S.A.', '2016-08-09', 3904964, 18, 'Calle Miranda', 'Empresa ABC');
insert into "Juridica" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Jur_razon_social") values ('Servicios Legales S.A.', '2013-08-26', 9030971, 18, 'Carrera 10', 'Empresa ABC');
insert into "Juridica" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Jur_razon_social") values ('Servicios Legales S.A.', '2024-06-24', 23124964, 19, 'Calle 1', 'Empresa ABC');
insert into "Juridica" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Jur_razon_social") values ('Inversiones 123', '2020-11-17', 19735634, 20, 'Avenida Bolivar', 'Empresa ABC');
insert into "Juridica" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Jur_razon_social") values ('Inversiones 123', '2015-11-07', 15902045, 20, 'Calle 23', 'Sociedad Anónima 456');
insert into "Juridica" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Jur_razon_social") values ('Inversiones 123', '2018-09-03', 9461272, 21, 'Calle 1', 'Compañía XYZ');
insert into "Juridica" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Jur_razon_social") values ('Inversiones 123', '2021-04-10', 5331122, 21, 'Avenida Bolivar', 'Compañía XYZ');
insert into "Juridica" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Jur_razon_social") values ('Consultoría Global', '2021-06-24', 5131219, 22, 'Calle 23', 'Sociedad Anónima 456');
insert into "Juridica" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Jur_razon_social") values ('Empresa ABC', '2012-02-19', 16700387, 22, 'Calle 1', 'Corporación 123');
insert into "Juridica" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Jur_razon_social") values ('Empresa ABC', '2019-09-20', 14688484, 23, 'Avenida Bolivar', 'Compañía XYZ');
insert into "Juridica" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Jur_razon_social") values ('Empresa ABC', '2022-09-11', 27368059, 23, 'Calle 23', 'Corporación 123');

--Personal
insert into "Personal" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Per_apellido", "Per_Per_experiencia", fk_area) values ('Pedro', '2023-07-20', 30495240, 8, 'Calle 23', 'Martinez', 6, 10);
insert into "Personal" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Per_apellido", "Per_Per_experiencia", fk_area) values ('Luis', '2014-01-04', 21634237, 3, 'Calle 23', 'Garcia', 3, 4);
insert into "Personal" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Per_apellido", "Per_Per_experiencia", fk_area) values ('Carlos', '2018-09-12', 9040979, 4, 'Calle 1', 'Martinez', 1, 9);
insert into "Personal" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Per_apellido", "Per_Per_experiencia", fk_area) values ('Carlos', '2021-09-27', 13314418, 1, 'Calle 1', 'Lopez', 5, 9);
insert into "Personal" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Per_apellido", "Per_Per_experiencia", fk_area) values ('Carlos', '2013-07-22', 8914555, 10, 'Calle 23', 'Martinez', 8, 4);
insert into "Personal" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Per_apellido", "Per_Per_experiencia", fk_area) values ('Carlos', '2014-07-19', 27773234, 17, 'Calle Miranda', 'Rodriguez', 1, 6);
insert into "Personal" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Per_apellido", "Per_Per_experiencia", fk_area) values ('Juan', '2023-08-18', 9722520, 8, 'Carrera 10', 'Martinez', 10, 8);
insert into "Personal" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Per_apellido", "Per_Per_experiencia", fk_area) values ('Ana', '2023-07-20', 16642926, 11, 'Calle Miranda', 'Lopez', 4, 2);
insert into "Personal" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Per_apellido", "Per_Per_experiencia", fk_area) values ('Juan', '2022-02-21', 29072367, 9, 'Calle 23', 'Martinez', 2, 9);
insert into "Personal" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Per_apellido", "Per_Per_experiencia", fk_area) values ('Maria', '2022-02-22', 29114022, 15, 'Avenida Bolivar', 'Lopez', 5, 2);
insert into "Personal" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Per_apellido", "Per_Per_experiencia", fk_area) values ('Juan', '2019-09-25', 10911196, 9, 'Calle 1', 'Garcia', 9, 1);
insert into "Personal" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Per_apellido", "Per_Per_experiencia", fk_area) values ('Pedro', '2022-11-06', 29542812, 3, 'Avenida Bolivar', 'Rodriguez', 1, 1);
insert into "Personal" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Per_apellido", "Per_Per_experiencia", fk_area) values ('Maria', '2014-11-06', 12872028, 9, 'Avenida Bolivar', 'Rodriguez', 3, 4);
insert into "Personal" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Per_apellido", "Per_Per_experiencia", fk_area) values ('Juan', '2014-12-28', 18845327, 17, 'Calle Miranda', 'Rodriguez', 2, 5);
insert into "Personal" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Per_apellido", "Per_Per_experiencia", fk_area) values ('Juan', '2017-10-07', 4002247, 1, 'Calle 23', 'Martinez', 2, 6);
insert into "Personal" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Per_apellido", "Per_Per_experiencia", fk_area) values ('Carlos', '2020-07-22', 25240789, 22, 'Carrera 10', 'Martinez', 5, 4);
insert into "Personal" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Per_apellido", "Per_Per_experiencia", fk_area) values ('Luis', '2017-01-15', 31107796, 4, 'Calle Miranda', 'Rodriguez', 5, 6);
insert into "Personal" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Per_apellido", "Per_Per_experiencia", fk_area) values ('Luis', '2024-06-16', 12144403, 4, 'Calle 1', 'Lopez', 8, 9);
insert into "Personal" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Per_apellido", "Per_Per_experiencia", fk_area) values ('Juan', '2013-03-07', 28586802, 18, 'Calle 23', 'Garcia', 10, 7);
insert into "Personal" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Per_apellido", "Per_Per_experiencia", fk_area) values ('Ana', '2018-01-17', 26334736, 18, 'Calle 1', 'Hernandez', 3, 9);
insert into "Personal" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Per_apellido", "Per_Per_experiencia", fk_area) values ('Pedro', '2012-04-12', 23456936, 7, 'Avenida Bolivar', 'Lopez', 1, 5);
insert into "Personal" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Per_apellido", "Per_Per_experiencia", fk_area) values ('Carlos', '2022-06-03', 1375062, 4, 'Calle 1', 'Garcia', 9, 4);
insert into "Personal" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Per_apellido", "Per_Per_experiencia", fk_area) values ('Carlos', '2019-03-13', 24559134, 7, 'Calle 23', 'Martinez', 6, 10);
insert into "Personal" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Per_apellido", "Per_Per_experiencia", fk_area) values ('Pedro', '2012-02-22', 17638992, 10, 'Calle Miranda', 'Martinez', 3, 10);
insert into "Personal" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Per_apellido", "Per_Per_experiencia", fk_area) values ('Ana', '2016-06-10', 21573589, 10, 'Avenida Bolivar', 'Martinez', 1, 4);
insert into "Personal" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Per_apellido", "Per_Per_experiencia", fk_area) values ('Carlos', '2016-11-28', 10135282, 17, 'Carrera 10', 'Lopez', 9, 7);
insert into "Personal" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Per_apellido", "Per_Per_experiencia", fk_area) values ('Maria', '2017-10-16', 28687042, 20, 'Calle 23', 'Hernandez', 4, 5);
insert into "Personal" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Per_apellido", "Per_Per_experiencia", fk_area) values ('Luis', '2024-02-20', 10560119, 7, 'Calle 1', 'Garcia', 2, 6);
insert into "Personal" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Per_apellido", "Per_Per_experiencia", fk_area) values ('Ana', '2020-07-09', 31855276, 2, 'Avenida Bolivar', 'Martinez', 6, 6);
insert into "Personal" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Per_apellido", "Per_Per_experiencia", fk_area) values ('Carlos', '2015-05-27', 12547153, 12, 'Calle Miranda', 'Martinez', 8, 1);
insert into "Personal" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Per_apellido", "Per_Per_experiencia", fk_area) values ('Pedro', '2023-01-23', 19878130, 4, 'Calle Miranda', 'Rodriguez', 5, 9);
insert into "Personal" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Per_apellido", "Per_Per_experiencia", fk_area) values ('Juan', '2017-04-24', 5752690, 18, 'Avenida Bolivar', 'Rodriguez', 6, 2);
insert into "Personal" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Per_apellido", "Per_Per_experiencia", fk_area) values ('Luis', '2019-02-19', 1836189, 10, 'Calle Miranda', 'Garcia', 7, 2);
insert into "Personal" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Per_apellido", "Per_Per_experiencia", fk_area) values ('Carlos', '2023-01-01', 23174842, 11, 'Carrera 10', 'Lopez', 7, 9);
insert into "Personal" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Per_apellido", "Per_Per_experiencia", fk_area) values ('Maria', '2021-02-15', 25718951, 8, 'Avenida Bolivar', 'Lopez', 9, 4);
insert into "Personal" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Per_apellido", "Per_Per_experiencia", fk_area) values ('Ana', '2022-12-28', 1525378, 18, 'Calle Miranda', 'Hernandez', 1, 7);
insert into "Personal" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Per_apellido", "Per_Per_experiencia", fk_area) values ('Maria', '2015-05-21', 26320020, 10, 'Calle 23', 'Rodriguez', 3, 3);
insert into "Personal" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Per_apellido", "Per_Per_experiencia", fk_area) values ('Ana', '2022-07-27', 11323719, 5, 'Calle Miranda', 'Garcia', 9, 1);
insert into "Personal" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Per_apellido", "Per_Per_experiencia", fk_area) values ('Ana', '2018-03-12', 2971409, 7, 'Calle 1', 'Rodriguez', 5, 5);
insert into "Personal" ("Per_nombre", "Per_fecha_ini", "Per_ci", fk_lugar, "Per_dir", "Per_Per_apellido", "Per_Per_experiencia", fk_area) values ('Carlos', '2015-06-28', 15800555, 9, 'Calle Miranda', 'Hernandez', 10, 8);

--Privilegio
insert into privilegio (priv_nombre) values ('ADMINISTRAR USUARIOS');
insert into privilegio (priv_nombre) values ('VER REPORTES');
insert into privilegio (priv_nombre) values ('ADMINISTRAR PRUEBAS');
insert into privilegio (priv_nombre) values ('ADMINISTRAR INVENTARIO');
insert into privilegio (priv_nombre) values ('ADMINISTRAR PEDIDOS');
insert into privilegio (priv_nombre) values ('ADMINISTRAR PERSONAL');
insert into privilegio (priv_nombre) values ('ADMINISTRAR PROVEEDORES');
insert into privilegio (priv_nombre) values ('VER ESTADISTICAS');
insert into privilegio (priv_nombre) values ('ADMINISTRAR ROLES');
insert into privilegio (priv_nombre) values ('ACCESO TOTAL');

--Proveedor
insert into public."proveedor" ( "prove_nombre","prove_ci", "fk_lugar") values ('Demetria', 16572745, 364);
insert into public."proveedor" ( "prove_nombre","prove_ci", "fk_lugar") values ('Lefty', 21807836, 365);
insert into public."proveedor" ( "prove_nombre","prove_ci", "fk_lugar") values ('Eolande', 10862079, 412);
insert into public."proveedor" ( "prove_nombre","prove_ci", "fk_lugar") values ('Hugues', 17773003, 414);
insert into public."proveedor" ( "prove_nombre","prove_ci", "fk_lugar") values ('Trip', 29657474, 452);
insert into public."proveedor" ( "prove_nombre","prove_ci", "fk_lugar") values ('Nanny', 12880227, 456);
insert into public."proveedor" ( "prove_nombre","prove_ci", "fk_lugar") values ('Shela', 19076678, 482);
insert into public."proveedor" ( "prove_nombre","prove_ci", "fk_lugar") values ('Claiborn', 10218749, 478);
insert into public."proveedor" ( "prove_nombre","prove_ci", "fk_lugar") values ('Ford', 26349532, 576);
insert into public."proveedor" ( "prove_nombre","prove_ci", "fk_lugar") values ('Far', 12610532, 579);
insert into public."proveedor" ( "prove_nombre","prove_ci", "fk_lugar") values ('Giulio', 22506570, 592);
insert into public."proveedor" ( "prove_nombre","prove_ci", "fk_lugar") values ('Birch', 27370582, 595);
insert into public."proveedor" ( "prove_nombre","prove_ci", "fk_lugar") values ('Vanni', 29007455, 661);
insert into public."proveedor" ( "prove_nombre","prove_ci", "fk_lugar") values ('Jake', 11471247, 660);
insert into public."proveedor" ( "prove_nombre","prove_ci", "fk_lugar") values ('Harp', 14196106, 668);
insert into public."proveedor" ( "prove_nombre","prove_ci", "fk_lugar") values ('Gonzalo', 14245345, 670);
insert into public."proveedor" ( "prove_nombre","prove_ci", "fk_lugar") values ('Alphonse', 15893821, 680);
insert into public."proveedor" ( "prove_nombre","prove_ci", "fk_lugar") values ('Wolfy', 10461967, 683);
insert into public."proveedor" ( "prove_nombre","prove_ci", "fk_lugar") values ('Elana', 29030779, 730);
insert into public."proveedor" ( "prove_nombre","prove_ci", "fk_lugar") values ('Juditha', 24821803, 734);
insert into public."proveedor" ( "prove_nombre","prove_ci", "fk_lugar") values ('Gil', 28779972, 811);
insert into public."proveedor" ( "prove_nombre","prove_ci", "fk_lugar") values ('Alexandrina', 22218104, 809);
insert into public."proveedor" ( "prove_nombre","prove_ci", "fk_lugar") values ('Bobine', 10415404, 838);
insert into public."proveedor" ( "prove_nombre","prove_ci", "fk_lugar") values ('Jerald', 29465596, 841);
insert into public."proveedor" ( "prove_nombre","prove_ci", "fk_lugar") values ('Quintina', 29414952, 1344);
insert into public."proveedor" ( "prove_nombre","prove_ci", "fk_lugar") values ('Muriel', 29900093, 1348);
insert into public."proveedor" ( "prove_nombre","prove_ci", "fk_lugar") values ('Courtenay', 22848290, 881);
insert into public."proveedor" ( "prove_nombre","prove_ci", "fk_lugar") values ('Benito', 20805245, 884);
insert into public."proveedor" ( "prove_nombre","prove_ci", "fk_lugar") values ('Berkeley', 27925779, 970);
insert into public."proveedor" ( "prove_nombre","prove_ci", "fk_lugar") values ('Tony', 16708113, 971);
insert into public."proveedor" ( "prove_nombre","prove_ci", "fk_lugar") values ('Farlee', 14738208, 1051);
insert into public."proveedor" ( "prove_nombre","prove_ci", "fk_lugar") values ('Ericha', 29349835, 1057);
insert into public."proveedor" ( "prove_nombre","prove_ci", "fk_lugar") values ('Sidney', 25772940, 1069);
insert into public."proveedor" ( "prove_nombre","prove_ci", "fk_lugar") values ('Sadella', 29099562, 1072);
insert into public."proveedor" ( "prove_nombre","prove_ci", "fk_lugar") values ('Crystal', 18416253, 1093);
insert into public."proveedor" ( "prove_nombre","prove_ci", "fk_lugar") values ('Moll', 20472840, 1095);
insert into public."proveedor" ( "prove_nombre","prove_ci", "fk_lugar") values ('Reynold', 12819626, 1137);
insert into public."proveedor" ( "prove_nombre","prove_ci", "fk_lugar") values ('Olympie', 29521964, 1141);
insert into public."proveedor" ( "prove_nombre","prove_ci", "fk_lugar") values ('Rosco', 17159929, 1235);
insert into public."proveedor" ( "prove_nombre","prove_ci", "fk_lugar") values ('Audie', 28040181, 1237);
insert into public."proveedor" ( "prove_nombre","prove_ci", "fk_lugar") values ('Willetta', 15961069, 1256);
insert into public."proveedor" ( "prove_nombre","prove_ci", "fk_lugar") values ('Zuzana', 19509997, 1264);
insert into public."proveedor" ( "prove_nombre","prove_ci", "fk_lugar") values ('Morgen', 18657574, 1365);
insert into public."proveedor" ( "prove_nombre","prove_ci", "fk_lugar") values ('Agustin', 26055662, 1368);
insert into public."proveedor" ( "prove_nombre","prove_ci", "fk_lugar") values ('Yoshiko', 22459995, 1379);
insert into public."proveedor" ( "prove_nombre","prove_ci", "fk_lugar") values ('Neel', 28962870, 1383);

--Red Social
insert into red_social (rs_usuario, rs_nombre, fk_personal) values ('mati_st', 'Facebook', 93);
insert into red_social (rs_usuario, rs_nombre, fk_personal) values ('john_doe', 'Twitter', 94);
insert into red_social (rs_usuario, rs_nombre, fk_personal) values ('jane_smith', 'Instagram', 95);
insert into red_social (rs_usuario, rs_nombre, fk_personal) values ('alice_jones', 'LinkedIn', 96);
insert into red_social (rs_usuario, rs_nombre, fk_personal) values ('bob_brown', 'Snapchat', 97);
insert into red_social (rs_usuario, rs_nombre, fk_personal) values ('charlie_black', 'TikTok', 98);
insert into red_social (rs_usuario, rs_nombre, fk_personal) values ('david_white', 'Pinterest', 99);
insert into red_social (rs_usuario, rs_nombre, fk_personal) values ('eve_green', 'Reddit', 100);
insert into red_social (rs_usuario, rs_nombre, fk_personal) values ('frank_blue', 'YouTube', 101);
insert into red_social (rs_usuario, rs_nombre, fk_personal) values ('grace_yellow', 'WhatsApp', 102);

--Rol
insert into public.rol (rol_nombre) values
	('admin'),
	('empleado'),
	('cliente'),
	('proveedor');

--rol_priv
insert into rol_priv (fk_rol,fk_priv) values (1, 10);
insert into rol_priv (fk_rol,fk_priv) values (2, 1);
insert into rol_priv (fk_rol,fk_priv) values (2, 2);
insert into rol_priv (fk_rol,fk_priv) values (2, 3);
insert into rol_priv (fk_rol,fk_priv) values (2, 4);
insert into rol_priv (fk_rol,fk_priv) values (2, 5);
insert into rol_priv (fk_rol,fk_priv) values (2, 6);
insert into rol_priv (fk_rol,fk_priv) values (2, 7);
insert into rol_priv (fk_rol,fk_priv) values (3, 5);
insert into rol_priv (fk_rol,fk_priv) values (4, 5);
insert into rol_priv (fk_rol,fk_priv) values (4, 8);

--sede
insert into public.Sede ("sed_nombre", fk_lugar) values ('La Guaira', 1350);
insert into public.Sede ("sed_nombre", fk_lugar) values ('Maracay', 61);
insert into public.Sede ("sed_nombre", fk_lugar) values ('Colon', 343);
insert into public.Sede ("sed_nombre", fk_lugar) values ('Valencia', 115);
insert into public.Sede ("sed_nombre", fk_lugar) values ('Guatire', 1019);

--tasa_cambio
insert into tasa_cambio (tdc_mon_origen, tdc_mon_destino, tdc_valor, tdc_fecha_vigencia, tdc_fecha_vencimiento) values ('USD', 'Bs', 55, '2025-01-01', '2025-12-31');
insert into tasa_cambio (tdc_mon_origen, tdc_mon_destino, tdc_valor, tdc_fecha_vigencia, tdc_fecha_vencimiento) values ('EUR', 'Bs', 60, '2025-01-01', '2025-12-31');
insert into tasa_cambio (tdc_mon_origen, tdc_mon_destino, tdc_valor, tdc_fecha_vigencia, tdc_fecha_vencimiento) values ('GBP', 'Bs', 70, '2025-01-01', '2025-12-31');
insert into tasa_cambio (tdc_mon_origen, tdc_mon_destino, tdc_valor, tdc_fecha_vigencia, tdc_fecha_vencimiento) values ('JPY', 'Bs', 0.5, '2025-01-01', '2025-12-31');
insert into tasa_cambio (tdc_mon_origen, tdc_mon_destino, tdc_valor, tdc_fecha_vigencia, tdc_fecha_vencimiento) values ('CAD', 'Bs', 45, '2025-01-01', '2025-12-31');
insert into tasa_cambio (tdc_mon_origen, tdc_mon_destino, tdc_valor, tdc_fecha_vigencia, tdc_fecha_vencimiento) values ('AUD', 'Bs', 40, '2025-01-01', '2025-12-31');
insert into tasa_cambio (tdc_mon_origen, tdc_mon_destino, tdc_valor, tdc_fecha_vigencia, tdc_fecha_vencimiento) values ('CHF', 'Bs', 50, '2025-01-01', '2025-12-31');
insert into tasa_cambio (tdc_mon_origen, tdc_mon_destino, tdc_valor, tdc_fecha_vigencia, tdc_fecha_vencimiento) values ('CNY', 'Bs', 8, '2025-01-01', '2025-12-31');
insert into tasa_cambio (tdc_mon_origen, tdc_mon_destino, tdc_valor, tdc_fecha_vigencia, tdc_fecha_vencimiento) values ('INR', 'Bs', 0.7, '2025-01-01', '2025-12-31');
insert into tasa_cambio (tdc_mon_origen, tdc_mon_destino, tdc_valor, tdc_fecha_vigencia, tdc_fecha_vencimiento) values ('BRL', 'Bs', 12, '2025-01-01', '2025-12-31');

--telefono
insert into telefono (tlf_cod_area, tlf_numero, fk_natural) values (58, 1234567, 1);
insert into telefono (tlf_cod_area, tlf_numero, fk_natural) values (58, 1234567, 2);
insert into telefono (tlf_cod_area, tlf_numero, fk_natural) values (58, 1234567, 3);
insert into telefono (tlf_cod_area, tlf_numero, fk_juridica) values (58, 1234567, 47);
insert into telefono (tlf_cod_area, tlf_numero, fk_juridica) values (58, 1234567, 48);
insert into telefono (tlf_cod_area, tlf_numero, fk_juridica) values (58, 1234567, 49);
insert into telefono (tlf_cod_area, tlf_numero, fk_personal) values (58, 1234567, 93);
insert into telefono (tlf_cod_area, tlf_numero, fk_personal) values (58, 1234567, 94);
insert into telefono (tlf_cod_area, tlf_numero, fk_personal) values (58, 1234567, 95);
insert into telefono (tlf_cod_area, tlf_numero, fk_personal) values (58, 1234567, 96);

--tipo_maquinaria
insert into tipo_maquinaria (tipo_maq_nombre) values ('Maquinaria para mantenimiento');
insert into tipo_maquinaria (tipo_maq_nombre) values ('Tornos');
insert into tipo_maquinaria (tipo_maq_nombre) values ('Máquinas de corte por láser');
insert into tipo_maquinaria (tipo_maq_nombre) values ('Robots industriales');
insert into tipo_maquinaria (tipo_maq_nombre) values ('Autoclaves');
insert into tipo_maquinaria (tipo_maq_nombre) values ('Grúas');
insert into tipo_maquinaria (tipo_maq_nombre) values ('Plataformas elevadoras');
insert into tipo_maquinaria (tipo_maq_nombre) values ('Taladros');
insert into tipo_maquinaria (tipo_maq_nombre) values ('Equipos de inspección');
insert into tipo_maquinaria (tipo_maq_nombre) values ('Pistolas de remachado');

--tipo_material
insert into tipo_material (tipo_mat_nombre, tipo_mat_unidad_medida) values ('Aluminio', 'Kg');
insert into tipo_material (tipo_mat_nombre, tipo_mat_unidad_medida) values ('Titanio', 'Kg');
insert into tipo_material (tipo_mat_nombre, tipo_mat_unidad_medida) values ('Fibra de carbono', 'Kg');
insert into tipo_material (tipo_mat_nombre, tipo_mat_unidad_medida) values ('Acero inoxidable', 'Kg');
insert into tipo_material (tipo_mat_nombre, tipo_mat_unidad_medida) values ('Compuestos de cerámica', 'Kg');
insert into tipo_material (tipo_mat_nombre, tipo_mat_unidad_medida) values ('Plástico reforzado con fibra de vidrio', 'Kg');
insert into tipo_material (tipo_mat_nombre, tipo_mat_unidad_medida) values ('Cobre', 'Kg');
insert into tipo_material (tipo_mat_nombre, tipo_mat_unidad_medida) values ('Níquel', 'Kg');
insert into tipo_material (tipo_mat_nombre, tipo_mat_unidad_medida) values ('Magnesio', 'Kg');
insert into tipo_material (tipo_mat_nombre, tipo_mat_unidad_medida) values ('Kevlar', 'Kg');

--tipo_pieza
    --Fuselaje
    insert into public.tipo_pieza( "tp_nombre","tp_descripcion") values ( 'Puerta', '');
    insert into public.tipo_pieza( "tp_nombre","tp_descripcion") values ( 'Suelo', '');
    insert into public.tipo_pieza( "tp_nombre","tp_descripcion") values ( 'Bano', '');
    insert into public.tipo_pieza( "tp_nombre","tp_descripcion") values ( 'Aislamiento', '');
    insert into public.tipo_pieza( "tp_nombre","tp_descripcion") values ( 'Techo', '');
    insert into public.tipo_pieza( "tp_nombre","tp_descripcion") values ( 'Ventanilla', '');
    insert into public.tipo_pieza( "tp_nombre","tp_descripcion") values ( 'Sistema de Fuselaje', '');

    --Alas
    insert into public.tipo_pieza( "tp_nombre","tp_descripcion") values ( 'Ala', '');
    insert into public.tipo_pieza( "tp_nombre","tp_descripcion") values ( 'Aleron', '');
    insert into public.tipo_pieza( "tp_nombre","tp_descripcion") values ( 'Slat', '');
    insert into public.tipo_pieza( "tp_nombre","tp_descripcion") values ( 'Spoiler', '');
    insert into public.tipo_pieza( "tp_nombre","tp_descripcion") values ( 'Slot', '');
    insert into public.tipo_pieza( "tp_nombre","tp_descripcion") values ( 'Tanque de combustible', '');
    insert into public.tipo_pieza( "tp_nombre","tp_descripcion") values ( 'Flap', '');

    --Cola
    insert into public.tipo_pieza( "tp_nombre","tp_descripcion") values ( 'Antena', '');
    insert into public.tipo_pieza( "tp_nombre","tp_descripcion") values ( 'Actuador de control', '');
    insert into public.tipo_pieza( "tp_nombre","tp_descripcion") values ( 'Estabilizador', '');

    --Tren aterrizaje
    insert into public.tipo_pieza( "tp_nombre","tp_descripcion") values ( 'Tren Principal', '');
    insert into public.tipo_pieza( "tp_nombre","tp_descripcion") values ( 'Rueda', '');
    insert into public.tipo_pieza( "tp_nombre","tp_descripcion") values ( 'Amortiguador', '');
    insert into public.tipo_pieza( "tp_nombre","tp_descripcion") values ( 'Luces de posicion', '');
    insert into public.tipo_pieza( "tp_nombre","tp_descripcion") values ( 'Sistema de aterrizaje', '');

    --Potencia
    insert into public.tipo_pieza( "tp_nombre","tp_descripcion") values ( 'Motor', '');
    insert into public.tipo_pieza( "tp_nombre","tp_descripcion") values ( 'Sistema de Potencia', '');
    insert into public.tipo_pieza( "tp_nombre","tp_descripcion") values ( 'Turbina', '');
    insert into public.tipo_pieza( "tp_nombre","tp_descripcion") values ( 'Helice', '');

    --Avionica
    insert into public.tipo_pieza( "tp_nombre","tp_descripcion") values ( 'Panel de instrumento', '');
    insert into public.tipo_pieza( "tp_nombre","tp_descripcion") values ( 'GPS', '');
    insert into public.tipo_pieza( "tp_nombre","tp_descripcion") values ( 'Radio', '');
    insert into public.tipo_pieza( "tp_nombre","tp_descripcion") values ( 'Autopiloto', '');
    insert into public.tipo_pieza( "tp_nombre","tp_descripcion") values ( 'Radar', '');
    insert into public.tipo_pieza( "tp_nombre","tp_descripcion") values ( 'Sistema de cabina', '');

--tipo_prueba
insert into tipo_prueba (tprueba_nombre, tprueba_duracion_estim) values ('prueba sistemas de aviónica', 42);
insert into tipo_prueba (tprueba_nombre, tprueba_duracion_estim) values ('prueba fatiga', 22);
insert into tipo_prueba (tprueba_nombre, tprueba_duracion_estim) values ('prueba vibración', 13);
insert into tipo_prueba (tprueba_nombre, tprueba_duracion_estim) values ('prueba vibración', 10);
insert into tipo_prueba (tprueba_nombre, tprueba_duracion_estim) values ('prueba fatiga', 20);
insert into tipo_prueba (tprueba_nombre, tprueba_duracion_estim) values ('prueba ruido', 4);
insert into tipo_prueba (tprueba_nombre, tprueba_duracion_estim) values ('prueba sistemas', 12);
insert into tipo_prueba (tprueba_nombre, tprueba_duracion_estim) values ('prueba rendimiento', 23);
insert into tipo_prueba (tprueba_nombre, tprueba_duracion_estim) values ('prueba sistemas de aviónica', 7);
insert into tipo_prueba (tprueba_nombre, tprueba_duracion_estim) values ('prueba vibración', 13);
insert into tipo_prueba (tprueba_nombre, tprueba_duracion_estim) values ('prueba de motor', 35);
insert into tipo_prueba (tprueba_nombre, tprueba_duracion_estim) values ('prueba de aterrizaje', 28);
insert into tipo_prueba (tprueba_nombre, tprueba_duracion_estim) values ('prueba de despegue', 45);
insert into tipo_prueba (tprueba_nombre, tprueba_duracion_estim) values ('prueba de vuelo', 38);
insert into tipo_prueba (tprueba_nombre, tprueba_duracion_estim) values ('prueba de sistemas eléctricos', 25);
insert into tipo_prueba (tprueba_nombre, tprueba_duracion_estim) values ('prueba de combustible', 19);
insert into tipo_prueba (tprueba_nombre, tprueba_duracion_estim) values ('prueba de presurización', 41);
insert into tipo_prueba (tprueba_nombre, tprueba_duracion_estim) values ('prueba de frenos', 30);
insert into tipo_prueba (tprueba_nombre, tprueba_duracion_estim) values ('prueba de radar', 27);
insert into tipo_prueba (tprueba_nombre, tprueba_duracion_estim) values ('prueba de comunicación', 33);
insert into tipo_prueba (tprueba_nombre, tprueba_duracion_estim) values ('prueba de navegación', 22);
insert into tipo_prueba (tprueba_nombre, tprueba_duracion_estim) values ('prueba de altitud', 36);
insert into tipo_prueba (tprueba_nombre, tprueba_duracion_estim) values ('prueba de velocidad', 29);
insert into tipo_prueba (tprueba_nombre, tprueba_duracion_estim) values ('prueba de estabilidad', 40);
insert into tipo_prueba (tprueba_nombre, tprueba_duracion_estim) values ('prueba de control', 31);
insert into tipo_prueba (tprueba_nombre, tprueba_duracion_estim) values ('prueba de cabina', 26);
insert into tipo_prueba (tprueba_nombre, tprueba_duracion_estim) values ('prueba de oxígeno', 18);
insert into tipo_prueba (tprueba_nombre, tprueba_duracion_estim) values ('prueba de emergencia', 34);
insert into tipo_prueba (tprueba_nombre, tprueba_duracion_estim) values ('prueba de evacuación', 21);
insert into tipo_prueba (tprueba_nombre, tprueba_duracion_estim) values ('prueba de iluminación', 24);
insert into tipo_prueba (tprueba_nombre, tprueba_duracion_estim) values ('prueba de climatización', 32);
insert into tipo_prueba (tprueba_nombre, tprueba_duracion_estim) values ('prueba de hidráulicos', 37);
insert into tipo_prueba (tprueba_nombre, tprueba_duracion_estim) values ('prueba de tren de aterrizaje', 39);
insert into tipo_prueba (tprueba_nombre, tprueba_duracion_estim) values ('prueba de sistemas de control', 20);
insert into tipo_prueba (tprueba_nombre, tprueba_duracion_estim) values ('prueba de sistemas de navegación', 23);
insert into tipo_prueba (tprueba_nombre, tprueba_duracion_estim) values ('prueba de sistemas de comunicación', 17);
insert into tipo_prueba (tprueba_nombre, tprueba_duracion_estim) values ('prueba de sistemas de radar', 42);
insert into tipo_prueba (tprueba_nombre, tprueba_duracion_estim) values ('prueba de sistemas de frenos', 15);
insert into tipo_prueba (tprueba_nombre, tprueba_duracion_estim) values ('prueba de sistemas de combustible', 14);
insert into tipo_prueba (tprueba_nombre, tprueba_duracion_estim) values ('prueba de sistemas eléctricos', 13);


--titulo
insert into titulo (titu_descripcion, titu_institucion, fk_personal) values ('Ingeniero en Sistemas', 'Universidad de El Salvador', 93);
insert into titulo (titu_descripcion, titu_institucion, fk_personal) values ('Ingeniero en Sistemas', 'Universidad de El Salvador', 94);
insert into titulo (titu_descripcion, titu_institucion, fk_personal) values ('Ingeniero en Sistemas', 'Universidad de El Salvador', 95);
insert into titulo (titu_descripcion, titu_institucion, fk_personal) values ('Ingeniero en Sistemas', 'Universidad de El Salvador', 96);
insert into titulo (titu_descripcion, titu_institucion, fk_personal) values ('Ingeniero en Mecanico', 'Universidad de El Salvador', 97);
insert into titulo (titu_descripcion, titu_institucion, fk_personal) values ('Ingeniero en Mecanico', 'Universidad de El Salvador', 98);
insert into titulo (titu_descripcion, titu_institucion, fk_personal) values ('Ingeniero en Sistemas', 'Universidad de El Salvador', 99);
insert into titulo (titu_descripcion, titu_institucion, fk_personal) values ('Ingeniero en Sistemas', 'Universidad de El Salvador', 100);
insert into titulo (titu_descripcion, titu_institucion, fk_personal) values ('Ingeniero en Aeronautica', 'Universidad de El Salvador', 101);
insert into titulo (titu_descripcion, titu_institucion, fk_personal) values ('Ingeniero en Aeronautica', 'Universidad de El Salvador', 102);

--usuario
insert into usuario (user_nombre, user_seguro, fk_rol, fk_personal) values ('usuario1', 'contraseña1', 2, 93);
insert into usuario (user_nombre, user_seguro, fk_rol, fk_personal) values ('usuario2', 'contraseña2', 2, 94);
insert into usuario (user_nombre, user_seguro, fk_rol, fk_personal) values ('usuario3', 'contraseña3', 2, 95);
insert into usuario (user_nombre, user_seguro, fk_rol, fk_personal) values ('usuario4', 'contraseña4', 2, 96);
insert into usuario (user_nombre, user_seguro, fk_rol, fk_personal) values ('usuario5', 'contraseña5', 2, 97);
insert into usuario (user_nombre, user_seguro, fk_rol, fk_personal) values ('usuario6', 'contraseña6', 2, 98);
insert into usuario (user_nombre, user_seguro, fk_rol, fk_personal) values ('usuario7', 'contraseña7', 2, 99);
insert into usuario (user_nombre, user_seguro, fk_rol, fk_personal) values ('usuario8', 'contraseña8', 2, 100);
insert into usuario (user_nombre, user_seguro, fk_rol, fk_personal) values ('usuario9', 'contraseña9', 2, 101);
insert into usuario (user_nombre, user_seguro, fk_rol, fk_personal) values ('usuario10', 'contraseña10', 2, 102);
insert into usuario (user_nombre, user_seguro, fk_rol, fk_personal) values ('usuario11', 'contraseña11', 2, 103);
insert into usuario (user_nombre, user_seguro, fk_rol, fk_personal) values ('usuario12', 'contraseña12', 2, 104);
insert into usuario (user_nombre, user_seguro, fk_rol, fk_personal) values ('usuario13', 'contraseña13', 2, 105);
insert into usuario (user_nombre, user_seguro, fk_rol, fk_personal) values ('usuario14', 'contraseña14', 2, 106);
insert into usuario (user_nombre, user_seguro, fk_rol, fk_personal) values ('usuario15', 'contraseña15', 2, 107);
insert into usuario (user_nombre, user_seguro, fk_rol, fk_personal) values ('usuario16', 'contraseña16', 2, 108);
insert into usuario (user_nombre, user_seguro, fk_rol, fk_personal) values ('usuario17', 'contraseña17', 2, 109);
insert into usuario (user_nombre, user_seguro, fk_rol, fk_personal) values ('usuario18', 'contraseña18', 2, 110);
insert into usuario (user_nombre, user_seguro, fk_rol, fk_personal) values ('usuario19', 'contraseña19', 2, 111);
insert into usuario (user_nombre, user_seguro, fk_rol, fk_personal) values ('usuario20', 'contraseña20', 2, 112);
insert into usuario (user_nombre, user_seguro, fk_rol, fk_personal) values ('usuario21', 'contraseña21', 2, 113);
insert into usuario (user_nombre, user_seguro, fk_rol, fk_personal) values ('usuario22', 'contraseña22', 2, 114);
insert into usuario (user_nombre, user_seguro, fk_rol, fk_personal) values ('usuario23', 'contraseña23', 2, 115);
insert into usuario (user_nombre, user_seguro, fk_rol, fk_personal) values ('usuario24', 'contraseña24', 2, 116);
insert into usuario (user_nombre, user_seguro, fk_rol, fk_personal) values ('usuario25', 'contraseña25', 2, 117);
insert into usuario (user_nombre, user_seguro, fk_rol, fk_personal) values ('usuario26', 'contraseña26', 2, 118);
insert into usuario (user_nombre, user_seguro, fk_rol, fk_personal) values ('usuario27', 'contraseña27', 2, 119);
insert into usuario (user_nombre, user_seguro, fk_rol, fk_personal) values ('usuario28', 'contraseña28', 2, 120);
insert into usuario (user_nombre, user_seguro, fk_rol, fk_personal) values ('usuario29', 'contraseña29', 2, 121);
insert into usuario (user_nombre, user_seguro, fk_rol, fk_personal) values ('usuario30', 'contraseña30', 2, 122);
insert into usuario (user_nombre, user_seguro, fk_rol, fk_personal) values ('usuario31', 'contraseña31', 2, 123);
insert into usuario (user_nombre, user_seguro, fk_rol, fk_personal) values ('usuario32', 'contraseña32', 2, 124);
insert into usuario (user_nombre, user_seguro, fk_rol, fk_personal) values ('usuario33', 'contraseña33', 2, 125);
insert into usuario (user_nombre, user_seguro, fk_rol, fk_personal) values ('usuario34', 'contraseña34', 2, 126);
insert into usuario (user_nombre, user_seguro, fk_rol, fk_personal) values ('usuario35', 'contraseña35', 2, 127);
insert into usuario (user_nombre, user_seguro, fk_rol, fk_personal) values ('usuario36', 'contraseña36', 2, 128);
insert into usuario (user_nombre, user_seguro, fk_rol, fk_personal) values ('usuario37', 'contraseña37', 2, 129);
insert into usuario (user_nombre, user_seguro, fk_rol, fk_personal) values ('usuario38', 'contraseña38', 2, 130);
insert into usuario (user_nombre, user_seguro, fk_rol, fk_personal) values ('usuario39', 'contraseña39', 2, 131);
insert into usuario (user_nombre, user_seguro, fk_rol, fk_personal) values ('usuario40', 'contraseña40', 2, 132);

--zona
insert into public.zona ("zon_nombre", fk_sede) values ('Zona A1', 1);
insert into public.zona ("zon_nombre", fk_sede) values ('Zona A2', 1);
insert into public.zona ("zon_nombre", fk_sede) values ('Zona B1', 2);
insert into public.zona ("zon_nombre", fk_sede) values ('Zona B2', 2);
insert into public.zona ("zon_nombre", fk_sede) values ('Zona C1', 3);
insert into public.zona ("zon_nombre", fk_sede) values ('Zona C2', 3);
insert into public.zona ("zon_nombre", fk_sede) values ('Zona D1', 4);
insert into public.zona ("zon_nombre", fk_sede) values ('Zona D2', 4);
insert into public.zona ("zon_nombre", fk_sede) values ('Zona E1', 5);
insert into public.zona ("zon_nombre", fk_sede) values ('Zona E2', 5);

--area
insert into public.area ("ar_nombre", fk_zona) values ( '1', 1);
insert into public.area ("ar_nombre", fk_zona) values ( '2', 1);
insert into public.area ("ar_nombre", fk_zona) values ( '3', 2);
insert into public.area ("ar_nombre", fk_zona) values ( '4', 2);
insert into public.area ("ar_nombre", fk_zona) values ( '5', 3);
insert into public.area ("ar_nombre", fk_zona) values ( '6', 3);
insert into public.area ("ar_nombre", fk_zona) values ( '7', 4);
insert into public.area ("ar_nombre", fk_zona) values ( '8', 4);
insert into public.area ("ar_nombre", fk_zona) values ( '9', 5);
insert into public.area ("ar_nombre", fk_zona) values ( '10', 5);
insert into public.area ("ar_nombre", fk_zona) values ( '11', 6);
insert into public.area ("ar_nombre", fk_zona) values ( '12', 6);
insert into public.area ("ar_nombre", fk_zona) values ( '13', 7);
insert into public.area ("ar_nombre", fk_zona) values ( '14', 7);
insert into public.area ("ar_nombre", fk_zona) values ( '15', 8);
insert into public.area ("ar_nombre", fk_zona) values ( '16', 8);
insert into public.area ("ar_nombre", fk_zona) values ( '17', 9);
insert into public.area ("ar_nombre", fk_zona) values ( '18', 9);
insert into public.area ("ar_nombre", fk_zona) values ( '19', 10);
insert into public.area ("ar_nombre", fk_zona) values ( '20', 10);

--insertar despues de personal y horario
insert into asignacion (fk_personal, fk_horario) values (93, 1);
insert into asignacion (fk_personal, fk_horario) values (94, 2);
insert into asignacion (fk_personal, fk_horario) values (95, 3);
insert into asignacion (fk_personal, fk_horario) values (96, 4);
insert into asignacion (fk_personal, fk_horario) values (97, 5);
insert into asignacion (fk_personal, fk_horario) values (98, 6);
insert into asignacion (fk_personal, fk_horario) values (99, 7);
insert into asignacion (fk_personal, fk_horario) values (100, 8);
insert into asignacion (fk_personal, fk_horario) values (101, 9);
insert into asignacion (fk_personal, fk_horario) values (102, 10);
insert into asignacion (fk_personal, fk_horario) values (103, 11);
insert into asignacion (fk_personal, fk_horario) values (104, 12);
insert into asignacion (fk_personal, fk_horario) values (105, 13);
insert into asignacion (fk_personal, fk_horario) values (106, 14);
insert into asignacion (fk_personal, fk_horario) values (107, 15);
insert into asignacion (fk_personal, fk_horario) values (108, 16);
insert into asignacion (fk_personal, fk_horario) values (109, 17);
insert into asignacion (fk_personal, fk_horario) values (110, 18);
insert into asignacion (fk_personal, fk_horario) values (111, 19);
insert into asignacion (fk_personal, fk_horario) values (112, 20);
insert into asignacion (fk_personal, fk_horario) values (113, 21);
insert into asignacion (fk_personal, fk_horario) values (114, 22);
insert into asignacion (fk_personal, fk_horario) values (115, 23);
insert into asignacion (fk_personal, fk_horario) values (116, 24);
insert into asignacion (fk_personal, fk_horario) values (117, 25);
insert into asignacion (fk_personal, fk_horario) values (118, 26);
insert into asignacion (fk_personal, fk_horario) values (119, 27);
insert into asignacion (fk_personal, fk_horario) values (120, 28);
insert into asignacion (fk_personal, fk_horario) values (121, 29);
insert into asignacion (fk_personal, fk_horario) values (122, 30);
insert into asignacion (fk_personal, fk_horario) values (123, 31);
insert into asignacion (fk_personal, fk_horario) values (124, 32);
insert into asignacion (fk_personal, fk_horario) values (125, 33);
insert into asignacion (fk_personal, fk_horario) values (126, 34);
insert into asignacion (fk_personal, fk_horario) values (127, 35);
insert into asignacion (fk_personal, fk_horario) values (128, 36);
insert into asignacion (fk_personal, fk_horario) values (129, 37);
insert into asignacion (fk_personal, fk_horario) values (130, 38);
insert into asignacion (fk_personal, fk_horario) values (131, 39);
insert into asignacion (fk_personal, fk_horario) values (132, 40);

--insertar despues de personal, horario y asignacion
insert into asistencia (fk_asignacion, asis_fecha_asistida, asis_hora_entrada, asis_hora_salida) values (1, '11/8/2015', '08:00:00', '17:00:00');
insert into asistencia (fk_asignacion, asis_fecha_asistida, asis_hora_entrada, asis_hora_salida) values (2, '2/24/2019', '08:00:00', '17:00:00');
insert into asistencia (fk_asignacion, asis_fecha_asistida, asis_hora_entrada, asis_hora_salida) values (3, '4/27/2014', '08:00:00', '17:00:00');
insert into asistencia (fk_asignacion, asis_fecha_asistida, asis_hora_entrada, asis_hora_salida) values (4, '1/12/2024', '08:00:00', '17:00:00');
insert into asistencia (fk_asignacion, asis_fecha_asistida, asis_hora_entrada, asis_hora_salida) values (5, '3/9/2023', '08:00:00', '17:00:00');
insert into asistencia (fk_asignacion, asis_fecha_asistida, asis_hora_entrada, asis_hora_salida) values (6, '8/9/2019', '08:00:00', '17:00:00');
insert into asistencia (fk_asignacion, asis_fecha_asistida, asis_hora_entrada, asis_hora_salida) values (7, '12/26/2019', '08:00:00', '17:00:00');
insert into asistencia (fk_asignacion, asis_fecha_asistida, asis_hora_entrada, asis_hora_salida) values (8, '2/4/2020', '08:00:00', '17:00:00');
insert into asistencia (fk_asignacion, asis_fecha_asistida, asis_hora_entrada, asis_hora_salida) values (9, '2/16/2019', '08:00:00', '17:00:00');
insert into asistencia (fk_asignacion, asis_fecha_asistida, asis_hora_entrada, asis_hora_salida) values (10, '3/12/2014', '08:00:00', '17:00:00');
insert into asistencia (fk_asignacion, asis_fecha_asistida, asis_hora_entrada, asis_hora_salida) values (11, '11/18/2014', '08:00:00', '17:00:00');
insert into asistencia (fk_asignacion, asis_fecha_asistida, asis_hora_entrada, asis_hora_salida) values (12, '12/23/2020', '08:00:00', '17:00:00');
insert into asistencia (fk_asignacion, asis_fecha_asistida, asis_hora_entrada, asis_hora_salida) values (13, '7/27/2017', '08:00:00', '17:00:00');
insert into asistencia (fk_asignacion, asis_fecha_asistida, asis_hora_entrada, asis_hora_salida) values (14, '8/7/2018', '08:00:00', '17:00:00');
insert into asistencia (fk_asignacion, asis_fecha_asistida, asis_hora_entrada, asis_hora_salida) values (15, '4/26/2015', '08:00:00', '17:00:00');
insert into asistencia (fk_asignacion, asis_fecha_asistida, asis_hora_entrada, asis_hora_salida) values (16, '7/6/2022', '08:00:00', '17:00:00');
insert into asistencia (fk_asignacion, asis_fecha_asistida, asis_hora_entrada, asis_hora_salida) values (17, '11/8/2015', '08:00:00', '17:00:00');
insert into asistencia (fk_asignacion, asis_fecha_asistida, asis_hora_entrada, asis_hora_salida) values (18, '8/21/2024', '08:00:00', '17:00:00');
insert into asistencia (fk_asignacion, asis_fecha_asistida, asis_hora_entrada, asis_hora_salida) values (19, '6/9/2015', '08:00:00', '17:00:00');
insert into asistencia (fk_asignacion, asis_fecha_asistida, asis_hora_entrada, asis_hora_salida) values (20, '8/28/2022', '08:00:00', '17:00:00');
insert into asistencia (fk_asignacion, asis_fecha_asistida, asis_hora_entrada, asis_hora_salida) values (21, '4/9/2015', '08:00:00', '17:00:00');
insert into asistencia (fk_asignacion, asis_fecha_asistida, asis_hora_entrada, asis_hora_salida) values (22, '9/23/2018', '08:00:00', '17:00:00');
insert into asistencia (fk_asignacion, asis_fecha_asistida, asis_hora_entrada, asis_hora_salida) values (23, '10/21/2019', '08:00:00', '17:00:00');
insert into asistencia (fk_asignacion, asis_fecha_asistida, asis_hora_entrada, asis_hora_salida) values (24, '10/4/2023', '08:00:00', '17:00:00');
insert into asistencia (fk_asignacion, asis_fecha_asistida, asis_hora_entrada, asis_hora_salida) values (25, '6/1/2022', '08:00:00', '17:00:00');
insert into asistencia (fk_asignacion, asis_fecha_asistida, asis_hora_entrada, asis_hora_salida) values (26, '7/17/2021', '08:00:00', '17:00:00');
insert into asistencia (fk_asignacion, asis_fecha_asistida, asis_hora_entrada, asis_hora_salida) values (27, '7/6/2024', '08:00:00', '17:00:00');
insert into asistencia (fk_asignacion, asis_fecha_asistida, asis_hora_entrada, asis_hora_salida) values (28, '1/23/2021', '08:00:00', '17:00:00');
insert into asistencia (fk_asignacion, asis_fecha_asistida, asis_hora_entrada, asis_hora_salida) values (29, '7/2/2022', '08:00:00', '17:00:00');
insert into asistencia (fk_asignacion, asis_fecha_asistida, asis_hora_entrada, asis_hora_salida) values (30, '11/27/2021', '08:00:00', '17:00:00');
insert into asistencia (fk_asignacion, asis_fecha_asistida, asis_hora_entrada, asis_hora_salida) values (31, '10/28/2022', '08:00:00', '17:00:00');
insert into asistencia (fk_asignacion, asis_fecha_asistida, asis_hora_entrada, asis_hora_salida) values (32, '11/30/2017', '08:00:00', '17:00:00');
insert into asistencia (fk_asignacion, asis_fecha_asistida, asis_hora_entrada, asis_hora_salida) values (33, '12/31/2014', '08:00:00', '17:00:00');
insert into asistencia (fk_asignacion, asis_fecha_asistida, asis_hora_entrada, asis_hora_salida) values (34, '9/17/2021', '08:00:00', '17:00:00');
insert into asistencia (fk_asignacion, asis_fecha_asistida, asis_hora_entrada, asis_hora_salida) values (35, '8/10/2018', '08:00:00', '17:00:00');
insert into asistencia (fk_asignacion, asis_fecha_asistida, asis_hora_entrada, asis_hora_salida) values (36, '9/30/2019', '08:00:00', '17:00:00');
insert into asistencia (fk_asignacion, asis_fecha_asistida, asis_hora_entrada, asis_hora_salida) values (37, '7/5/2014', '08:00:00', '17:00:00');
insert into asistencia (fk_asignacion, asis_fecha_asistida, asis_hora_entrada, asis_hora_salida) values (38, '10/5/2023', '08:00:00', '17:00:00');
insert into asistencia (fk_asignacion, asis_fecha_asistida, asis_hora_entrada, asis_hora_salida) values (39, '7/11/2015', '08:00:00', '17:00:00');
insert into asistencia (fk_asignacion, asis_fecha_asistida, asis_hora_entrada, asis_hora_salida) values (40, '1/7/2017', '08:00:00', '17:00:00');

--avion
insert into public.avion (fk_modelo) values (1);
insert into public.avion (fk_modelo) values (2);
insert into public.avion (fk_modelo) values (3);
insert into public.avion (fk_modelo) values (9);

--beneficiario
insert into public.beneficiario (bene_nombre,fk_personal) values ('Pedro',93);
insert into public.beneficiario (bene_nombre,fk_personal) values ('Luis',94);
insert into public.beneficiario (bene_nombre,fk_personal) values ('Carlos',95);
insert into public.beneficiario (bene_nombre,fk_personal) values ('Carlos',96);
insert into public.beneficiario (bene_nombre,fk_personal) values ('Carlos',97);
insert into public.beneficiario (bene_nombre,fk_personal) values ('Carlos',98);
insert into public.beneficiario (bene_nombre,fk_personal) values ('Juan',99);
insert into public.beneficiario (bene_nombre,fk_personal) values ('Ana',100);
insert into public.beneficiario (bene_nombre,fk_personal) values ('Juan',101);
insert into public.beneficiario (bene_nombre,fk_personal) values ('Maria',102);

--cliente
INSERT INTO cliente (cli_fecha_registro, fk_natural, fk_juridica) VALUES
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', 1, NULL),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', 2, NULL),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', 3, NULL),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', 4, NULL),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', 5, NULL),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', 6, NULL),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', 7, NULL),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', 8, NULL),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', 9, NULL),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', 10, NULL),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', 11, NULL),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', 12, NULL),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', 13, NULL),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', 14, NULL),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', 15, NULL),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', 16, NULL),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', 17, NULL),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', 18, NULL),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', 19, NULL),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', 20, NULL),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', 21, NULL),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', 22, NULL),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', 23, NULL),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', 24, NULL),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', 25, NULL),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', 26, NULL),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', 27, NULL),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', 28, NULL),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', 29, NULL),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', 30, NULL),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', 31, NULL),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', 32, NULL),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', 33, NULL),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', 34, NULL),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', 35, NULL),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', 36, NULL),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', 37, NULL),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', 38, NULL),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', 39, NULL),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', 40, NULL),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', 41, NULL),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', 42, NULL),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', 43, NULL),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', 44, NULL),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', 45, NULL),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', 46, NULL),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', NULL, 47),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', NULL, 48),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', NULL, 49),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', NULL, 50),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', NULL, 51),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', NULL, 52),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', NULL, 53),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', NULL, 54),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', NULL, 55),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', NULL, 56),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', NULL, 57),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', NULL, 58),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', NULL, 59),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', NULL, 60),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', NULL, 61),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', NULL, 62),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', NULL, 63),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', NULL, 64),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', NULL, 65),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', NULL, 66),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', NULL, 67),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', NULL, 68),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', NULL, 69),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', NULL, 70),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', NULL, 71),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', NULL, 72),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', NULL, 73),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', NULL, 74),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', NULL, 75),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', NULL, 76),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', NULL, 77),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', NULL, 78),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', NULL, 79),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', NULL, 80),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', NULL, 81),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', NULL, 82),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', NULL, 83),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', NULL, 84),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', NULL, 85),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', NULL, 86),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', NULL, 87),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', NULL, 88),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', NULL, 89),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', NULL, 90),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', NULL, 91),
('2015-01-01'::DATE + (RANDOM() * (2024-2015) * 365)::INT * INTERVAL '1 day', NULL, 92);

--compra
insert into public.compra (compr_preciotot, fk_proveedor) values (120, 1);
insert into public.compra (compr_preciotot, fk_proveedor) values (150, 2);
insert into public.compra (compr_preciotot, fk_proveedor) values (200, 3);
insert into public.compra (compr_preciotot, fk_proveedor) values (175, 4);
insert into public.compra (compr_preciotot, fk_proveedor) values (220, 5);
insert into public.compra (compr_preciotot, fk_proveedor) values (180, 6);
insert into public.compra (compr_preciotot, fk_proveedor) values (190, 7);
insert into public.compra (compr_preciotot, fk_proveedor) values (210, 8);
insert into public.compra (compr_preciotot, fk_proveedor) values (160, 9);
insert into public.compra (compr_preciotot, fk_proveedor) values (230, 10);
insert into public.compra (compr_preciotot, fk_proveedor) values (140, 1);
insert into public.compra (compr_preciotot, fk_proveedor) values (145, 2);
insert into public.compra (compr_preciotot, fk_proveedor) values (155, 3);
insert into public.compra (compr_preciotot, fk_proveedor) values (165, 4);
insert into public.compra (compr_preciotot, fk_proveedor) values (170, 5);
insert into public.compra (compr_preciotot, fk_proveedor) values (185, 6);
insert into public.compra (compr_preciotot, fk_proveedor) values (195, 7);
insert into public.compra (compr_preciotot, fk_proveedor) values (205, 8);
insert into public.compra (compr_preciotot, fk_proveedor) values (215, 9);
insert into public.compra (compr_preciotot, fk_proveedor) values (225, 10);
insert into public.compra (compr_preciotot, fk_proveedor) values (135, 1);
insert into public.compra (compr_preciotot, fk_proveedor) values (145, 2);
insert into public.compra (compr_preciotot, fk_proveedor) values (155, 3);
insert into public.compra (compr_preciotot, fk_proveedor) values (165, 4);
insert into public.compra (compr_preciotot, fk_proveedor) values (175, 5);
insert into public.compra (compr_preciotot, fk_proveedor) values (185, 6);
insert into public.compra (compr_preciotot, fk_proveedor) values (195, 7);
insert into public.compra (compr_preciotot, fk_proveedor) values (205, 8);
insert into public.compra (compr_preciotot, fk_proveedor) values (215, 9);
insert into public.compra (compr_preciotot, fk_proveedor) values (225, 10);
insert into public.compra (compr_preciotot, fk_proveedor) values (135, 1);
insert into public.compra (compr_preciotot, fk_proveedor) values (145, 2);
insert into public.compra (compr_preciotot, fk_proveedor) values (155, 3);
insert into public.compra (compr_preciotot, fk_proveedor) values (165, 4);
insert into public.compra (compr_preciotot, fk_proveedor) values (175, 5);
insert into public.compra (compr_preciotot, fk_proveedor) values (185, 6);
insert into public.compra (compr_preciotot, fk_proveedor) values (195, 7);
insert into public.compra (compr_preciotot, fk_proveedor) values (205, 8);
insert into public.compra (compr_preciotot, fk_proveedor) values (215, 9);
insert into public.compra (compr_preciotot, fk_proveedor) values (225, 10);
insert into public.compra (compr_preciotot, fk_proveedor) values (135, 1);
insert into public.compra (compr_preciotot, fk_proveedor) values (145, 2);
insert into public.compra (compr_preciotot, fk_proveedor) values (155, 3);
insert into public.compra (compr_preciotot, fk_proveedor) values (165, 4);
insert into public.compra (compr_preciotot, fk_proveedor) values (175, 5);
insert into public.compra (compr_preciotot, fk_proveedor) values (185, 6);
insert into public.compra (compr_preciotot, fk_proveedor) values (195, 7);
insert into public.compra (compr_preciotot, fk_proveedor) values (205, 8);
insert into public.compra (compr_preciotot, fk_proveedor) values (215, 9);
insert into public.compra (compr_preciotot, fk_proveedor) values (225, 10);

--correo
insert into public.correo (cor_alias, cor_dominio, fk_persona, fk_proveedor) values ('miguel', 'gmail.com', null, 1);
insert into public.correo (cor_alias, cor_dominio, fk_persona, fk_proveedor) values ('sofia', 'yahoo.com', null, 2);
insert into public.correo (cor_alias, cor_dominio, fk_persona, fk_proveedor) values ('diego', 'hotmail.com', null, 3);
insert into public.correo (cor_alias, cor_dominio, fk_persona, fk_proveedor) values ('valeria', 'outlook.com', null, 4);
insert into public.correo (cor_alias, cor_dominio, fk_persona, fk_proveedor) values ('martin', 'icloud.com', null, 5);
insert into public.correo (cor_alias, cor_dominio, fk_persona, fk_proveedor) values ('paula', 'aol.com', null, 6);
insert into public.correo (cor_alias, cor_dominio, fk_persona, fk_proveedor) values ('julian', 'protonmail.com', null, 7);
insert into public.correo (cor_alias, cor_dominio, fk_persona, fk_proveedor) values ('camila', 'zoho.com', null, 8);
insert into public.correo (cor_alias, cor_dominio, fk_persona, fk_proveedor) values ('nicolas', 'mail.com', null, 9);
insert into public.correo (cor_alias, cor_dominio, fk_persona, fk_proveedor) values ('antonio', 'gmx.com', null, 10);
insert into public.correo (cor_alias, cor_dominio, fk_persona, fk_proveedor) values ('mariana', 'yandex.com', null, 11);
insert into public.correo (cor_alias, cor_dominio, fk_persona, fk_proveedor) values ('francisco', 'gmail.com', null, 12);
insert into public.correo (cor_alias, cor_dominio, fk_persona, fk_proveedor) values ('elena', 'yahoo.com', null, 13);
insert into public.correo (cor_alias, cor_dominio, fk_persona, fk_proveedor) values ('manuel', 'hotmail.com', null, 14);
insert into public.correo (cor_alias, cor_dominio, fk_persona, fk_proveedor) values ('carolina', 'outlook.com', null, 15);
insert into public.correo (cor_alias, cor_dominio, fk_persona, fk_proveedor) values ('ricardo', 'icloud.com', null, 16);
insert into public.correo (cor_alias, cor_dominio, fk_persona, fk_proveedor) values ('veronica', 'aol.com', null, 17);
insert into public.correo (cor_alias, cor_dominio, fk_persona, fk_proveedor) values ('eduardo', 'protonmail.com', null, 18);
insert into public.correo (cor_alias, cor_dominio, fk_persona, fk_proveedor) values ('gabriela', 'zoho.com', null, 19);
insert into public.correo (cor_alias, cor_dominio, fk_persona, fk_proveedor) values ('jorge', 'mail.com', null, 20);
insert into public.correo (cor_alias, cor_dominio, fk_persona, fk_proveedor) values ('daniela', 'gmx.com', null, 21);
insert into public.correo (cor_alias, cor_dominio, fk_persona, fk_proveedor) values ('rodrigo', 'yandex.com', null, 22);
insert into public.correo (cor_alias, cor_dominio, fk_persona, fk_proveedor) values ('alejandra', 'gmail.com', null, 23);
insert into public.correo (cor_alias, cor_dominio, fk_persona, fk_proveedor) values ('felipe', 'yahoo.com', null, 24);
insert into public.correo (cor_alias, cor_dominio, fk_persona, fk_proveedor) values ('claudia', 'hotmail.com', null, 25);
insert into public.correo (cor_alias, cor_dominio, fk_persona, fk_proveedor) values ('gustavo', 'outlook.com', null, 26);
insert into public.correo (cor_alias, cor_dominio, fk_persona, fk_proveedor) values ('patricia', 'icloud.com', null, 27);
insert into public.correo (cor_alias, cor_dominio, fk_persona, fk_proveedor) values ('victor', 'aol.com', null, 28);
insert into public.correo (cor_alias, cor_dominio, fk_persona, fk_proveedor) values ('marcela', 'protonmail.com', null, 29);
insert into public.correo (cor_alias, cor_dominio, fk_persona, fk_proveedor) values ('fernando', 'zoho.com', null, 30);
insert into public.correo (cor_alias, cor_dominio, fk_persona, fk_proveedor) values ('liliana', 'mail.com', null, 31);
insert into public.correo (cor_alias, cor_dominio, fk_persona, fk_proveedor) values ('ramon', 'gmx.com', null, 32);
insert into public.correo (cor_alias, cor_dominio, fk_persona, fk_proveedor) values ('maria', 'yandex.com', null, 33);
insert into public.correo (cor_alias, cor_dominio, fk_persona, fk_proveedor) values ('miguel', 'gmail.com', null, 34);
insert into public.correo (cor_alias, cor_dominio, fk_persona, fk_proveedor) values ('sofia', 'yahoo.com', null, 35);
insert into public.correo (cor_alias, cor_dominio, fk_persona, fk_proveedor) values ('diego', 'hotmail.com', null, 36);
insert into public.correo (cor_alias, cor_dominio, fk_persona, fk_proveedor) values ('valeria', 'outlook.com', null, 37);
insert into public.correo (cor_alias, cor_dominio, fk_persona, fk_proveedor) values ('martin', 'icloud.com', null, 38);
insert into public.correo (cor_alias, cor_dominio, fk_persona, fk_proveedor) values ('paula', 'aol.com', null, 39);
insert into public.correo (cor_alias, cor_dominio, fk_persona, fk_proveedor) values ('julian', 'protonmail.com', null, 40);
insert into public.correo (cor_alias, cor_dominio, fk_persona, fk_proveedor) values ('camila', 'zoho.com', null, 41);
insert into public.correo (cor_alias, cor_dominio, fk_persona, fk_proveedor) values ('nicolas', 'mail.com', null, 42);
insert into public.correo (cor_alias, cor_dominio, fk_persona, fk_proveedor) values ('antonio', 'gmx.com', null, 43);
insert into public.correo (cor_alias, cor_dominio, fk_persona, fk_proveedor) values ('mariana', 'yandex.com', null, 44);
insert into public.correo (cor_alias, cor_dominio, fk_persona, fk_proveedor) values ('francisco', 'gmail.com', null, 45);
insert into public.correo (cor_alias, cor_dominio, fk_persona, fk_proveedor) values ('elena', 'yahoo.com', null, 46);

--est_avion
insert into public.est_avion (fk_estatus, fk_avion) values (8,1);
insert into public.est_avion (fk_estatus, fk_avion) values (8,2);
insert into public.est_avion (fk_estatus, fk_avion) values (8,3);
insert into public.est_avion (fk_estatus, fk_avion) values (8,4);

--material
insert into material ("fk_TMaterial", mat_cantidad, mat_fecha_in, fk_sede) values (1, 300, '2020-01-01', 1);
insert into material ("fk_TMaterial", mat_cantidad, mat_fecha_in, fk_sede) values (2, 300, '2023-02-01', 2);
insert into material ("fk_TMaterial", mat_cantidad, mat_fecha_in, fk_sede) values (3, 300, '2023-03-01', 3);
insert into material ("fk_TMaterial", mat_cantidad, mat_fecha_in, fk_sede) values (4, 300, '2023-04-01', 4);
insert into material ("fk_TMaterial", mat_cantidad, mat_fecha_in, fk_sede) values (5, 300, '2023-05-01', 5);
insert into material ("fk_TMaterial", mat_cantidad, mat_fecha_in, fk_sede) values (6, 300, '2023-06-01', 1);
insert into material ("fk_TMaterial", mat_cantidad, mat_fecha_in, fk_sede) values (7, 300, '2023-07-01', 2);
insert into material ("fk_TMaterial", mat_cantidad, mat_fecha_in, fk_sede) values (8, 300, '2023-08-01', 3);
insert into material ("fk_TMaterial", mat_cantidad, mat_fecha_in, fk_sede) values (9, 300, '2023-09-01', 4);
insert into material ("fk_TMaterial", mat_cantidad, mat_fecha_in, fk_sede) values (10, 300, '2023-10-01', 5);
insert into material ("fk_TMaterial", mat_cantidad, mat_fecha_in, fk_sede) values (1, 300, '2023-11-01', 1);
insert into material ("fk_TMaterial", mat_cantidad, mat_fecha_in, fk_sede) values (2, 300, '2023-12-01', 2);
insert into material ("fk_TMaterial", mat_cantidad, mat_fecha_in, fk_sede) values (3, 300, '2024-01-01', 3);
insert into material ("fk_TMaterial", mat_cantidad, mat_fecha_in, fk_sede) values (4, 300, '2024-02-01', 4);
insert into material ("fk_TMaterial", mat_cantidad, mat_fecha_in, fk_sede) values (5, 300, '2024-03-01', 5);
insert into material ("fk_TMaterial", mat_cantidad, mat_fecha_in, fk_sede) values (6, 300, '2024-04-01', 1);
insert into material ("fk_TMaterial", mat_cantidad, mat_fecha_in, fk_sede) values (7, 300, '2024-05-01', 2);
insert into material ("fk_TMaterial", mat_cantidad, mat_fecha_in, fk_sede) values (8, 300, '2024-06-01', 3);
insert into material ("fk_TMaterial", mat_cantidad, mat_fecha_in, fk_sede) values (9, 300, '2024-07-01', 4);
insert into material ("fk_TMaterial", mat_cantidad, mat_fecha_in, fk_sede) values (10, 300, '2024-08-01', 5);

--mod_carac
    --AU-80
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (1,5,1);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (1,179,2);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (1,44.1,3);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (1,39.9,4);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (1,12.9,5);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (1,21,6);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (1,55580,7);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (1,116570,8);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (1,87500,9);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (1,860,10);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (1,1000,11);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (1,254700,12);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (1,4,13);

    --AU-801
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (2,7,1);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (2,189,2);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (2,46.7,3);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (2,32.9,4);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (2,10.4,5);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (2,21.2,6);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (2,46700,7);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (2,95028,8);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (2,77500,9);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (2,907,10);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (2,1000,11);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (2,254700,12);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (2,3,13);

    --AU-802
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (3,6,1);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (3,222,2);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (3,28.6,3);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (3,28.3,4);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (3,11.3,5);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (3,25,6);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (3,28120,7);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (3,49190,8);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (3,45000,9);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (3,780,10);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (3,876,11);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (3,17860,12);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (3,2,13);

    --AU-802A
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (4,6,1);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (4,327,2);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (4,36.5,3);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (4,28.9,4);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (4,11.1,5);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (4,25,6);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (4,33200,7);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (4,68050,8);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (4,56250,9);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (4,780,10);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (4,876,11);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (4,23170,12);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (4,2,13);

    --AU-802B
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (5,6,1);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (5,255,2);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (5,31.1,3);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (5,28.9,4);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (5,11.1,5);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (5,25,6);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (5,31300,7);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (5,60550,8);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (5,50000,9);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (5,780,10);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (5,876,11);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (5,23800,12);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (5,2,13);

    --AU-802C
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (6,6,1);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (6,255,2);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (6,31.2,3);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (6,35.7,4);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (6,12.6,5);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (6,25.02,6);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (6,36380,7);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (6,66000,8);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (6,55000,9);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (6,828,10);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (6,876,11);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (6,26020,12);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (6,2,13);

    --AU-802D
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (7,6,1);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (7,289,2);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (7,33.6,3);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (7,35.7,4);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (7,12.5,5);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (7,25.02,6);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (7,38150,7);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (7,70000,8);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (7,58600,9);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (7,828,10);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (7,876,11);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (7,26020,12);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (7,2,13);

    --AU-802E
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (8,6,1);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (8,526,2);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (8,39.5,3);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (8,35.7,4);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (8,12.5,5);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (8,25.02,6);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (8,41415,7);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (8,79000,8);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (8,66350,9);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (8,828,10);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (8,876,11);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (8,26020,12);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (8,2,13);

    --AU-802F
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (9,6,1);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (9,596,2);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (9,42.1,3);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (9,35.7,4);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (9,12.5,5);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (9,25.02,6);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (9,44675,7);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (9,85100,8);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (9,66350,9);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (9,823,10);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (9,876,11);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (9,29660,12);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (9,2,13);

    --AU-747Plus
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (10,3,1);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (10,818,2);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (10,70.66,3);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (10,59.64,4);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (10,19.3,5);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (10,27.03,6);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (10,162400,7);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (10,3334000,8);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (10,227050,9);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (10,893,10);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (10,945,11);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (10,183380,12);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (10,4,13);

    --AU-747Platinum
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (11,3,1);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (11,818,2);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (11,70.66,3);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (11,59.64,4);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (11,19.3,5);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (11,27.03,6);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (11,174000,7);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (11,378000,8);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (11,257050,9);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (11,893,10);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (11,945,11);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (11,199160,12);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (11,4,13);

    --AU-747Gold
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (12,3,1);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (12,908,2);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (12,70.66,3);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (12,59.64,4);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (12,19.3,5);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (12,27.03,6);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (12,178100,7);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (12,378000,8);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (12,257050,9);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (12,893,10);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (12,945,11);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (12,199160,12);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (12,4,13);

    --AU-747Silver
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (13,2,1);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (13,940,2);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (13,70.66,3);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (13,64.4,4);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (13,19.4,5);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (13,27.03,6);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (13,178750,7);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (13,397000,8);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (13,297050,9);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (13,916,10);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (13,978,11);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (13,216840,12);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (13,4,13);

    --AU-747SilverB
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (14,2,1);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (14,567,2);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (14,76.4,3);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (14,68.5,4);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (14,19.4,5);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (14,27.03,6);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (14,186000,7);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (14,440000,8);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (14,367050,9);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (14,916,10);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (14,978,11);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (14,243120,12);
    insert into mod_carac(fk_modelo, mod_carac_cantidad ,fk_carac) values (14,4,13);

--mod_tpie
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (1, 4, 1);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (1, 5, 2);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (1, 3, 3);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (1, 10, 4);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (1, 5, 5);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (1, 16, 6);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (1, 1, 7);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (1, 2, 8);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (1, 4, 9);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (1, 2, 10);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (1, 2, 11);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (1, 2, 12);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (1, 4, 13);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (1, 1, 14);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (1, 1, 15);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (1, 1, 16);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (1, 1, 17);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (1, 4, 18);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (1, 16, 19);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (1, 4, 20);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (1, 4, 21);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (1, 1, 22);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (1, 4, 23);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (1, 1, 24);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (1, 0, 25);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (1, 0, 26);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (1, 1, 27);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (1, 1, 28);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (1, 1, 29);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (1, 1, 30);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (1, 2, 31);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (1, 1, 32);

    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (2, 4, 1);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (2, 5, 2);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (2, 3, 3);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (2, 10, 4);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (2, 5, 5);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (2, 16, 6);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (2, 1, 7);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (2, 2, 8);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (2, 4, 9);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (2, 2, 10);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (2, 2, 11);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (2, 2, 12);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (2, 4, 13);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (2, 1, 14);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (2, 1, 15);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (2, 1, 16);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (2, 1, 17);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (2, 4, 18);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (2, 16, 19);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (2, 4, 20);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (2, 4, 21);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (2, 1, 22);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (2, 4, 23);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (2, 1, 24);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (2, 0, 25);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (2, 0, 26);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (2, 1, 27);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (2, 1, 28);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (2, 1, 29);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (2, 1, 30);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (2, 2, 31);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (2, 1, 32);

    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (3, 4, 1);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (3, 5, 2);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (3, 3, 3);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (3, 10, 4);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (3, 5, 5);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (3, 16, 6);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (3, 1, 7);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (3, 2, 8);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (3, 4, 9);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (3, 2, 10);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (3, 2, 11);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (3, 2, 12);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (3, 4, 13);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (3, 1, 14);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (3, 1, 15);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (3, 1, 16);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (3, 1, 17);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (3, 4, 18);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (3, 16, 19);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (3, 4, 20);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (3, 4, 21);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (3, 1, 22);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (3, 4, 23);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (3, 1, 24);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (3, 0, 25);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (3, 0, 26);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (3, 1, 27);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (3, 1, 28);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (3, 1, 29);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (3, 1, 30);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (3, 2, 31);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (3, 1, 32);

    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (4, 4, 1);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (4, 5, 2);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (4, 3, 3);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (4, 10, 4);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (4, 5, 5);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (4, 16, 6);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (4, 1, 7);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (4, 2, 8);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (4, 4, 9);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (4, 2, 10);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (4, 2, 11);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (4, 2, 12);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (4, 4, 13);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (4, 1, 14);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (4, 1, 15);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (4, 1, 16);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (4, 1, 17);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (4, 4, 18);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (4, 16, 19);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (4, 4, 20);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (4, 4, 21);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (4, 1, 22);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (4, 4, 23);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (4, 1, 24);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (4, 0, 25);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (4, 0, 26);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (4, 1, 27);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (4, 1, 28);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (4, 1, 29);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (4, 1, 30);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (4, 2, 31);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (4, 1, 32);

    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (5, 4, 1);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (5, 5, 2);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (5, 3, 3);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (5, 10, 4);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (5, 5, 5);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (5, 16, 6);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (5, 1, 7);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (5, 2, 8);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (5, 4, 9);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (5, 2, 10);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (5, 2, 11);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (5, 2, 12);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (5, 4, 13);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (5, 1, 14);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (5, 1, 15);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (5, 1, 16);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (5, 1, 17);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (5, 4, 18);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (5, 16, 19);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (5, 4, 20);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (5, 4, 21);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (5, 1, 22);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (5, 4, 23);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (5, 1, 24);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (5, 0, 25);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (5, 0, 26);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (5, 1, 27);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (5, 1, 28);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (5, 1, 29);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (5, 1, 30);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (5, 2, 31);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (5, 1, 32);

    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (6, 4, 1);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (6, 5, 2);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (6, 3, 3);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (6, 10, 4);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (6, 5, 5);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (6, 16, 6);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (6, 1, 7);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (6, 2, 8);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (6, 4, 9);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (6, 2, 10);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (6, 2, 11);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (6, 2, 12);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (6, 4, 13);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (6, 1, 14);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (6, 1, 15);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (6, 1, 16);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (6, 1, 17);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (6, 4, 18);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (6, 16, 19);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (6, 4, 20);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (6, 4, 21);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (6, 1, 22);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (6, 4, 23);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (6, 1, 24);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (6, 0, 25);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (6, 0, 26);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (6, 1, 27);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (6, 1, 28);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (6, 1, 29);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (6, 1, 30);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (6, 2, 31);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (6, 1, 32);

    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (7, 4, 1);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (7, 5, 2);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (7, 3, 3);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (7, 10, 4);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (7, 5, 5);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (7, 16, 6);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (7, 1, 7);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (7, 2, 8);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (7, 4, 9);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (7, 2, 10);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (7, 2, 11);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (7, 2, 12);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (7, 4, 13);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (7, 1, 14);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (7, 1, 15);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (7, 1, 16);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (7, 1, 17);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (7, 4, 18);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (7, 16, 19);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (7, 4, 20);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (7, 4, 21);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (7, 1, 22);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (7, 4, 23);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (7, 1, 24);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (7, 0, 25);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (7, 0, 26);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (7, 1, 27);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (7, 1, 28);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (7, 1, 29);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (7, 1, 30);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (7, 2, 31);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (7, 1, 32);

    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (8, 4, 1);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (8, 5, 2);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (8, 3, 3);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (8, 10, 4);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (8, 5, 5);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (8, 16, 6);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (8, 1, 7);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (8, 2, 8);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (8, 4, 9);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (8, 2, 10);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (8, 2, 11);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (8, 2, 12);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (8, 4, 13);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (8, 1, 14);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (8, 1, 15);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (8, 1, 16);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (8, 1, 17);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (8, 4, 18);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (8, 16, 19);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (8, 4, 20);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (8, 4, 21);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (8, 1, 22);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (8, 4, 23);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (8, 1, 24);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (8, 0, 25);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (8, 0, 26);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (8, 1, 27);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (8, 1, 28);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (8, 1, 29);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (8, 1, 30);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (8, 2, 31);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (8, 1, 32);

    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (9, 4, 1);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (9, 5, 2);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (9, 3, 3);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (9, 10, 4);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (9, 5, 5);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (9, 16, 6);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (9, 1, 7);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (9, 2, 8);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (9, 4, 9);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (9, 2, 10);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (9, 2, 11);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (9, 2, 12);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (9, 4, 13);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (9, 1, 14);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (9, 1, 15);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (9, 1, 16);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (9, 1, 17);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (9, 4, 18);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (9, 16, 19);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (9, 4, 20);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (9, 4, 21);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (9, 1, 22);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (9, 4, 23);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (9, 1, 24);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (9, 0, 25);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (9, 0, 26);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (9, 1, 27);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (9, 1, 28);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (9, 1, 29);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (9, 1, 30);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (9, 2, 31);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (9, 1, 32);

    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (10, 4, 1);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (10, 5, 2);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (10, 3, 3);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (10, 10, 4);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (10, 5, 5);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (10, 16, 6);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (10, 1, 7);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (10, 2, 8);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (10, 4, 9);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (10, 2, 10);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (10, 2, 11);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (10, 2, 12);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (10, 4, 13);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (10, 1, 14);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (10, 1, 15);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (10, 1, 16);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (10, 1, 17);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (10, 4, 18);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (10, 16, 19);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (10, 4, 20);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (10, 4, 21);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (10, 1, 22);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (10, 4, 23);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (10, 1, 24);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (10, 0, 25);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (10, 0, 26);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (10, 1, 27);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (10, 1, 28);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (10, 1, 29);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (10, 1, 30);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (10, 2, 31);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (10, 1, 32);

    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (11, 4, 1);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (11, 5, 2);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (11, 3, 3);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (11, 10, 4);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (11, 5, 5);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (11, 16, 6);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (11, 1, 7);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (11, 2, 8);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (11, 4, 9);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (11, 2, 10);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (11, 2, 11);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (11, 2, 12);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (11, 4, 13);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (11, 1, 14);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (11, 1, 15);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (11, 1, 16);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (11, 1, 17);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (11, 4, 18);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (11, 16, 19);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (11, 4, 20);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (11, 4, 21);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (11, 1, 22);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (11, 4, 23);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (11, 1, 24);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (11, 0, 25);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (11, 0, 26);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (11, 1, 27);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (11, 1, 28);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (11, 1, 29);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (11, 1, 30);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (11, 2, 31);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (11, 1, 32);

    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (12, 4, 1);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (12, 5, 2);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (12, 3, 3);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (12, 10, 4);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (12, 5, 5);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (12, 16, 6);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (12, 1, 7);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (12, 2, 8);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (12, 4, 9);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (12, 2, 10);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (12, 2, 11);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (12, 2, 12);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (12, 4, 13);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (12, 1, 14);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (12, 1, 15);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (12, 1, 16);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (12, 1, 17);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (12, 4, 18);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (12, 16, 19);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (12, 4, 20);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (12, 4, 21);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (12, 1, 22);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (12, 4, 23);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (12, 1, 24);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (12, 0, 25);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (12, 0, 26);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (12, 1, 27);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (12, 1, 28);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (12, 1, 29);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (12, 1, 30);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (12, 2, 31);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (12, 1, 32);


    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (13, 4, 1);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (13, 5, 2);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (13, 3, 3);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (13, 10, 4);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (13, 5, 5);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (13, 16, 6);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (13, 1, 7);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (13, 2, 8);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (13, 4, 9);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (13, 2, 10);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (13, 2, 11);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (13, 2, 12);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (13, 4, 13);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (13, 1, 14);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (13, 1, 15);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (13, 1, 16);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (13, 1, 17);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (13, 4, 18);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (13, 16, 19);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (13, 4, 20);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (13, 4, 21);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (13, 1, 22);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (13, 4, 23);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (13, 1, 24);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (13, 0, 25);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (13, 0, 26);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (13, 1, 27);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (13, 1, 28);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (13, 1, 29);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (13, 1, 30);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (13, 2, 31);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (13, 1, 32);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (14, 4, 1);

    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (14, 5, 2);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (14, 3, 3);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (14, 10, 4);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (14, 5, 5);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (14, 16, 6);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (14, 1, 7);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (14, 2, 8);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (14, 4, 9);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (14, 2, 10);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (14, 2, 11);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (14, 2, 12);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (14, 4, 13);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (14, 1, 14);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (14, 1, 15);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (14, 1, 16);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (14, 1, 17);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (14, 4, 18);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (14, 16, 19);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (14, 4, 20);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (14, 4, 21);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (14, 1, 22);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (14, 4, 23);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (14, 1, 24);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (14, 0, 25);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (14, 0, 26);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (14, 1, 27);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (14, 1, 28);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (14, 1, 29);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (14, 1, 30);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (14, 2, 31);
    insert into public."Mod_Tpie" ("fk_modelo", "cantidad", "fk_TPieza") values (14, 1, 32);

--Metodos de pago
    --pago_movil
    insert into pago_movil ("fk_tasaCambio", pm_numero_cuenta) values (1, 123456789);
    insert into pago_movil ("fk_tasaCambio", pm_numero_cuenta) values (1, 234567890);
    insert into pago_movil ("fk_tasaCambio", pm_numero_cuenta) values (1, 345678901);
    insert into pago_movil ("fk_tasaCambio", pm_numero_cuenta) values (1, 456789012);
    insert into pago_movil ("fk_tasaCambio", pm_numero_cuenta) values (1, 567890123);
    insert into pago_movil ("fk_tasaCambio", pm_numero_cuenta) values (1, 678901234);
    insert into pago_movil ("fk_tasaCambio", pm_numero_cuenta) values (1, 789012345);
    insert into pago_movil ("fk_tasaCambio", pm_numero_cuenta) values (1, 890123456);
    insert into pago_movil ("fk_tasaCambio", pm_numero_cuenta) values (1, 901234567);
    insert into pago_movil ("fk_tasaCambio", pm_numero_cuenta) values (1, 123456780);

    --t_credito
    insert into t_credito ("fk_tasaCambio", tc_cvv, tc_banco) values (1, 12345, 'Banco de Venezuela');
    insert into t_credito ("fk_tasaCambio", tc_cvv, tc_banco) values (1, 23456, 'Banco Provincial');
    insert into t_credito ("fk_tasaCambio", tc_cvv, tc_banco) values (1, 34567, 'Banesco');
    insert into t_credito ("fk_tasaCambio", tc_cvv, tc_banco) values (1, 45678, 'Mercantil');
    insert into t_credito ("fk_tasaCambio", tc_cvv, tc_banco) values (1, 56789, 'Banco del Tesoro');
    insert into t_credito ("fk_tasaCambio", tc_cvv, tc_banco) values (1, 67890, 'Banco Bicentenario');
    insert into t_credito ("fk_tasaCambio", tc_cvv, tc_banco) values (1, 78901, 'Banco Exterior');
    insert into t_credito ("fk_tasaCambio", tc_cvv, tc_banco) values (1, 89012, 'Banco Nacional de Crédito');
    insert into t_credito ("fk_tasaCambio", tc_cvv, tc_banco) values (1, 90123, 'Banco Caroní');
    insert into t_credito ("fk_tasaCambio", tc_cvv, tc_banco) values (1, 12346, 'Banco Plaza');

    --t_debito
    insert into t_debito ("fk_tasaCambio", td_numero, td_fecha, td_banco) values (1, 123456789, '2025-12-31','Banco de Venezuela');
    insert into t_debito ("fk_tasaCambio", td_numero, td_fecha, td_banco) values (1, 987654321, '2025-01-15', 'Banco Mercantil');
    insert into t_debito ("fk_tasaCambio", td_numero, td_fecha, td_banco) values (1, 234567890, '2025-02-20', 'Banco Provincial');
    insert into t_debito ("fk_tasaCambio", td_numero, td_fecha, td_banco) values (1, 345678901, '2025-03-25', 'Banco del Tesoro');
    insert into t_debito ("fk_tasaCambio", td_numero, td_fecha, td_banco) values (1, 456789012, '2025-04-30', 'Banco Bicentenario');
    insert into t_debito ("fk_tasaCambio", td_numero, td_fecha, td_banco) values (1, 567890123, '2025-05-05', 'Banco Exterior');
    insert into t_debito ("fk_tasaCambio", td_numero, td_fecha, td_banco) values (1, 678901234, '2025-06-10', 'Banco Nacional de Crédito');
    insert into t_debito ("fk_tasaCambio", td_numero, td_fecha, td_banco) values (1, 789012345, '2025-07-15', 'Banco Plaza');
    insert into t_debito ("fk_tasaCambio", td_numero, td_fecha, td_banco) values (1, 890123456, '2025-08-20', 'Banco Sofitasa');
    insert into t_debito ("fk_tasaCambio", td_numero, td_fecha, td_banco) values (1, 901234567, '2025-09-25', 'Banco Activo');

    --efectivo
    insert into efectivo ("fk_tasaCambio", efe_denominacion) values (1, '100');
    insert into efectivo ("fk_tasaCambio", efe_denominacion) values (1, '200');
    insert into efectivo ("fk_tasaCambio", efe_denominacion) values (1, '300');
    insert into efectivo ("fk_tasaCambio", efe_denominacion) values (1, '400');
    insert into efectivo ("fk_tasaCambio", efe_denominacion) values (1, '500');
    insert into efectivo ("fk_tasaCambio", efe_denominacion) values (1, '600');
    insert into efectivo ("fk_tasaCambio", efe_denominacion) values (1, '700');
    insert into efectivo ("fk_tasaCambio", efe_denominacion) values (1, '800');
    insert into efectivo ("fk_tasaCambio", efe_denominacion) values (1, '900');
    insert into efectivo ("fk_tasaCambio", efe_denominacion) values (1, '1000');

    --transferencia
    insert into transferencia ("fk_tasaCambio", tr_fecha, tr_banco) values (1, '2024-01-01', 'Banco de Venezuela');
    insert into transferencia ("fk_tasaCambio", tr_fecha, tr_banco) values (1, '2023-11-01', 'Banco Mercantil');
    insert into transferencia ("fk_tasaCambio", tr_fecha, tr_banco) values (1, '2023-12-01', 'Banco Provincial');
    insert into transferencia ("fk_tasaCambio", tr_fecha, tr_banco) values (1, '2024-02-01', 'Banco del Tesoro');
    insert into transferencia ("fk_tasaCambio", tr_fecha, tr_banco) values (1, '2024-03-01', 'Banesco');
    insert into transferencia ("fk_tasaCambio", tr_fecha, tr_banco) values (1, '2024-04-01', 'Banco Bicentenario');
    insert into transferencia ("fk_tasaCambio", tr_fecha, tr_banco) values (1, '2024-05-01', 'Banco Exterior');
    insert into transferencia ("fk_tasaCambio", tr_fecha, tr_banco) values (1, '2024-06-01', 'Banco Nacional de Crédito');
    insert into transferencia ("fk_tasaCambio", tr_fecha, tr_banco) values (1, '2024-07-01', 'Banco Plaza');
    insert into transferencia ("fk_tasaCambio", tr_fecha, tr_banco) values (1, '2024-08-01', 'Banco Sofitasa');

    --cheque
    insert into cheque ("fk_tasaCambio", che_numero, che_banco) values (1, 123456789, 'Banco de Venezuela');
    insert into cheque ("fk_tasaCambio", che_numero, che_banco) values (1, 987654321, 'Banco Mercantil');
    insert into cheque ("fk_tasaCambio", che_numero, che_banco) values (1, 234567890, 'Banco Provincial');
    insert into cheque ("fk_tasaCambio", che_numero, che_banco) values (1, 345678901, 'Banco del Tesoro');
    insert into cheque ("fk_tasaCambio", che_numero, che_banco) values (1, 456789012, 'Banco Bicentenario');
    insert into cheque ("fk_tasaCambio", che_numero, che_banco) values (1, 567890123, 'Banco Exterior');
    insert into cheque ("fk_tasaCambio", che_numero, che_banco) values (1, 678901234, 'Banco Nacional de Crédito');
    insert into cheque ("fk_tasaCambio", che_numero, che_banco) values (1, 789012345, 'Banco Caroní');
    insert into cheque ("fk_tasaCambio", che_numero, che_banco) values (1, 890123456, 'Banco Plaza');
    insert into cheque ("fk_tasaCambio", che_numero, che_banco) values (1, 901234567, 'Banco Activo');

--pago
--insertar despues de metodo de pago y de compra (insertar despues de todos los subtipos de metodo de pago)
insert into pago (pago_monto_final, fk_compra, fk_pago_movil, fk_t_credito, fk_t_debito, fk_efectivo, fk_transferencia) values (120, 1, 1, null, null, null, null);
insert into pago (pago_monto_final, fk_compra, fk_pago_movil, fk_t_credito, fk_t_debito, fk_efectivo, fk_transferencia) values (150, 2, 2, null, null, null, null);
insert into pago (pago_monto_final, fk_compra, fk_pago_movil, fk_t_credito, fk_t_debito, fk_efectivo, fk_transferencia) values (200, 3, 3, null, null, null, null);
insert into pago (pago_monto_final, fk_compra, fk_pago_movil, fk_t_credito, fk_t_debito, fk_efectivo, fk_transferencia) values (175, 4, 4, null, null, null, null);
insert into pago (pago_monto_final, fk_compra, fk_pago_movil, fk_t_credito, fk_t_debito, fk_efectivo, fk_transferencia) values (220, 5, 5, null, null, null, null);
insert into pago (pago_monto_final, fk_compra, fk_pago_movil, fk_t_credito, fk_t_debito, fk_efectivo, fk_transferencia) values (180, 6, 6, null, null, null, null);
insert into pago (pago_monto_final, fk_compra, fk_pago_movil, fk_t_credito, fk_t_debito, fk_efectivo, fk_transferencia) values (190, 7, 7, null, null, null, null);
insert into pago (pago_monto_final, fk_compra, fk_pago_movil, fk_t_credito, fk_t_debito, fk_efectivo, fk_transferencia) values (210, 8, 8, null, null, null, null);
insert into pago (pago_monto_final, fk_compra, fk_pago_movil, fk_t_credito, fk_t_debito, fk_efectivo, fk_transferencia) values (160, 9, 9, null, null, null, null);
insert into pago (pago_monto_final, fk_compra, fk_pago_movil, fk_t_credito, fk_t_debito, fk_efectivo, fk_transferencia) values (230, 10, 10, null, null, null, null);
insert into pago (pago_monto_final, fk_compra, fk_pago_movil, fk_t_credito, fk_t_debito, fk_efectivo, fk_transferencia) values (140, 11, null, 11, null, null, null);
insert into pago (pago_monto_final, fk_compra, fk_pago_movil, fk_t_credito, fk_t_debito, fk_efectivo, fk_transferencia) values (145, 12, null, 12, null, null, null);
insert into pago (pago_monto_final, fk_compra, fk_pago_movil, fk_t_credito, fk_t_debito, fk_efectivo, fk_transferencia) values (155, 13, null, 13, null, null, null);
insert into pago (pago_monto_final, fk_compra, fk_pago_movil, fk_t_credito, fk_t_debito, fk_efectivo, fk_transferencia) values (165, 14, null, 14, null, null, null);
insert into pago (pago_monto_final, fk_compra, fk_pago_movil, fk_t_credito, fk_t_debito, fk_efectivo, fk_transferencia) values (170, 15, null, 15, null, null, null);
insert into pago (pago_monto_final, fk_compra, fk_pago_movil, fk_t_credito, fk_t_debito, fk_efectivo, fk_transferencia) values (185, 16, null, 16, null, null, null);
insert into pago (pago_monto_final, fk_compra, fk_pago_movil, fk_t_credito, fk_t_debito, fk_efectivo, fk_transferencia) values (195, 17, null, 17, null, null, null);
insert into pago (pago_monto_final, fk_compra, fk_pago_movil, fk_t_credito, fk_t_debito, fk_efectivo, fk_transferencia) values (205, 18, null, 18, null, null, null);
insert into pago (pago_monto_final, fk_compra, fk_pago_movil, fk_t_credito, fk_t_debito, fk_efectivo, fk_transferencia) values (215, 19, null, 19, null, null, null);
insert into pago (pago_monto_final, fk_compra, fk_pago_movil, fk_t_credito, fk_t_debito, fk_efectivo, fk_transferencia) values (225, 20, null, 20, null, null, null);
insert into pago (pago_monto_final, fk_compra, fk_pago_movil, fk_t_credito, fk_t_debito, fk_efectivo, fk_transferencia) values (135, 21, null, null, 21, null, null);
insert into pago (pago_monto_final, fk_compra, fk_pago_movil, fk_t_credito, fk_t_debito, fk_efectivo, fk_transferencia) values (145, 22, null, null, 22, null, null);
insert into pago (pago_monto_final, fk_compra, fk_pago_movil, fk_t_credito, fk_t_debito, fk_efectivo, fk_transferencia) values (155, 23, null, null, 23, null, null);
insert into pago (pago_monto_final, fk_compra, fk_pago_movil, fk_t_credito, fk_t_debito, fk_efectivo, fk_transferencia) values (165, 24, null, null, 24, null, null);
insert into pago (pago_monto_final, fk_compra, fk_pago_movil, fk_t_credito, fk_t_debito, fk_efectivo, fk_transferencia) values (175, 25, null, null, 25, null, null);
insert into pago (pago_monto_final, fk_compra, fk_pago_movil, fk_t_credito, fk_t_debito, fk_efectivo, fk_transferencia) values (185, 26, null, null, 26, null, null);
insert into pago (pago_monto_final, fk_compra, fk_pago_movil, fk_t_credito, fk_t_debito, fk_efectivo, fk_transferencia) values (195, 27, null, null, 27, null, null);
insert into pago (pago_monto_final, fk_compra, fk_pago_movil, fk_t_credito, fk_t_debito, fk_efectivo, fk_transferencia) values (205, 28, null, null, 28, null, null);
insert into pago (pago_monto_final, fk_compra, fk_pago_movil, fk_t_credito, fk_t_debito, fk_efectivo, fk_transferencia) values (215, 29, null, null, 29, null, null);
insert into pago (pago_monto_final, fk_compra, fk_pago_movil, fk_t_credito, fk_t_debito, fk_efectivo, fk_transferencia) values (225, 30, null, null, 30, null, null);
insert into pago (pago_monto_final, fk_compra, fk_pago_movil, fk_t_credito, fk_t_debito, fk_efectivo, fk_transferencia) values (135, 31, null, null, null, 31, null);
insert into pago (pago_monto_final, fk_compra, fk_pago_movil, fk_t_credito, fk_t_debito, fk_efectivo, fk_transferencia) values (145, 32, null, null, null, 32, null);
insert into pago (pago_monto_final, fk_compra, fk_pago_movil, fk_t_credito, fk_t_debito, fk_efectivo, fk_transferencia) values (155, 33, null, null, null, 33, null);
insert into pago (pago_monto_final, fk_compra, fk_pago_movil, fk_t_credito, fk_t_debito, fk_efectivo, fk_transferencia) values (165, 34, null, null, null, 34, null);
insert into pago (pago_monto_final, fk_compra, fk_pago_movil, fk_t_credito, fk_t_debito, fk_efectivo, fk_transferencia) values (175, 35, null, null, null, 35, null);
insert into pago (pago_monto_final, fk_compra, fk_pago_movil, fk_t_credito, fk_t_debito, fk_efectivo, fk_transferencia) values (185, 36, null, null, null, 36, null);
insert into pago (pago_monto_final, fk_compra, fk_pago_movil, fk_t_credito, fk_t_debito, fk_efectivo, fk_transferencia) values (195, 37, null, null, null, 37, null);
insert into pago (pago_monto_final, fk_compra, fk_pago_movil, fk_t_credito, fk_t_debito, fk_efectivo, fk_transferencia) values (205, 38, null, null, null, 38, null);
insert into pago (pago_monto_final, fk_compra, fk_pago_movil, fk_t_credito, fk_t_debito, fk_efectivo, fk_transferencia) values (215, 39, null, null, null, 39, null);
insert into pago (pago_monto_final, fk_compra, fk_pago_movil, fk_t_credito, fk_t_debito, fk_efectivo, fk_transferencia) values (225, 40, null, null, null, 40, null);
insert into pago (pago_monto_final, fk_compra, fk_pago_movil, fk_t_credito, fk_t_debito, fk_efectivo, fk_transferencia) values (135, 41, null, null, null, null, 41);
insert into pago (pago_monto_final, fk_compra, fk_pago_movil, fk_t_credito, fk_t_debito, fk_efectivo, fk_transferencia) values (145, 42, null, null, null, null, 42);
insert into pago (pago_monto_final, fk_compra, fk_pago_movil, fk_t_credito, fk_t_debito, fk_efectivo, fk_transferencia) values (155, 43, null, null, null, null, 43);
insert into pago (pago_monto_final, fk_compra, fk_pago_movil, fk_t_credito, fk_t_debito, fk_efectivo, fk_transferencia) values (165, 44, null, null, null, null, 44);
insert into pago (pago_monto_final, fk_compra, fk_pago_movil, fk_t_credito, fk_t_debito, fk_efectivo, fk_transferencia) values (175, 45, null, null, null, null, 45);
insert into pago (pago_monto_final, fk_compra, fk_pago_movil, fk_t_credito, fk_t_debito, fk_efectivo, fk_transferencia) values (185, 46, null, null, null, null, 46);
insert into pago (pago_monto_final, fk_compra, fk_pago_movil, fk_t_credito, fk_t_debito, fk_efectivo, fk_transferencia) values (195, 47, null, null, null, null, 47);
insert into pago (pago_monto_final, fk_compra, fk_pago_movil, fk_t_credito, fk_t_debito, fk_efectivo, fk_transferencia) values (205, 48, null, null, null, null, 48);
insert into pago (pago_monto_final, fk_compra, fk_pago_movil, fk_t_credito, fk_t_debito, fk_efectivo, fk_transferencia) values (215, 49, null, null, null, null, 49);
insert into pago (pago_monto_final, fk_compra, fk_pago_movil, fk_t_credito, fk_t_debito, fk_efectivo, fk_transferencia) values (225, 50, null, null, null, null, 50);

--pedido
insert into public.pedido (fk_avion, fk_cliente) values (1, 1);
insert into public.pedido (fk_avion, fk_cliente) values (1, 2);
insert into public.pedido (fk_avion, fk_cliente) values (1, 3);
insert into public.pedido (fk_avion, fk_cliente) values (1, 4);
insert into public.pedido (fk_avion, fk_cliente) values (1, 5);
insert into public.pedido (fk_avion, fk_cliente) values (1, 6);
insert into public.pedido (fk_avion, fk_cliente) values (1, 7);
insert into public.pedido (fk_avion, fk_cliente) values (1, 8);
insert into public.pedido (fk_avion, fk_cliente) values (1, 9);
insert into public.pedido (fk_avion, fk_cliente) values (1, 10);

--per_car
insert into public."per_car" ("fk_personal", "fk_cargo", "per_car_fecha_inicio", "per_car_sueldo_base") values (93, 7, '2024-11-26', 40);
insert into public."per_car" ("fk_personal", "fk_cargo", "per_car_fecha_inicio", "per_car_sueldo_base") values (94, 6, '2024-11-26', 40);
insert into public."per_car" ("fk_personal", "fk_cargo", "per_car_fecha_inicio", "per_car_sueldo_base") values (95, 10, '2024-11-26', 40);
insert into public."per_car" ("fk_personal", "fk_cargo", "per_car_fecha_inicio", "per_car_sueldo_base") values (96, 2, '2024-11-26', 40);
insert into public."per_car" ("fk_personal", "fk_cargo", "per_car_fecha_inicio", "per_car_sueldo_base") values (97, 1, '2024-11-26', 40);
insert into public."per_car" ("fk_personal", "fk_cargo", "per_car_fecha_inicio", "per_car_sueldo_base") values (98, 3, '2024-09-02', 24);
insert into public."per_car" ("fk_personal", "fk_cargo", "per_car_fecha_inicio", "per_car_sueldo_base") values (99, 2, '2024-07-21', 27);
insert into public."per_car" ("fk_personal", "fk_cargo", "per_car_fecha_inicio", "per_car_sueldo_base") values (100, 6, '2024-02-23', 42);
insert into public."per_car" ("fk_personal", "fk_cargo", "per_car_fecha_inicio", "per_car_sueldo_base") values (101, 5, '2024-11-26', 11);
insert into public."per_car" ("fk_personal", "fk_cargo", "per_car_fecha_inicio", "per_car_sueldo_base") values (102, 10, '2024-07-14', 47);
insert into public."per_car" ("fk_personal", "fk_cargo", "per_car_fecha_inicio", "per_car_sueldo_base") values (103, 3, '2024-07-16', 31);
insert into public."per_car" ("fk_personal", "fk_cargo", "per_car_fecha_inicio", "per_car_sueldo_base") values (104, 5, '2024-08-15', 39);
insert into public."per_car" ("fk_personal", "fk_cargo", "per_car_fecha_inicio", "per_car_sueldo_base") values (105, 5, '2024-07-22', 43);
insert into public."per_car" ("fk_personal", "fk_cargo", "per_car_fecha_inicio", "per_car_sueldo_base") values (106, 1, '2024-02-15', 48);
insert into public."per_car" ("fk_personal", "fk_cargo", "per_car_fecha_inicio", "per_car_sueldo_base") values (107, 2, '2024-04-23', 19);
insert into public."per_car" ("fk_personal", "fk_cargo", "per_car_fecha_inicio", "per_car_sueldo_base") values (108, 5, '2024-04-16', 34);
insert into public."per_car" ("fk_personal", "fk_cargo", "per_car_fecha_inicio", "per_car_sueldo_base") values (109, 10, '2024-05-13', 10);
insert into public."per_car" ("fk_personal", "fk_cargo", "per_car_fecha_inicio", "per_car_sueldo_base") values (110, 8, '2024-09-20', 10);
insert into public."per_car" ("fk_personal", "fk_cargo", "per_car_fecha_inicio", "per_car_sueldo_base") values (111, 1, '2024-12-13', 24);
insert into public."per_car" ("fk_personal", "fk_cargo", "per_car_fecha_inicio", "per_car_sueldo_base") values (112, 9, '2024-07-10', 45);
insert into public."per_car" ("fk_personal", "fk_cargo", "per_car_fecha_inicio", "per_car_sueldo_base") values (113, 9, '2024-03-16', 39);
insert into public."per_car" ("fk_personal", "fk_cargo", "per_car_fecha_inicio", "per_car_sueldo_base") values (114, 6, '2024-05-17', 48);
insert into public."per_car" ("fk_personal", "fk_cargo", "per_car_fecha_inicio", "per_car_sueldo_base") values (115, 5, '2024-03-07', 35);
insert into public."per_car" ("fk_personal", "fk_cargo", "per_car_fecha_inicio", "per_car_sueldo_base") values (116, 2, '2024-06-26', 31);
insert into public."per_car" ("fk_personal", "fk_cargo", "per_car_fecha_inicio", "per_car_sueldo_base") values (117, 5, '2024-07-15', 42);
insert into public."per_car" ("fk_personal", "fk_cargo", "per_car_fecha_inicio", "per_car_sueldo_base") values (118, 2, '2024-09-10', 26);
insert into public."per_car" ("fk_personal", "fk_cargo", "per_car_fecha_inicio", "per_car_sueldo_base") values (119, 1, '2024-08-03', 40);
insert into public."per_car" ("fk_personal", "fk_cargo", "per_car_fecha_inicio", "per_car_sueldo_base") values (120, 3, '2024-09-24', 26);
insert into public."per_car" ("fk_personal", "fk_cargo", "per_car_fecha_inicio", "per_car_sueldo_base") values (121, 5, '2024-10-14', 25);
insert into public."per_car" ("fk_personal", "fk_cargo", "per_car_fecha_inicio", "per_car_sueldo_base") values (122, 6, '2024-07-21', 29);
insert into public."per_car" ("fk_personal", "fk_cargo", "per_car_fecha_inicio", "per_car_sueldo_base") values (123, 5, '2024-07-15', 34);
insert into public."per_car" ("fk_personal", "fk_cargo", "per_car_fecha_inicio", "per_car_sueldo_base") values (124, 1, '2024-03-17', 16);
insert into public."per_car" ("fk_personal", "fk_cargo", "per_car_fecha_inicio", "per_car_sueldo_base") values (125, 6, '2024-09-05', 44);
insert into public."per_car" ("fk_personal", "fk_cargo", "per_car_fecha_inicio", "per_car_sueldo_base") values (126, 10, '2024-11-27', 31);
insert into public."per_car" ("fk_personal", "fk_cargo", "per_car_fecha_inicio", "per_car_sueldo_base") values (127, 5, '2024-09-30', 41);
insert into public."per_car" ("fk_personal", "fk_cargo", "per_car_fecha_inicio", "per_car_sueldo_base") values (128, 10, '2024-01-22', 10);
insert into public."per_car" ("fk_personal", "fk_cargo", "per_car_fecha_inicio", "per_car_sueldo_base") values (129, 7, '2024-07-29', 49);
insert into public."per_car" ("fk_personal", "fk_cargo", "per_car_fecha_inicio", "per_car_sueldo_base") values (130, 1, '2024-06-28', 50);
insert into public."per_car" ("fk_personal", "fk_cargo", "per_car_fecha_inicio", "per_car_sueldo_base") values (131, 5, '2024-12-31', 27);
insert into public."per_car" ("fk_personal", "fk_cargo", "per_car_fecha_inicio", "per_car_sueldo_base") values (132, 7, '2024-11-26', 40);

--pieza
insert into public."pieza" ("pie_cod", "pie_descripcion", "pie_fecha_in", "fk_tpieza", "pie_cantidad", "pie_fecha_out") values (nextval('pie_cod_seq'), null, '2024-05-09', 1, 20, null);
insert into public."pieza" ("pie_cod", "pie_descripcion", "pie_fecha_in", "fk_tpieza", "pie_cantidad", "pie_fecha_out") values (nextval('pie_cod_seq'), null, '2024-05-11', 2, 20, null);
insert into public."pieza" ("pie_cod", "pie_descripcion", "pie_fecha_in", "fk_tpieza", "pie_cantidad", "pie_fecha_out") values (nextval('pie_cod_seq'), null, '2024-12-17', 3, 20, null);
insert into public."pieza" ("pie_cod", "pie_descripcion", "pie_fecha_in", "fk_tpieza", "pie_cantidad", "pie_fecha_out") values (nextval('pie_cod_seq'), null, '2024-11-07', 4, 20, null);
insert into public."pieza" ("pie_cod", "pie_descripcion", "pie_fecha_in", "fk_tpieza", "pie_cantidad", "pie_fecha_out") values (nextval('pie_cod_seq'), null, '2024-02-07', 5, 20, null);
insert into public."pieza" ("pie_cod", "pie_descripcion", "pie_fecha_in", "fk_tpieza", "pie_cantidad", "pie_fecha_out") values (nextval('pie_cod_seq'), null, '2024-04-23', 6, 20, null);
insert into public."pieza" ("pie_cod", "pie_descripcion", "pie_fecha_in", "fk_tpieza", "pie_cantidad", "pie_fecha_out") values (nextval('pie_cod_seq'), null, '2024-09-01', 7, 20, null);
insert into public."pieza" ("pie_cod", "pie_descripcion", "pie_fecha_in", "fk_tpieza", "pie_cantidad", "pie_fecha_out") values (nextval('pie_cod_seq'), null, '2024-11-01', 8, 20, null);
insert into public."pieza" ("pie_cod", "pie_descripcion", "pie_fecha_in", "fk_tpieza", "pie_cantidad", "pie_fecha_out") values (nextval('pie_cod_seq'), null, '2024-11-07', 9, 20, null);
insert into public."pieza" ("pie_cod", "pie_descripcion", "pie_fecha_in", "fk_tpieza", "pie_cantidad", "pie_fecha_out") values (nextval('pie_cod_seq'), null, '2024-01-17', 10, 20, null);
insert into public."pieza" ("pie_cod", "pie_descripcion", "pie_fecha_in", "fk_tpieza", "pie_cantidad", "pie_fecha_out") values (nextval('pie_cod_seq'), null, '2024-01-08', 11, 20, null);
insert into public."pieza" ("pie_cod", "pie_descripcion", "pie_fecha_in", "fk_tpieza", "pie_cantidad", "pie_fecha_out") values (nextval('pie_cod_seq'), null, '2024-05-07', 12, 20, null);
insert into public."pieza" ("pie_cod", "pie_descripcion", "pie_fecha_in", "fk_tpieza", "pie_cantidad", "pie_fecha_out") values (nextval('pie_cod_seq'), null, '2024-10-12', 13, 20, null);
insert into public."pieza" ("pie_cod", "pie_descripcion", "pie_fecha_in", "fk_tpieza", "pie_cantidad", "pie_fecha_out") values (nextval('pie_cod_seq'), null, '2024-01-06', 14, 20, null);
insert into public."pieza" ("pie_cod", "pie_descripcion", "pie_fecha_in", "fk_tpieza", "pie_cantidad", "pie_fecha_out") values (nextval('pie_cod_seq'), null, '2024-07-27', 15, 20, null);
insert into public."pieza" ("pie_cod", "pie_descripcion", "pie_fecha_in", "fk_tpieza", "pie_cantidad", "pie_fecha_out") values (nextval('pie_cod_seq'), null, '2024-06-11', 16, 20, null);
insert into public."pieza" ("pie_cod", "pie_descripcion", "pie_fecha_in", "fk_tpieza", "pie_cantidad", "pie_fecha_out") values (nextval('pie_cod_seq'), null, '2024-03-19', 17, 20, null);
insert into public."pieza" ("pie_cod", "pie_descripcion", "pie_fecha_in", "fk_tpieza", "pie_cantidad", "pie_fecha_out") values (nextval('pie_cod_seq'), null, '2024-12-24', 18, 20, null);
insert into public."pieza" ("pie_cod", "pie_descripcion", "pie_fecha_in", "fk_tpieza", "pie_cantidad", "pie_fecha_out") values (nextval('pie_cod_seq'), null, '2024-09-07', 19, 20, null);
insert into public."pieza" ("pie_cod", "pie_descripcion", "pie_fecha_in", "fk_tpieza", "pie_cantidad", "pie_fecha_out") values (nextval('pie_cod_seq'), null, '2024-06-30', 20, 20, null);
insert into public."pieza" ("pie_cod", "pie_descripcion", "pie_fecha_in", "fk_tpieza", "pie_cantidad", "pie_fecha_out") values (nextval('pie_cod_seq'), null, '2024-06-29', 21, 20, null);
insert into public."pieza" ("pie_cod", "pie_descripcion", "pie_fecha_in", "fk_tpieza", "pie_cantidad", "pie_fecha_out") values (nextval('pie_cod_seq'), null, '2024-05-14', 22, 20, null);
insert into public."pieza" ("pie_cod", "pie_descripcion", "pie_fecha_in", "fk_tpieza", "pie_cantidad", "pie_fecha_out") values (nextval('pie_cod_seq'), null, '2024-03-23', 23, 20, null);
insert into public."pieza" ("pie_cod", "pie_descripcion", "pie_fecha_in", "fk_tpieza", "pie_cantidad", "pie_fecha_out") values (nextval('pie_cod_seq'), null, '2024-10-29', 24, 20, null);
insert into public."pieza" ("pie_cod", "pie_descripcion", "pie_fecha_in", "fk_tpieza", "pie_cantidad", "pie_fecha_out") values (nextval('pie_cod_seq'), null, '2024-11-02', 25, 20, null);
insert into public."pieza" ("pie_cod", "pie_descripcion", "pie_fecha_in", "fk_tpieza", "pie_cantidad", "pie_fecha_out") values (nextval('pie_cod_seq'), null, '2024-11-22', 26, 20, null);
insert into public."pieza" ("pie_cod", "pie_descripcion", "pie_fecha_in", "fk_tpieza", "pie_cantidad", "pie_fecha_out") values (nextval('pie_cod_seq'), null, '2024-10-09', 27, 20, null);
insert into public."pieza" ("pie_cod", "pie_descripcion", "pie_fecha_in", "fk_tpieza", "pie_cantidad", "pie_fecha_out") values (nextval('pie_cod_seq'), null, '2024-01-29', 28, 20, null);
insert into public."pieza" ("pie_cod", "pie_descripcion", "pie_fecha_in", "fk_tpieza", "pie_cantidad", "pie_fecha_out") values (nextval('pie_cod_seq'), null, '2024-12-24', 29, 20, null);
insert into public."pieza" ("pie_cod", "pie_descripcion", "pie_fecha_in", "fk_tpieza", "pie_cantidad", "pie_fecha_out") values (nextval('pie_cod_seq'), null, '2024-08-03', 30, 20, null);
insert into public."pieza" ("pie_cod", "pie_descripcion", "pie_fecha_in", "fk_tpieza", "pie_cantidad", "pie_fecha_out") values (nextval('pie_cod_seq'), null, '2024-09-20', 31, 20, null);
insert into public."pieza" ("pie_cod", "pie_descripcion", "pie_fecha_in", "fk_tpieza", "pie_cantidad", "pie_fecha_out") values (nextval('pie_cod_seq'), null, '2024-05-16', 32, 20, null);

--pro_mat
insert into pro_mat (promat_cantidad, promat_costo, fk_proveedor, fk_tmat) values (290, 86, 31, 6);
insert into pro_mat (promat_cantidad, promat_costo, fk_proveedor, fk_tmat) values (255, 96, 43, 6);
insert into pro_mat (promat_cantidad, promat_costo, fk_proveedor, fk_tmat) values (272, 33, 4, 7);
insert into pro_mat (promat_cantidad, promat_costo, fk_proveedor, fk_tmat) values (252, 62, 1, 1);
insert into pro_mat (promat_cantidad, promat_costo, fk_proveedor, fk_tmat) values (266, 90, 29, 7);
insert into pro_mat (promat_cantidad, promat_costo, fk_proveedor, fk_tmat) values (279, 97, 23, 9);
insert into pro_mat (promat_cantidad, promat_costo, fk_proveedor, fk_tmat) values (260, 50, 16, 1);
insert into pro_mat (promat_cantidad, promat_costo, fk_proveedor, fk_tmat) values (281, 87, 40, 2);
insert into pro_mat (promat_cantidad, promat_costo, fk_proveedor, fk_tmat) values (270, 51, 10, 6);
insert into pro_mat (promat_cantidad, promat_costo, fk_proveedor, fk_tmat) values (261, 52, 11, 11);
insert into pro_mat (promat_cantidad, promat_costo, fk_proveedor, fk_tmat) values (272, 40, 6, 2);
insert into pro_mat (promat_cantidad, promat_costo, fk_proveedor, fk_tmat) values (280, 90, 3, 11);
insert into pro_mat (promat_cantidad, promat_costo, fk_proveedor, fk_tmat) values (262, 8, 44, 8);
insert into pro_mat (promat_cantidad, promat_costo, fk_proveedor, fk_tmat) values (291, 94, 38, 10);
insert into pro_mat (promat_cantidad, promat_costo, fk_proveedor, fk_tmat) values (255, 71, 10, 5);
insert into pro_mat (promat_cantidad, promat_costo, fk_proveedor, fk_tmat) values (260, 86, 25, 11);
insert into pro_mat (promat_cantidad, promat_costo, fk_proveedor, fk_tmat) values (290, 51, 19, 8);
insert into pro_mat (promat_cantidad, promat_costo, fk_proveedor, fk_tmat) values (288, 73, 8, 4);
insert into pro_mat (promat_cantidad, promat_costo, fk_proveedor, fk_tmat) values (266, 22, 26, 3);
insert into pro_mat (promat_cantidad, promat_costo, fk_proveedor, fk_tmat) values (297, 50, 17, 7);
insert into pro_mat (promat_cantidad, promat_costo, fk_proveedor, fk_tmat) values (290, 98, 16, 11);
insert into pro_mat (promat_cantidad, promat_costo, fk_proveedor, fk_tmat) values (300, 94, 22, 4);
insert into pro_mat (promat_cantidad, promat_costo, fk_proveedor, fk_tmat) values (276, 44, 20, 9);
insert into pro_mat (promat_cantidad, promat_costo, fk_proveedor, fk_tmat) values (250, 56, 37, 10);
insert into pro_mat (promat_cantidad, promat_costo, fk_proveedor, fk_tmat) values (282, 15, 42, 2);
insert into pro_mat (promat_cantidad, promat_costo, fk_proveedor, fk_tmat) values (272, 27, 30, 11);
insert into pro_mat (promat_cantidad, promat_costo, fk_proveedor, fk_tmat) values (276, 27, 2, 8);
insert into pro_mat (promat_cantidad, promat_costo, fk_proveedor, fk_tmat) values (276, 65, 43, 5);
insert into pro_mat (promat_cantidad, promat_costo, fk_proveedor, fk_tmat) values (260, 15, 19, 10);
insert into pro_mat (promat_cantidad, promat_costo, fk_proveedor, fk_tmat) values (251, 62, 34, 3);
insert into pro_mat (promat_cantidad, promat_costo, fk_proveedor, fk_tmat) values (260, 60, 5, 6);
insert into pro_mat (promat_cantidad, promat_costo, fk_proveedor, fk_tmat) values (269, 74, 21, 3);
insert into pro_mat (promat_cantidad, promat_costo, fk_proveedor, fk_tmat) values (293, 7, 28, 3);
insert into pro_mat (promat_cantidad, promat_costo, fk_proveedor, fk_tmat) values (270, 47, 2, 2);
insert into pro_mat (promat_cantidad, promat_costo, fk_proveedor, fk_tmat) values (300, 29, 20, 5);
insert into pro_mat (promat_cantidad, promat_costo, fk_proveedor, fk_tmat) values (269, 2, 31, 10);
insert into pro_mat (promat_cantidad, promat_costo, fk_proveedor, fk_tmat) values (265, 12, 42, 3);
insert into pro_mat (promat_cantidad, promat_costo, fk_proveedor, fk_tmat) values (290, 11, 12, 2);
insert into pro_mat (promat_cantidad, promat_costo, fk_proveedor, fk_tmat) values (275, 65, 16, 4);
insert into pro_mat (promat_cantidad, promat_costo, fk_proveedor, fk_tmat) values (263, 93, 7, 9);
insert into pro_mat (promat_cantidad, promat_costo, fk_proveedor, fk_tmat) values (269, 26, 23, 10);
insert into pro_mat (promat_cantidad, promat_costo, fk_proveedor, fk_tmat) values (274, 52, 45, 3);
insert into pro_mat (promat_cantidad, promat_costo, fk_proveedor, fk_tmat) values (257, 61, 17, 2);
insert into pro_mat (promat_cantidad, promat_costo, fk_proveedor, fk_tmat) values (291, 27, 9, 2);

--prueba
insert into prueba ("fk_tipoPrueba") values (1);
insert into prueba ("fk_tipoPrueba") values (2);
insert into prueba ("fk_tipoPrueba") values (3);
insert into prueba ("fk_tipoPrueba") values (4);
insert into prueba ("fk_tipoPrueba") values (5);
insert into prueba ("fk_tipoPrueba") values (6);
insert into prueba ("fk_tipoPrueba") values (7);
insert into prueba ("fk_tipoPrueba") values (8);
insert into prueba ("fk_tipoPrueba") values (9);
insert into prueba ("fk_tipoPrueba") values (10);
insert into prueba ("fk_tipoPrueba") values (11);
insert into prueba ("fk_tipoPrueba") values (12);
insert into prueba ("fk_tipoPrueba") values (13);
insert into prueba ("fk_tipoPrueba") values (14);
insert into prueba ("fk_tipoPrueba") values (15);
insert into prueba ("fk_tipoPrueba") values (16);
insert into prueba ("fk_tipoPrueba") values (17);
insert into prueba ("fk_tipoPrueba") values (18);
insert into prueba ("fk_tipoPrueba") values (19);
insert into prueba ("fk_tipoPrueba") values (20);
insert into prueba ("fk_tipoPrueba") values (21);
insert into prueba ("fk_tipoPrueba") values (22);
insert into prueba ("fk_tipoPrueba") values (23);
insert into prueba ("fk_tipoPrueba") values (24);
insert into prueba ("fk_tipoPrueba") values (25);
insert into prueba ("fk_tipoPrueba") values (26);
insert into prueba ("fk_tipoPrueba") values (27);
insert into prueba ("fk_tipoPrueba") values (28);
insert into prueba ("fk_tipoPrueba") values (29);
insert into prueba ("fk_tipoPrueba") values (30);
insert into prueba ("fk_tipoPrueba") values (31);
insert into prueba ("fk_tipoPrueba") values (32);
insert into prueba ("fk_tipoPrueba") values (33);
insert into prueba ("fk_tipoPrueba") values (34);
insert into prueba ("fk_tipoPrueba") values (35);
insert into prueba ("fk_tipoPrueba") values (36);
insert into prueba ("fk_tipoPrueba") values (37);
insert into prueba ("fk_tipoPrueba") values (38);
insert into prueba ("fk_tipoPrueba") values (39);
insert into prueba ("fk_tipoPrueba") values (40);

--recetario
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (1, 1, 2);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (1, 2, 3);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (2, 5, 6);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (2, 2, 5); 
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (3, 2, 5);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (3, 1, 10);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (4, 3, 8);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (4, 20, 9);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (5, 4, 1);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (5, 3, 6);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (6, 1, 5);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (6, 1, 1);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (7, 1, 9);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (7, 2, 4);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (8, 7, 10);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (8, 10, 8);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (9, 4, 1);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (9, 2, 3);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (10, 2, 1);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (10, 1, 10);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (11, 2, 1);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (11, 1, 10);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (12, 3, 1);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (12, 2, 10);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (13, 2, 10);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (13, 2, 4);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (14, 1, 1);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (14, 2, 10);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (15, 1, 9);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (15, 2, 8);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (16, 1, 9);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (16, 2, 3);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (17, 3, 1);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (17, 2, 2);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (18, 35, 8);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (18, 2, 1);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (19, 1, 10);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (19, 2, 7);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (20, 1, 1);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (20, 3, 10);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (21, 2, 5);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (21, 1, 2);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (22, 2, 9);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (22, 1, 10);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (23, 50, 8);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (23, 10, 2);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (24, 1, 9);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (24, 2, 4);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (25, 3, 1);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (25, 2, 3);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (26, 1, 1);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (26, 1, 10);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (27, 2, 9);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (27, 1, 2);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (28, 1, 9);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (28, 10, 8);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (29, 2, 9);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (29, 1, 10);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (30, 2, 9);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (30, 3, 2);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (31, 3, 9);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (31, 2, 8);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (32, 4, 9);
insert into public."recetario" ("fk_tpPieza", "cantidad", "fk_tpMaterial") values (32, 3, 3);

--solicitud sede
insert into solicitud_sede (solsed_tipo, fk_sede, fk_material) values ('Solicitud de material', 1, 1);
insert into solicitud_sede (solsed_tipo, fk_sede, fk_material) values ('Solicitud de material', 1, 2);
insert into solicitud_sede (solsed_tipo, fk_sede, fk_material) values ('Solicitud de material', 1, 3);
insert into solicitud_sede (solsed_tipo, fk_sede, fk_material) values ('Solicitud de material', 1, 4);
insert into solicitud_sede (solsed_tipo, fk_sede, fk_material) values ('Solicitud de material', 1, 5);
insert into solicitud_sede (solsed_tipo, fk_sede, fk_material) values ('Solicitud de material', 1, 6);
insert into solicitud_sede (solsed_tipo, fk_sede, fk_material) values ('Solicitud de material', 1, 7);
insert into solicitud_sede (solsed_tipo, fk_sede, fk_material) values ('Solicitud de material', 1, 8);
insert into solicitud_sede (solsed_tipo, fk_sede, fk_material) values ('Solicitud de material', 1, 9);
insert into solicitud_sede (solsed_tipo, fk_sede, fk_material) values ('Solicitud de material', 1, 10);
insert into solicitud_sede (solsed_tipo, fk_sede, fk_material) values ('Solicitud de material', 2, 1);
insert into solicitud_sede (solsed_tipo, fk_sede, fk_material) values ('Solicitud de material', 2, 2);
insert into solicitud_sede (solsed_tipo, fk_sede, fk_material) values ('Solicitud de material', 2, 3);
insert into solicitud_sede (solsed_tipo, fk_sede, fk_material) values ('Solicitud de material', 2, 4);
insert into solicitud_sede (solsed_tipo, fk_sede, fk_material) values ('Solicitud de material', 2, 5);
insert into solicitud_sede (solsed_tipo, fk_sede, fk_material) values ('Solicitud de material', 2, 6);
insert into solicitud_sede (solsed_tipo, fk_sede, fk_material) values ('Solicitud de material', 2, 7);
insert into solicitud_sede (solsed_tipo, fk_sede, fk_material) values ('Solicitud de material', 2, 8);
insert into solicitud_sede (solsed_tipo, fk_sede, fk_material) values ('Solicitud de material', 2, 9);
insert into solicitud_sede (solsed_tipo, fk_sede, fk_material) values ('Solicitud de material', 2, 10);
insert into solicitud_sede (solsed_tipo, fk_sede, fk_material) values ('Solicitud de material', 3, 1);
insert into solicitud_sede (solsed_tipo, fk_sede, fk_material) values ('Solicitud de material', 3, 2);
insert into solicitud_sede (solsed_tipo, fk_sede, fk_material) values ('Solicitud de material', 3, 3);
insert into solicitud_sede (solsed_tipo, fk_sede, fk_material) values ('Solicitud de material', 3, 4);
insert into solicitud_sede (solsed_tipo, fk_sede, fk_material) values ('Solicitud de material', 3, 5);
insert into solicitud_sede (solsed_tipo, fk_sede, fk_material) values ('Solicitud de material', 3, 6);
insert into solicitud_sede (solsed_tipo, fk_sede, fk_material) values ('Solicitud de material', 3, 7);
insert into solicitud_sede (solsed_tipo, fk_sede, fk_material) values ('Solicitud de material', 3, 8);
insert into solicitud_sede (solsed_tipo, fk_sede, fk_material) values ('Solicitud de material', 3, 9);
insert into solicitud_sede (solsed_tipo, fk_sede, fk_material) values ('Solicitud de material', 3, 10);
insert into solicitud_sede (solsed_tipo, fk_sede, fk_material) values ('Solicitud de material', 4, 1);
insert into solicitud_sede (solsed_tipo, fk_sede, fk_material) values ('Solicitud de material', 4, 2);
insert into solicitud_sede (solsed_tipo, fk_sede, fk_material) values ('Solicitud de material', 4, 3);
insert into solicitud_sede (solsed_tipo, fk_sede, fk_material) values ('Solicitud de material', 4, 4);
insert into solicitud_sede (solsed_tipo, fk_sede, fk_material) values ('Solicitud de material', 4, 5);
insert into solicitud_sede (solsed_tipo, fk_sede, fk_material) values ('Solicitud de material', 4, 6);
insert into solicitud_sede (solsed_tipo, fk_sede, fk_material) values ('Solicitud de material', 4, 7);
insert into solicitud_sede (solsed_tipo, fk_sede, fk_material) values ('Solicitud de material', 4, 8);
insert into solicitud_sede (solsed_tipo, fk_sede, fk_material) values ('Solicitud de material', 4, 9);
insert into solicitud_sede (solsed_tipo, fk_sede, fk_material) values ('Solicitud de material', 4, 10);
insert into solicitud_sede (solsed_tipo, fk_sede, fk_material) values ('Solicitud de material', 5, 1);
insert into solicitud_sede (solsed_tipo, fk_sede, fk_material) values ('Solicitud de material', 5, 2);
insert into solicitud_sede (solsed_tipo, fk_sede, fk_material) values ('Solicitud de material', 5, 3);
insert into solicitud_sede (solsed_tipo, fk_sede, fk_material) values ('Solicitud de material', 5, 4);
insert into solicitud_sede (solsed_tipo, fk_sede, fk_material) values ('Solicitud de material', 5, 5);
insert into solicitud_sede (solsed_tipo, fk_sede, fk_material) values ('Solicitud de material', 5, 6);
insert into solicitud_sede (solsed_tipo, fk_sede, fk_material) values ('Solicitud de material', 5, 7);
insert into solicitud_sede (solsed_tipo, fk_sede, fk_material) values ('Solicitud de material', 5, 8);
insert into solicitud_sede (solsed_tipo, fk_sede, fk_material) values ('Solicitud de material', 5, 9);
insert into solicitud_sede (solsed_tipo, fk_sede, fk_material) values ('Solicitud de material', 5, 10);

--tipo_mat_pru
insert into public.tipo_mat_pru (fk_mat, fk_pru) values (1, 1);
insert into public.tipo_mat_pru (fk_mat, fk_pru) values (2, 2);
insert into public.tipo_mat_pru (fk_mat, fk_pru) values (3, 3);
insert into public.tipo_mat_pru (fk_mat, fk_pru) values (4, 4);
insert into public.tipo_mat_pru (fk_mat, fk_pru) values (5, 5);
insert into public.tipo_mat_pru (fk_mat, fk_pru) values (6, 6);
insert into public.tipo_mat_pru (fk_mat, fk_pru) values (7, 7);
insert into public.tipo_mat_pru (fk_mat, fk_pru) values (8, 8);
insert into public.tipo_mat_pru (fk_mat, fk_pru) values (9, 9);
insert into public.tipo_mat_pru (fk_mat, fk_pru) values (10, 10);

--tipo_mod_pru
insert into public.tipo_mod_pru (fk_modelo, fk_pru) values (1, 1);
insert into public.tipo_mod_pru (fk_modelo, fk_pru) values (1, 2);
insert into public.tipo_mod_pru (fk_modelo, fk_pru) values (1, 3);
insert into public.tipo_mod_pru (fk_modelo, fk_pru) values (2, 1);
insert into public.tipo_mod_pru (fk_modelo, fk_pru) values (2, 2);
insert into public.tipo_mod_pru (fk_modelo, fk_pru) values (2, 3);
insert into public.tipo_mod_pru (fk_modelo, fk_pru) values (3, 1);
insert into public.tipo_mod_pru (fk_modelo, fk_pru) values (3, 2);
insert into public.tipo_mod_pru (fk_modelo, fk_pru) values (3, 3);
insert into public.tipo_mod_pru (fk_modelo, fk_pru) values (4, 1);

--tipo_pie_pru
insert into public.tipo_pie_pru (fk_pie, fk_pru) values (1, 1);
insert into public.tipo_pie_pru (fk_pie, fk_pru) values (1, 2);
insert into public.tipo_pie_pru (fk_pie, fk_pru) values (1, 3);
insert into public.tipo_pie_pru (fk_pie, fk_pru) values (2, 1);
insert into public.tipo_pie_pru (fk_pie, fk_pru) values (2, 2);
insert into public.tipo_pie_pru (fk_pie, fk_pru) values (2, 3);
insert into public.tipo_pie_pru (fk_pie, fk_pru) values (3, 1);
insert into public.tipo_pie_pru (fk_pie, fk_pru) values (3, 2);
insert into public.tipo_pie_pru (fk_pie, fk_pru) values (3, 3);
insert into public.tipo_pie_pru (fk_pie, fk_pru) values (4, 1);

--venta
insert into venta (ven_monto, ven_cantidad, ven_fecha, fk_pedido) values (1000, 300, '2020-10-10', 1);
insert into venta (ven_monto, ven_cantidad, ven_fecha, fk_pedido) values (2000, 300, '2020-10-10', 2);
insert into venta (ven_monto, ven_cantidad, ven_fecha, fk_pedido) values (1500, 300, '2020-10-11', 3);
insert into venta (ven_monto, ven_cantidad, ven_fecha, fk_pedido) values (2500, 300, '2020-10-11', 4);
insert into venta (ven_monto, ven_cantidad, ven_fecha, fk_pedido) values (3000, 300, '2020-10-12', 5);
insert into venta (ven_monto, ven_cantidad, ven_fecha, fk_pedido) values (3500, 300, '2020-10-12', 6);
insert into venta (ven_monto, ven_cantidad, ven_fecha, fk_pedido) values (4000, 300, '2020-10-13', 7);
insert into venta (ven_monto, ven_cantidad, ven_fecha, fk_pedido) values (4500, 300, '2020-10-13', 8);
insert into venta (ven_monto, ven_cantidad, ven_fecha, fk_pedido) values (5000, 300, '2020-10-14', 9);
insert into venta (ven_monto, ven_cantidad, ven_fecha, fk_pedido) values (5500, 300, '2020-10-14', 10);

--avi_pru
insert into public."avi_pru" ("avipr_fecha_ini","fk_avion","fk_pru") values ('2024-08-06',1,1);
insert into public."avi_pru" ("avipr_fecha_ini","fk_avion","fk_pru") values ('2024-08-06',1,2);
insert into public."avi_pru" ("avipr_fecha_ini","fk_avion","fk_pru") values ('2024-08-06',1,3);
insert into public."avi_pru" ("avipr_fecha_ini","fk_avion","fk_pru") values ('2024-08-06',1,4);
insert into public."avi_pru" ("avipr_fecha_ini","fk_avion","fk_pru") values ('2024-08-06',1,5);

insert into public."avi_pru" ("avipr_fecha_ini","fk_avion","fk_pru") values ('2024-08-06',2,6);
insert into public."avi_pru" ("avipr_fecha_ini","fk_avion","fk_pru") values ('2024-08-06',2,7);
insert into public."avi_pru" ("avipr_fecha_ini","fk_avion","fk_pru") values ('2024-08-06',2,8);
insert into public."avi_pru" ("avipr_fecha_ini","fk_avion","fk_pru") values ('2024-08-06',2,9);
insert into public."avi_pru" ("avipr_fecha_ini","fk_avion","fk_pru") values ('2024-08-06',2,10);

insert into public."avi_pru" ("avipr_fecha_ini","fk_avion","fk_pru") values ('2024-08-06',3,11);
insert into public."avi_pru" ("avipr_fecha_ini","fk_avion","fk_pru") values ('2024-08-06',3,12);
insert into public."avi_pru" ("avipr_fecha_ini","fk_avion","fk_pru") values ('2024-08-06',3,13);
insert into public."avi_pru" ("avipr_fecha_ini","fk_avion","fk_pru") values ('2024-08-06',3,14);
insert into public."avi_pru" ("avipr_fecha_ini","fk_avion","fk_pru") values ('2024-08-06',3,15);

insert into public."avi_pru" ("avipr_fecha_ini","fk_avion","fk_pru") values ('2024-08-06',4,16);
insert into public."avi_pru" ("avipr_fecha_ini","fk_avion","fk_pru") values ('2024-08-06',4,17);
insert into public."avi_pru" ("avipr_fecha_ini","fk_avion","fk_pru") values ('2024-08-06',4,18);
insert into public."avi_pru" ("avipr_fecha_ini","fk_avion","fk_pru") values ('2024-08-06',4,19);
insert into public."avi_pru" ("avipr_fecha_ini","fk_avion","fk_pru") values ('2024-08-06',4,20);

--Av_Pi
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (1, 1);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (1, 2);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (1, 3);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (1, 4);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (1, 5);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (1, 6);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (1, 7);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (1, 8);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (1, 9);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (1, 10);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (1, 11);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (1, 12);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (1, 13);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (1, 14);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (1, 15);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (1, 16);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (1, 17);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (1, 18);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (1, 19);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (1, 20);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (1, 21);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (1, 22);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (1, 23);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (1, 24);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (1, 25);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (1, 26);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (1, 27);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (1, 28);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (1, 29);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (1, 30);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (1, 31);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (1, 32);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (2, 1);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (2, 2);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (2, 3);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (2, 4);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (2, 5);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (2, 6);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (2, 7);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (2, 8);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (2, 9);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (2, 10);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (2, 11);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (2, 12);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (2, 13);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (2, 14);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (2, 15);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (2, 16);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (2, 17);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (2, 18);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (2, 19);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (2, 20);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (2, 21);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (2, 22);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (2, 23);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (2, 24);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (2, 25);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (2, 26);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (2, 27);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (2, 28);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (2, 29);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (2, 30);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (2, 31);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (2, 32);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (3, 1);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (3, 2);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (3, 3);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (3, 4);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (3, 5);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (3, 6);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (3, 7);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (3, 8);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (3, 9);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (3, 10);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (3, 11);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (3, 12);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (3, 13);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (3, 14);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (3, 15);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (3, 16);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (3, 17);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (3, 18);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (3, 19);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (3, 20);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (3, 21);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (3, 22);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (3, 23);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (3, 24);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (3, 25);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (3, 26);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (3, 27);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (3, 28);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (3, 29);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (3, 30);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (3, 31);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (3, 32);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (4, 1);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (4, 2);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (4, 3);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (4, 4);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (4, 5);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (4, 6);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (4, 7);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (4, 8);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (4, 9);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (4, 10);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (4, 11);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (4, 12);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (4, 13);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (4, 14);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (4, 15);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (4, 16);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (4, 17);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (4, 18);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (4, 19);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (4, 20);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (4, 21);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (4, 22);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (4, 23);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (4, 24);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (4, 25);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (4, 26);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (4, 27);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (4, 28);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (4, 29);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (4, 30);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (4, 31);
insert into public."Av_Pi" ("fk_Avion", "fk_Pieza") values (4, 32);

--construccion
insert into public.construccion ("cons_fecha_ini","fk_avion") values ('08-06-2024',1);
insert into public.construccion ("cons_fecha_ini","fk_avion") values ('05-07-2024',2);
insert into public.construccion ("cons_fecha_ini","fk_avion") values ('03-03-2024',3);
insert into public.construccion ("cons_fecha_ini","fk_avion") values ('09-04-2024',4);

--insertar despues de construccion
insert into public."Equipo" (fk_construccion) values (1);
insert into public."Equipo" (fk_construccion) values (2);
insert into public."Equipo" (fk_construccion) values (3);
insert into public."Equipo" (fk_construccion) values (4);
insert into public."Equipo" (fk_construccion) values (1);
insert into public."Equipo" (fk_construccion) values (2);
insert into public."Equipo" (fk_construccion) values (3);
insert into public."Equipo" (fk_construccion) values (4);
insert into public."Equipo" (fk_construccion) values (1);
insert into public."Equipo" (fk_construccion) values (2);

--insertar despues de equipo y construccion
INSERT INTO trabajo_equipo (te_tiempo_estim, te_nombre_trabajo, fk_equipo) VALUES ('2026-01-01',  'Montaje de alas', 1);
INSERT INTO trabajo_equipo (te_tiempo_estim, te_nombre_trabajo, fk_equipo) VALUES ('2020-01-01',  'Instalación de motores', 2);
INSERT INTO trabajo_equipo (te_tiempo_estim, te_nombre_trabajo, fk_equipo) VALUES ('2020-01-01',  'Montaje de fuselaje', 3);
INSERT INTO trabajo_equipo (te_tiempo_estim, te_nombre_trabajo, fk_equipo) VALUES ('2020-01-01',  'Instalación de sistemas eléctricos', 4);
INSERT INTO trabajo_equipo (te_tiempo_estim, te_nombre_trabajo, fk_equipo) VALUES ('2020-01-01',  'Pintura y acabado', 5);
INSERT INTO trabajo_equipo (te_tiempo_estim, te_nombre_trabajo, fk_equipo) VALUES ('2020-01-01',  'Pruebas de vuelo', 6);
INSERT INTO trabajo_equipo (te_tiempo_estim, te_nombre_trabajo, fk_equipo) VALUES ('2020-01-01',  'Montaje de tren de aterrizaje', 7);
INSERT INTO trabajo_equipo (te_tiempo_estim, te_nombre_trabajo, fk_equipo) VALUES ('2020-01-01',  'Instalación de sistemas hidráulicos', 8);
INSERT INTO trabajo_equipo (te_tiempo_estim, te_nombre_trabajo, fk_equipo) VALUES ('2020-01-01',  'Montaje de cabina', 9);
INSERT INTO trabajo_equipo (te_tiempo_estim, te_nombre_trabajo, fk_equipo) VALUES ('2020-01-01',  'Control de calidad', 10);

--detalle_compra
insert into public.detalle_compra (detcomp_cantidad, fk_compra, fk_material) values (300, 1, 1);
insert into public.detalle_compra (detcomp_cantidad, fk_compra, fk_material) values (300, 2, 2);
insert into public.detalle_compra (detcomp_cantidad, fk_compra, fk_material) values (300, 3, 3);
insert into public.detalle_compra (detcomp_cantidad, fk_compra, fk_material) values (300, 4, 4);
insert into public.detalle_compra (detcomp_cantidad, fk_compra, fk_material) values (300, 5, 5);
insert into public.detalle_compra (detcomp_cantidad, fk_compra, fk_material) values (300, 6, 6);
insert into public.detalle_compra (detcomp_cantidad, fk_compra, fk_material) values (300, 7, 7);
insert into public.detalle_compra (detcomp_cantidad, fk_compra, fk_material) values (300, 8, 8);
insert into public.detalle_compra (detcomp_cantidad, fk_compra, fk_material) values (300, 9, 9);
insert into public.detalle_compra (detcomp_cantidad, fk_compra, fk_material) values (300, 10, 10);
insert into public.detalle_compra (detcomp_cantidad, fk_compra, fk_material) values (300, 11, 1);
insert into public.detalle_compra (detcomp_cantidad, fk_compra, fk_material) values (300, 12, 2);
insert into public.detalle_compra (detcomp_cantidad, fk_compra, fk_material) values (300, 13, 3);
insert into public.detalle_compra (detcomp_cantidad, fk_compra, fk_material) values (300, 14, 4);
insert into public.detalle_compra (detcomp_cantidad, fk_compra, fk_material) values (300, 15, 5);
insert into public.detalle_compra (detcomp_cantidad, fk_compra, fk_material) values (300, 16, 6);
insert into public.detalle_compra (detcomp_cantidad, fk_compra, fk_material) values (300, 17, 7);
insert into public.detalle_compra (detcomp_cantidad, fk_compra, fk_material) values (300, 18, 8);
insert into public.detalle_compra (detcomp_cantidad, fk_compra, fk_material) values (300, 19, 9);
insert into public.detalle_compra (detcomp_cantidad, fk_compra, fk_material) values (300, 20, 10);
insert into public.detalle_compra (detcomp_cantidad, fk_compra, fk_material) values (300, 21, 1);
insert into public.detalle_compra (detcomp_cantidad, fk_compra, fk_material) values (300, 22, 2);
insert into public.detalle_compra (detcomp_cantidad, fk_compra, fk_material) values (300, 23, 3);
insert into public.detalle_compra (detcomp_cantidad, fk_compra, fk_material) values (300, 24, 4);
insert into public.detalle_compra (detcomp_cantidad, fk_compra, fk_material) values (300, 25, 5);
insert into public.detalle_compra (detcomp_cantidad, fk_compra, fk_material) values (300, 26, 6);
insert into public.detalle_compra (detcomp_cantidad, fk_compra, fk_material) values (300, 27, 7);
insert into public.detalle_compra (detcomp_cantidad, fk_compra, fk_material) values (300, 28, 8);
insert into public.detalle_compra (detcomp_cantidad, fk_compra, fk_material) values (300, 29, 9);
insert into public.detalle_compra (detcomp_cantidad, fk_compra, fk_material) values (300, 30, 10);
insert into public.detalle_compra (detcomp_cantidad, fk_compra, fk_material) values (300, 31, 1);
insert into public.detalle_compra (detcomp_cantidad, fk_compra, fk_material) values (300, 32, 2);
insert into public.detalle_compra (detcomp_cantidad, fk_compra, fk_material) values (300, 33, 3);
insert into public.detalle_compra (detcomp_cantidad, fk_compra, fk_material) values (300, 34, 4);
insert into public.detalle_compra (detcomp_cantidad, fk_compra, fk_material) values (300, 35, 5);
insert into public.detalle_compra (detcomp_cantidad, fk_compra, fk_material) values (300, 36, 6);
insert into public.detalle_compra (detcomp_cantidad, fk_compra, fk_material) values (300, 37, 7);
insert into public.detalle_compra (detcomp_cantidad, fk_compra, fk_material) values (300, 38, 8);
insert into public.detalle_compra (detcomp_cantidad, fk_compra, fk_material) values (300, 39, 9);
insert into public.detalle_compra (detcomp_cantidad, fk_compra, fk_material) values (300, 40, 10);
insert into public.detalle_compra (detcomp_cantidad, fk_compra, fk_material) values (300, 41, 1);
insert into public.detalle_compra (detcomp_cantidad, fk_compra, fk_material) values (300, 42, 2);
insert into public.detalle_compra (detcomp_cantidad, fk_compra, fk_material) values (300, 43, 3);
insert into public.detalle_compra (detcomp_cantidad, fk_compra, fk_material) values (300, 44, 4);
insert into public.detalle_compra (detcomp_cantidad, fk_compra, fk_material) values (300, 45, 5);
insert into public.detalle_compra (detcomp_cantidad, fk_compra, fk_material) values (300, 46, 6);
insert into public.detalle_compra (detcomp_cantidad, fk_compra, fk_material) values (300, 47, 7);
insert into public.detalle_compra (detcomp_cantidad, fk_compra, fk_material) values (300, 48, 8);
insert into public.detalle_compra (detcomp_cantidad, fk_compra, fk_material) values (300, 49, 9);
insert into public.detalle_compra (detcomp_cantidad, fk_compra, fk_material) values (300, 50, 10);

--equi_per
insert into public.equi_per (fk_equipo, fk_personal) values (1,93);
insert into public.equi_per (fk_equipo, fk_personal) values (2,94);
insert into public.equi_per (fk_equipo, fk_personal) values (3,95);
insert into public.equi_per (fk_equipo, fk_personal) values (4,96);
insert into public.equi_per (fk_equipo, fk_personal) values (5,97);
insert into public.equi_per (fk_equipo, fk_personal) values (6,98);
insert into public.equi_per (fk_equipo, fk_personal) values (7,99);
insert into public.equi_per (fk_equipo, fk_personal) values (8,100);
insert into public.equi_per (fk_equipo, fk_personal) values (9,101);
insert into public.equi_per (fk_equipo, fk_personal) values (10,102);

--est_mat
insert into public.est_mat (fk_estatus, fk_mat) values (7,1);
insert into public.est_mat (fk_estatus, fk_mat) values (7,2);
insert into public.est_mat (fk_estatus, fk_mat) values (7,3);
insert into public.est_mat (fk_estatus, fk_mat) values (7,4);
insert into public.est_mat (fk_estatus, fk_mat) values (7,5);
insert into public.est_mat (fk_estatus, fk_mat) values (7,6);
insert into public.est_mat (fk_estatus, fk_mat) values (7,7);
insert into public.est_mat (fk_estatus, fk_mat) values (7,8);
insert into public.est_mat (fk_estatus, fk_mat) values (7,9);
insert into public.est_mat (fk_estatus, fk_mat) values (7,10);

--est_pie
insert into public.est_pie (fk_estatus, fk_pie) values (7,1);
insert into public.est_pie (fk_estatus, fk_pie) values (7,2);
insert into public.est_pie (fk_estatus, fk_pie) values (7,3);
insert into public.est_pie (fk_estatus, fk_pie) values (7,4);
insert into public.est_pie (fk_estatus, fk_pie) values (7,5);
insert into public.est_pie (fk_estatus, fk_pie) values (7,6);
insert into public.est_pie (fk_estatus, fk_pie) values (7,7);
insert into public.est_pie (fk_estatus, fk_pie) values (7,8);
insert into public.est_pie (fk_estatus, fk_pie) values (7,9);
insert into public.est_pie (fk_estatus, fk_pie) values (7,10);

--est_pru
insert into public.est_pru (fk_est, fk_pru) values (3,1);
insert into public.est_pru (fk_est, fk_pru) values (3,2);
insert into public.est_pru (fk_est, fk_pru) values (3,3);
insert into public.est_pru (fk_est, fk_pru) values (3,4);
insert into public.est_pru (fk_est, fk_pru) values (3,5);
insert into public.est_pru (fk_est, fk_pru) values (3,6);
insert into public.est_pru (fk_est, fk_pru) values (3,7);
insert into public.est_pru (fk_est, fk_pru) values (3,8);
insert into public.est_pru (fk_est, fk_pru) values (3,9);
insert into public.est_pru (fk_est, fk_pru) values (3,10);

--maquinaria
insert into maquinaria (maq_descripcion, "fk_Tmaquina") values ('Maquinaria utilizada para el mantenimiento general de equipos y sistemas.', 1);
insert into maquinaria (maq_descripcion, "fk_Tmaquina") values ('Tornos utilizados para dar forma a materiales mediante rotación.', 2);
insert into maquinaria (maq_descripcion, "fk_Tmaquina") values ('Máquinas de corte que utilizan láser para realizar cortes precisos.', 3);
insert into maquinaria (maq_descripcion, "fk_Tmaquina") values ('Robots industriales empleados en procesos automatizados de manufactura.', 4);
insert into maquinaria (maq_descripcion, "fk_Tmaquina") values ('Autoclaves utilizados para la esterilización mediante vapor a alta presión.', 5);
insert into maquinaria (maq_descripcion, "fk_Tmaquina") values ('Grúas utilizadas para levantar y mover cargas pesadas.', 6);
insert into maquinaria (maq_descripcion, "fk_Tmaquina") values ('Plataformas elevadoras para trabajos en altura de manera segura.', 7);
insert into maquinaria (maq_descripcion, "fk_Tmaquina") values ('Taladros utilizados para perforar materiales como metal, madera y plástico.', 8);
insert into maquinaria (maq_descripcion, "fk_Tmaquina") values ('Equipos de inspección para verificar la calidad y precisión de los productos.', 9);
insert into maquinaria (maq_descripcion, "fk_Tmaquina") values ('Pistolas de remachado utilizadas para unir piezas mediante remaches.', 10);

--maq_cons
insert into maq_cons (fk_maqui, fk_construc) values (1,1);
insert into maq_cons (fk_maqui, fk_construc) values (2,2);
insert into maq_cons (fk_maqui, fk_construc) values (3,3);
insert into maq_cons (fk_maqui, fk_construc) values (4,4);
insert into maq_cons (fk_maqui, fk_construc) values (5,1);
insert into maq_cons (fk_maqui, fk_construc) values (6,2);
insert into maq_cons (fk_maqui, fk_construc) values (7,3);
insert into maq_cons (fk_maqui, fk_construc) values (8,4);
insert into maq_cons (fk_maqui, fk_construc) values (9,1);
insert into maq_cons (fk_maqui, fk_construc) values (10,2);

--Maq_Mod
insert into public."Maq_Mod" ("fk_tpMaquinaria", "fk_Modelo") values (8, 4);
insert into public."Maq_Mod" ("fk_tpMaquinaria", "fk_Modelo") values (4, 14);
insert into public."Maq_Mod" ("fk_tpMaquinaria", "fk_Modelo") values (6, 3);
insert into public."Maq_Mod" ("fk_tpMaquinaria", "fk_Modelo") values (8, 12);
insert into public."Maq_Mod" ("fk_tpMaquinaria", "fk_Modelo") values (1, 7);
insert into public."Maq_Mod" ("fk_tpMaquinaria", "fk_Modelo") values (3, 5);
insert into public."Maq_Mod" ("fk_tpMaquinaria", "fk_Modelo") values (10, 5);
insert into public."Maq_Mod" ("fk_tpMaquinaria", "fk_Modelo") values (5, 11);
insert into public."Maq_Mod" ("fk_tpMaquinaria", "fk_Modelo") values (4, 10);
insert into public."Maq_Mod" ("fk_tpMaquinaria", "fk_Modelo") values (9, 7);
insert into public."Maq_Mod" ("fk_tpMaquinaria", "fk_Modelo") values (10, 10);
insert into public."Maq_Mod" ("fk_tpMaquinaria", "fk_Modelo") values (7, 3);
insert into public."Maq_Mod" ("fk_tpMaquinaria", "fk_Modelo") values (4, 8);
insert into public."Maq_Mod" ("fk_tpMaquinaria", "fk_Modelo") values (3, 12);
insert into public."Maq_Mod" ("fk_tpMaquinaria", "fk_Modelo") values (1, 4);
insert into public."Maq_Mod" ("fk_tpMaquinaria", "fk_Modelo") values (7, 7);
insert into public."Maq_Mod" ("fk_tpMaquinaria", "fk_Modelo") values (2, 4);
insert into public."Maq_Mod" ("fk_tpMaquinaria", "fk_Modelo") values (7, 1);
insert into public."Maq_Mod" ("fk_tpMaquinaria", "fk_Modelo") values (6, 10);
insert into public."Maq_Mod" ("fk_tpMaquinaria", "fk_Modelo") values (10, 7);
insert into public."Maq_Mod" ("fk_tpMaquinaria", "fk_Modelo") values (9, 12);
insert into public."Maq_Mod" ("fk_tpMaquinaria", "fk_Modelo") values (7, 13);
insert into public."Maq_Mod" ("fk_tpMaquinaria", "fk_Modelo") values (5, 9);
insert into public."Maq_Mod" ("fk_tpMaquinaria", "fk_Modelo") values (2, 10);
insert into public."Maq_Mod" ("fk_tpMaquinaria", "fk_Modelo") values (2, 12);
insert into public."Maq_Mod" ("fk_tpMaquinaria", "fk_Modelo") values (1, 10);
insert into public."Maq_Mod" ("fk_tpMaquinaria", "fk_Modelo") values (8, 11);
insert into public."Maq_Mod" ("fk_tpMaquinaria", "fk_Modelo") values (4, 5);
insert into public."Maq_Mod" ("fk_tpMaquinaria", "fk_Modelo") values (8, 13);
insert into public."Maq_Mod" ("fk_tpMaquinaria", "fk_Modelo") values (1, 1);

--area_cons
insert into area_cons (fk_area, fk_const) values (1, 1);
insert into area_cons (fk_area, fk_const) values (2, 1);
insert into area_cons (fk_area, fk_const) values (3, 1);
insert into area_cons (fk_area, fk_const) values (4, 1);
insert into area_cons (fk_area, fk_const) values (5, 1);
insert into area_cons (fk_area, fk_const) values (6, 1);
insert into area_cons (fk_area, fk_const) values (7, 1);
insert into area_cons (fk_area, fk_const) values (8, 1);
insert into area_cons (fk_area, fk_const) values (9, 1);
insert into area_cons (fk_area, fk_const) values (10, 1);
insert into area_cons (fk_area, fk_const) values (11, 1);
insert into area_cons (fk_area, fk_const) values (12, 1);
insert into area_cons (fk_area, fk_const) values (13, 1);
insert into area_cons (fk_area, fk_const) values (14, 1);
insert into area_cons (fk_area, fk_const) values (15, 1);
insert into area_cons (fk_area, fk_const) values (16, 1);
insert into area_cons (fk_area, fk_const) values (17, 1);
insert into area_cons (fk_area, fk_const) values (18, 1);
insert into area_cons (fk_area, fk_const) values (19, 1);
insert into area_cons (fk_area, fk_const) values (20, 1);
insert into area_cons (fk_area, fk_const) values (1, 2);
insert into area_cons (fk_area, fk_const) values (2, 2);
insert into area_cons (fk_area, fk_const) values (3, 2);
insert into area_cons (fk_area, fk_const) values (4, 2);
insert into area_cons (fk_area, fk_const) values (5, 2);
insert into area_cons (fk_area, fk_const) values (6, 2);
insert into area_cons (fk_area, fk_const) values (7, 2);
insert into area_cons (fk_area, fk_const) values (8, 2);
insert into area_cons (fk_area, fk_const) values (9, 2);
insert into area_cons (fk_area, fk_const) values (10, 2);
insert into area_cons (fk_area, fk_const) values (11, 2);
insert into area_cons (fk_area, fk_const) values (12, 2);
insert into area_cons (fk_area, fk_const) values (13, 2);
insert into area_cons (fk_area, fk_const) values (14, 2);
insert into area_cons (fk_area, fk_const) values (15, 2);
insert into area_cons (fk_area, fk_const) values (16, 2);
insert into area_cons (fk_area, fk_const) values (17, 2);
insert into area_cons (fk_area, fk_const) values (18, 2);
insert into area_cons (fk_area, fk_const) values (19, 2);
insert into area_cons (fk_area, fk_const) values (20, 2);
insert into area_cons (fk_area, fk_const) values (1, 3);
insert into area_cons (fk_area, fk_const) values (2, 3);
insert into area_cons (fk_area, fk_const) values (3, 3);
insert into area_cons (fk_area, fk_const) values (4, 3);
insert into area_cons (fk_area, fk_const) values (5, 3);
insert into area_cons (fk_area, fk_const) values (6, 3);
insert into area_cons (fk_area, fk_const) values (7, 3);
insert into area_cons (fk_area, fk_const) values (8, 3);
insert into area_cons (fk_area, fk_const) values (9, 3);
insert into area_cons (fk_area, fk_const) values (10, 3);
insert into area_cons (fk_area, fk_const) values (11, 3);
insert into area_cons (fk_area, fk_const) values (12, 3);
insert into area_cons (fk_area, fk_const) values (13, 3);
insert into area_cons (fk_area, fk_const) values (14, 3);
insert into area_cons (fk_area, fk_const) values (15, 3);
insert into area_cons (fk_area, fk_const) values (16, 3);
insert into area_cons (fk_area, fk_const) values (17, 3);
insert into area_cons (fk_area, fk_const) values (18, 3);
insert into area_cons (fk_area, fk_const) values (19, 3);
insert into area_cons (fk_area, fk_const) values (20, 3);
insert into area_cons (fk_area, fk_const) values (1, 4);
insert into area_cons (fk_area, fk_const) values (2, 4);
insert into area_cons (fk_area, fk_const) values (3, 4);
insert into area_cons (fk_area, fk_const) values (4, 4);
insert into area_cons (fk_area, fk_const) values (5, 4);
insert into area_cons (fk_area, fk_const) values (6, 4);
insert into area_cons (fk_area, fk_const) values (7, 4);
insert into area_cons (fk_area, fk_const) values (8, 4);
insert into area_cons (fk_area, fk_const) values (9, 4);
insert into area_cons (fk_area, fk_const) values (10, 4);
insert into area_cons (fk_area, fk_const) values (11, 4);
insert into area_cons (fk_area, fk_const) values (12, 4);
insert into area_cons (fk_area, fk_const) values (13, 4);
insert into area_cons (fk_area, fk_const) values (14, 4);
insert into area_cons (fk_area, fk_const) values (15, 4);
insert into area_cons (fk_area, fk_const) values (16, 4);
insert into area_cons (fk_area, fk_const) values (17, 4);
insert into area_cons (fk_area, fk_const) values (18, 4);
insert into area_cons (fk_area, fk_const) values (19, 4);
insert into area_cons (fk_area, fk_const) values (20, 4);

--cons_per
insert into public.cons_per (consper_fechasig_ini, fk_construccion, fk_personal) values ('08-06-2024', 1, 93);
insert into public.cons_per (consper_fechasig_ini, fk_construccion, fk_personal) values ('05-01-2025', 4, 94);
insert into public.cons_per (consper_fechasig_ini, fk_construccion, fk_personal) values ('05-01-2024', 2, 95);
insert into public.cons_per (consper_fechasig_ini, fk_construccion, fk_personal) values ('12-02-2025', 1, 96);
insert into public.cons_per (consper_fechasig_ini, fk_construccion, fk_personal) values ('12-08-2024', 3, 97);
insert into public.cons_per (consper_fechasig_ini, fk_construccion, fk_personal) values ('04-20-2025', 2, 98);
insert into public.cons_per (consper_fechasig_ini, fk_construccion, fk_personal) values ('11-12-2024', 4, 99);
insert into public.cons_per (consper_fechasig_ini, fk_construccion, fk_personal) values ('10-10-2024', 1, 100);
insert into public.cons_per (consper_fechasig_ini, fk_construccion, fk_personal) values ('07-13-2025', 3, 101);
insert into public.cons_per (consper_fechasig_ini, fk_construccion, fk_personal) values ('08-11-2024', 2, 102);
insert into public.cons_per (consper_fechasig_ini, fk_construccion, fk_personal) values ('09-12-2024', 3, 103);

--Cons_Pi
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (1, 1);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (1, 2);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (1, 3);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (1, 4);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (1, 5);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (1, 6);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (1, 7);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (1, 8);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (1, 9);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (1, 10);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (1, 11);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (1, 12);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (1, 13);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (1, 14);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (1, 15);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (1, 16);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (1, 17);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (1, 18);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (1, 19);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (1, 20);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (1, 21);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (1, 22);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (1, 23);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (1, 24);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (1, 25);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (1, 26);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (1, 27);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (1, 28);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (1, 29);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (1, 30);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (1, 31);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (1, 32);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (2, 1);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (2, 2);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (2, 3);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (2, 4);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (2, 5);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (2, 6);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (2, 7);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (2, 8);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (2, 9);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (2, 10);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (2, 11);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (2, 12);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (2, 13);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (2, 14);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (2, 15);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (2, 16);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (2, 17);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (2, 18);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (2, 19);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (2, 20);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (2, 21);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (2, 22);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (2, 23);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (2, 24);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (2, 25);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (2, 26);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (2, 27);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (2, 28);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (2, 29);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (2, 30);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (2, 31);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (2, 32);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (3, 1);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (3, 2);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (3, 3);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (3, 4);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (3, 5);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (3, 6);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (3, 7);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (3, 8);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (3, 9);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (3, 10);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (3, 11);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (3, 12);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (3, 13);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (3, 14);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (3, 15);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (3, 16);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (3, 17);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (3, 18);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (3, 19);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (3, 20);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (3, 21);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (3, 22);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (3, 23);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (3, 24);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (3, 25);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (3, 26);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (3, 27);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (3, 28);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (3, 29);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (3, 30);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (3, 31);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (3, 32);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (4, 1);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (4, 2);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (4, 3);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (4, 4);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (4, 5);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (4, 6);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (4, 7);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (4, 8);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (4, 9);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (4, 10);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (4, 11);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (4, 12);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (4, 13);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (4, 14);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (4, 15);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (4, 16);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (4, 17);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (4, 18);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (4, 19);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (4, 20);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (4, 21);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (4, 22);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (4, 23);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (4, 24);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (4, 25);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (4, 26);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (4, 27);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (4, 28);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (4, 29);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (4, 30);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (4, 31);
insert into public."Cons_Pi" (fk_construccion, fk_pieza) values (4, 32);

--per_pru
insert into per_pru (fk_prueba, per_pru_fecha_ini, fk_personal, "fk_TPiezaPru1", "fk_TPiezaPru2") values (1, '01-01-2024', 93, 1, 1);
insert into per_pru (fk_prueba, per_pru_fecha_ini, fk_personal, "fk_TPiezaPru1", "fk_TPiezaPru2") values (1, '01-01-2024', 94, 2, 2);
insert into per_pru (fk_prueba, per_pru_fecha_ini, fk_personal, "fk_TPiezaPru1", "fk_TPiezaPru2") values (1, '01-01-2024', 95, 3, 3);
insert into per_pru (fk_prueba, per_pru_fecha_ini, fk_personal, "fk_TPiezaPru1", "fk_TPiezaPru2") values (1, '01-01-2024', 96, 2, 1);
insert into per_pru (fk_prueba, per_pru_fecha_ini, fk_personal, "fk_TPiezaPru1", "fk_TPiezaPru2") values (1, '01-01-2024', 97, 2, 2);
insert into per_pru (fk_prueba, per_pru_fecha_ini, fk_personal, "fk_TPiezaPru1", "fk_TPiezaPru2") values (1, '01-01-2024', 98, 2, 3);
insert into per_pru (fk_prueba, per_pru_fecha_ini, fk_personal, "fk_TPiezaPru1", "fk_TPiezaPru2") values (1, '01-01-2024', 99, 3, 1);
insert into per_pru (fk_prueba, per_pru_fecha_ini, fk_personal, "fk_TPiezaPru1", "fk_TPiezaPru2") values (1, '01-01-2024', 100, 3, 2);
insert into per_pru (fk_prueba, per_pru_fecha_ini, fk_personal, "fk_TPiezaPru1", "fk_TPiezaPru2") values (1, '01-01-2024', 101, 3, 3);
insert into per_pru (fk_prueba, per_pru_fecha_ini, fk_personal, "fk_TPiezaPru1", "fk_TPiezaPru2") values (1, '01-01-2024', 102, 4, 4);

insert into per_pru (fk_prueba, per_pru_fecha_ini, fk_personal, "fk_TMaterialPru1", "fk_TMaterialPru2") values (1, '01-01-2024', 103, 1, 1);
insert into per_pru (fk_prueba, per_pru_fecha_ini, fk_personal, "fk_TMaterialPru1", "fk_TMaterialPru2") values (1, '01-01-2024', 104, 2, 2);
insert into per_pru (fk_prueba, per_pru_fecha_ini, fk_personal, "fk_TMaterialPru1", "fk_TMaterialPru2") values (1, '01-01-2024', 105, 3, 3);
insert into per_pru (fk_prueba, per_pru_fecha_ini, fk_personal, "fk_TMaterialPru1", "fk_TMaterialPru2") values (1, '01-01-2024', 106, 4, 4);
insert into per_pru (fk_prueba, per_pru_fecha_ini, fk_personal, "fk_TMaterialPru1", "fk_TMaterialPru2") values (1, '01-01-2024', 107, 5, 5);
insert into per_pru (fk_prueba, per_pru_fecha_ini, fk_personal, "fk_TMaterialPru1", "fk_TMaterialPru2") values (1, '01-01-2024', 108, 6, 6);
insert into per_pru (fk_prueba, per_pru_fecha_ini, fk_personal, "fk_TMaterialPru1", "fk_TMaterialPru2") values (1, '01-01-2024', 109, 7, 7);
insert into per_pru (fk_prueba, per_pru_fecha_ini, fk_personal, "fk_TMaterialPru1", "fk_TMaterialPru2") values (1, '01-01-2024', 110, 8, 8);
insert into per_pru (fk_prueba, per_pru_fecha_ini, fk_personal, "fk_TMaterialPru1", "fk_TMaterialPru2") values (1, '01-01-2024', 111, 9, 9);
insert into per_pru (fk_prueba, per_pru_fecha_ini, fk_personal, "fk_TMaterialPru1", "fk_TMaterialPru2") values (1, '01-01-2024', 112, 10, 10);

insert into per_pru (fk_prueba, per_pru_fecha_ini, fk_personal, "fk_TAvionPru1", "fk_TAvionPru2") values (1, '01-01-2024', 113, 1, 1);
insert into per_pru (fk_prueba, per_pru_fecha_ini, fk_personal, "fk_TAvionPru1", "fk_TAvionPru2") values (1, '01-01-2024', 114, 1, 2);
insert into per_pru (fk_prueba, per_pru_fecha_ini, fk_personal, "fk_TAvionPru1", "fk_TAvionPru2") values (1, '01-01-2024', 115, 1, 3);
insert into per_pru (fk_prueba, per_pru_fecha_ini, fk_personal, "fk_TAvionPru1", "fk_TAvionPru2") values (1, '01-01-2024', 116, 1, 4);
insert into per_pru (fk_prueba, per_pru_fecha_ini, fk_personal, "fk_TAvionPru1", "fk_TAvionPru2") values (1, '01-01-2024', 117, 1, 5);
insert into per_pru (fk_prueba, per_pru_fecha_ini, fk_personal, "fk_TAvionPru1", "fk_TAvionPru2") values (1, '01-01-2024', 118, 1, 6);
insert into per_pru (fk_prueba, per_pru_fecha_ini, fk_personal, "fk_TAvionPru1", "fk_TAvionPru2") values (1, '01-01-2024', 119, 2, 7);
insert into per_pru (fk_prueba, per_pru_fecha_ini, fk_personal, "fk_TAvionPru1", "fk_TAvionPru2") values (1, '01-01-2024', 120, 2, 8);
insert into per_pru (fk_prueba, per_pru_fecha_ini, fk_personal, "fk_TAvionPru1", "fk_TAvionPru2") values (1, '01-01-2024', 121, 2, 9);
insert into per_pru (fk_prueba, per_pru_fecha_ini, fk_personal, "fk_TAvionPru1", "fk_TAvionPru2") values (1, '01-01-2024', 122, 2, 10);
