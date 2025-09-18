-- insercion datos

USE CIVS_BIENESTAR

-- CIVILIZACIONES
INSERT INTO CIVILIZACIONES (ID_CIVILIZACION, NOMBRE, TIPO, AÑO_INICIO, AÑO_FIN, CONTINENTE_PRINCIPAL) VALUES
(1, 'Imperio Romano', 'Imperio', -27, 476, 'Europa'),
(2, 'Dinastía Tang', 'Reino', 618, 907, 'Asia'),
(3, 'Imperio Inca', 'Imperio', 1438, 1533, 'América del Sur'),
(4, 'Suecia Moderna', 'Estado Nación', 1905, 2025, 'Europa'),
(5, 'Japón Contemporáneo', 'Estado Nación', 1945, 2025, 'Asia'),
(6, 'Imperio Otomano', 'Imperio', 1299, 1922, 'Asia / Europa');
(7, 'Antiguo Egipto', 'Reino', -3100, -30, 'África'),
(8, 'Imperio Persa Aqueménida', 'Imperio', -550, -330, 'Asia'),
(9, 'Imperio Mali', 'Imperio', 1235, 1600, 'África'),
(10, 'Imperio Bizantino', 'Imperio', 330, 1453, 'Europa / Asia');

-- POBLACION
INSERT INTO POBLACION (ID_POBLACION, ID_CIVILIZACION, AÑO_ESTIMADO, POBLACION_APROXIMADA) VALUES
(1, 1, 100, 56000000),
(2, 2, 750, 80000000),
(3, 3, 1500, 12000000),
(4, 4, 2020, 10000000),
(5, 5, 2020, 125000000),
(6, 6, 1600, 30000000);
(7, 7, -1500, 1500000),     
(8, 8, -500, 17500000),      
(9, 9, 1350, 20000000),      
(10, 10, 1000, 12000000);    


-- GOBERNANZA
INSERT INTO GOBERNANZA (ID_GOBERNANZA, ID_CIVILIZACION, TIPO_SISTEMA, GRADO_DE_LIBERTAD, PARTICIPACION_CIUDADANA) VALUES
(1, 1, 'Monarquía imperial', 2, 'Baja'),
(2, 2, 'Monarquía burocrática', 4, 'Media'),
(3, 3, 'Teocracia imperial', 1, 'Muy baja'),
(4, 4, 'Democracia parlamentaria', 9, 'Alta'),
(5, 5, 'Monarquía constitucional', 8, 'Alta'),
(6, 6, 'Sultanato centralizado', 3, 'Baja');
(7, 7, 'Monarquía teocrática', 2, 'Muy baja'),     
(8, 8, 'Monarquía absoluta', 3, 'Baja'),           
(9, 9, 'Monarquía islámica', 4, 'Media'),             
(10, 10, 'Monarquía burocrática', 5, 'Media');

-- INDICADORES BIENESTAR
INSERT INTO INDICADORES_BIENESTAR (ID_INDICADOR, NOMBRE, UNIDAD_MEDIDA, DESCRIPCION) VALUES
(1, 'Esperanza de vida', 'años', 'Promedio de años que vive una persona al nacer.'),
(2, 'Alfabetización', '%', 'Porcentaje de personas que saben leer y escribir.'),
(3, 'Consumo calórico diario', 'kcal', 'Promedio de calorías consumidas por persona por día.'),
(4, 'Acceso al agua potable', '%', 'Porcentaje de la población con acceso a agua segura.');

-- DATOS BIENESTAR
INSERT INTO DATOS_BIENESTAR (ID_DATO, ID_CIVILIZACION, ID_INDICADOR, VALOR, AÑO_ESTIMADO, FUENTE) VALUES
(1, 1, 1, 35.0, 100, 'Estimación histórica'),
(2, 1, 2, 15.0, 100, 'Estimación histórica'),
(3, 1, 3, 2000.0, 100, 'Estimación histórica'),
(4, 1, 4, 10.0, 100, 'Estimación histórica'),
(5, 4, 1, 82.3, 2020, 'OECD'),
(6, 4, 2, 99.0, 2020, 'OECD'),
(7, 4, 3, 3200.0, 2020, 'OECD'),
(8, 4, 4, 100.0, 2020, 'OMS'),
(9, 5, 1, 84.5, 2020, 'OCDE'),
(10, 5, 2, 99.5, 2020, 'OCDE'),
(11, 5, 3, 3100.0, 2020, 'FAO'),
(12, 5, 4, 100.0, 2020, 'OMS');
(13, 2, 1, 40.0, 750, 'Estimación histórica'),
(14, 2, 2, 20.0, 750, 'Estimación histórica'),
(15, 2, 3, 1800.0, 750, 'Estimación histórica'),
(16, 2, 4, 15.0, 750, 'Estimación histórica');
(17, 3, 1, 30.0, 1500, 'Estimación histórica'),
(18, 3, 2, 25.0, 1500, 'Estimación histórica'),
(19, 3, 3, 1600.0, 1500, 'Estimación histórica'),
(20, 3, 4, 12.0, 1500, 'Estimación histórica');
(21, 6, 1, 45.0, 1600, 'Estimación histórica'),
(22, 6, 2, 35.0, 1600, 'Estimación histórica'),
(23, 6, 3, 2200.0, 1600, 'Estimación histórica'),
(24, 6, 4, 20.0, 1600, 'Estimación histórica');
(25, 7, 1, 33.0, -1500, 'Estimación histórica'),
(26, 7, 2, 5.0, -1500, 'Estimación histórica'),
(27, 7, 3, 1900.0, -1500, 'Estimación histórica'),
(28, 7, 4, 8.0, -1500, 'Estimación histórica'),
(29, 8, 1, 38.0, -500, 'Estimación histórica'),
(30, 8, 2, 10.0, -500, 'Estimación histórica'),
(31, 8, 3, 2100.0, -500, 'Estimación histórica'),
(32, 8, 4, 14.0, -500, 'Estimación histórica'),
(33, 9, 1, 32.0, 1350, 'Estimación histórica'),
(34, 9, 2, 10.0, 1350, 'Estimación histórica'),
(35, 9, 3, 1700.0, 1350, 'Estimación histórica'),
(36, 9, 4, 10.0, 1350, 'Estimación histórica'),
(37, 10, 1, 40.0, 1000, 'Estimación histórica'),
(38, 10, 2, 20.0, 1000, 'Estimación histórica'),
(39, 10, 3, 2000.0, 1000, 'Estimación histórica'),
(40, 10, 4, 18.0, 1000, 'Estimación histórica');