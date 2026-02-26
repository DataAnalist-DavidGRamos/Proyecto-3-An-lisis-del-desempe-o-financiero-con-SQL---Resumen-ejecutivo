/*
==================================================
PROYECTO: Análisis Financiero Adventure Works
ETAPA: 07 - Validación y QA
AUTOR: [Tu Nombre]
FECHA: Febrero 2026
DESCRIPCIÓN: Validaciones de calidad de datos:
             nulos, valores no válidos y consistencia
==================================================
*/

-- 1. Validación de nulos en claves de ventas_2017
SELECT
    SUM(CASE WHEN numero_pedido IS NULL THEN 1 ELSE 0 END) AS nulos_numero_pedido,
    SUM(CASE WHEN clave_producto IS NULL THEN 1 ELSE 0 END) AS nulos_clave_producto,
    SUM(CASE WHEN clave_territorio IS NULL THEN 1 ELSE 0 END) AS nulos_clave_territorio
FROM ventas_2017;
-- Resultado: 0 nulos en todas las claves

-- 2. Validación de cantidades no válidas (≤ 0)
SELECT
    COUNT(*) AS filas_cantidad_no_valida
FROM ventas_2017
WHERE cantidad_pedido <= 0;
-- Resultado: 0 filas con cantidad no válida

-- 3. Validación de precios negativos en productos
SELECT
    COUNT(*) AS productos_precio_no_valido
FROM productos
WHERE precio_producto < 0;
-- Resultado: 0 productos con precio negativo

-- 4. Validación de consistencia: suma de ingresos por país vs total general
WITH total_general AS (
    SELECT SUM(ingreso_total)::integer AS total_ingresos
    FROM ventas_clean
),
suma_paises AS (
    SELECT SUM(ingresos) AS suma_ingresos_paises
    FROM (
        SELECT SUM(ingreso_total)::integer AS ingresos
        FROM ventas_clean
        GROUP BY pais
    ) AS subquery
)
SELECT
    total_general.total_ingresos,
    suma_paises.suma_ingresos_paises,
    CASE 
        WHEN total_general.total_ingresos = suma_paises.suma_ingresos_paises 
        THEN 'OK - Coinciden' 
        ELSE 'ERROR - No coinciden' 
    END AS validacion
FROM total_general, suma_paises;

-- 5. Verificar productos con margen negativo (costo > precio)
SELECT
    clave_producto,
    nombre_producto,
    precio_producto,
    costo_producto,
    (precio_producto - costo_producto) AS margen_unitario
FROM productos
WHERE precio_producto < costo_producto;
-- Resultado esperado: 0 productos con margen negativo (o listar si existen)