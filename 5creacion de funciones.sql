-- creacion de funciones

USE CIVS_BIENESTAR;

-- funcion 1


DROP FUNCTION IF EXISTS obtener_valor_indicador;

DELIMITER //

CREATE FUNCTION obtener_valor_indicador(id_civil INT, id_indicador INT)
RETURNS FLOAT
DETERMINISTIC
BEGIN
  DECLARE resultado FLOAT;

  SELECT VALOR
  INTO resultado
  FROM DATOS_BIENESTAR
  WHERE ID_CIVILIZACION = id_civil AND ID_INDICADOR = id_indicador
  LIMIT 1;

  RETURN resultado;
END;
//

DELIMITER ;

SELECT obtener_valor_indicador(1, 2) AS valor;


-- funcion 2

DELIMITER //

CREATE FUNCTION civilizaciones_superan_umbral (
    indicador_id INT,
    umbral FLOAT
)
RETURNS TEXT
DETERMINISTIC
BEGIN
    DECLARE resultado TEXT DEFAULT '';
    
    SELECT GROUP_CONCAT(c.NOMBRE SEPARATOR ', ')
    INTO resultado
    FROM DATOS_BIENESTAR db
    JOIN CIVILIZACIONES c ON db.ID_CIVILIZACION = c.ID_CIVILIZACION
    WHERE db.ID_INDICADOR = indicador_id AND db.VALOR > umbral;

    RETURN resultado;
END //

DELIMITER ;

SELECT civilizaciones_superan_umbral(1, 80.0);