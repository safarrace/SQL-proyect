-- creacion de store procedures, en este caso para mostrar una posible tendencia de un registro.

DELIMITER $$

CREATE PROCEDURE SP_Obtener_Tendencias_Indicador (
    IN civ_id INT,
    IN indicador_id INT
)
BEGIN
    SELECT 
        c.NOMBRE AS CIVILIZACION,
        ib.NOMBRE AS INDICADOR,
        db.AÑO_ESTIMADO,
        db.VALOR,
        ib.UNIDAD_MEDIDA
    FROM DATOS_BIENESTAR db
    JOIN INDICADORES_BIENESTAR ib ON db.ID_INDICADOR = ib.ID_INDICADOR
    JOIN CIVILIZACIONES c ON db.ID_CIVILIZACION = c.ID_CIVILIZACION
    WHERE db.ID_CIVILIZACION = civ_id AND db.ID_INDICADOR = indicador_id
    ORDER BY db.AÑO_ESTIMADO ASC;
END $$

DELIMITER ;

