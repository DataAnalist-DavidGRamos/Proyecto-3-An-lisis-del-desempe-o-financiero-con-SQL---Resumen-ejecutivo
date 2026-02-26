/*
==================================================
PROYECTO: Análisis Financiero Adventure Works
ETAPA: 02 - Limpieza y Joins
AUTOR: [Tu Nombre]
FECHA: Febrero 2026
DESCRIPCIÓN: Construcción de tabla base combinando
             ventas, productos, categorías y territorios
             con tratamiento de valores nulos
==================================================
*/

SELECT
    v.numero_pedido,
    v.clave_producto,
    p.nombre_producto,
    pc.clave_categoria,
    -- Reemplazo de NULLs en métricas financieras clave
    COALESCE(p.precio_producto, 0) AS precio_producto,
    COALESCE(v.cantidad_pedido, 0) AS cantidad_pedido,
    COALESCE(p.costo_producto, 0) AS costo_producto,
    t.pais,
    t.continente,
    v.clave_territorio
FROM
    ventas_2017 AS v
INNER JOIN
    productos AS p ON v.clave_producto = p.clave_producto
INNER JOIN
    productos_categorias AS pc ON p.clave_subcategoria = pc.clave_subcategoria
INNER JOIN
    territorios AS t ON v.clave_territorio = t.clave_territorio;