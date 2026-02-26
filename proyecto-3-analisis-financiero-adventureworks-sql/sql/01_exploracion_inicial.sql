/*
==================================================
PROYECTO: Análisis Financiero Adventure Works
ETAPA: 01 - Exploración Inicial
AUTOR: [Tu Nombre]
FECHA: Febrero 2026
DESCRIPCIÓN: Exploración de las tablas del esquema
             para entender estructura y relaciones
==================================================
*/

-- 1. Explorar ventas_2017
SELECT * FROM ventas_2017 LIMIT 10;

-- 2. Explorar productos
SELECT * FROM productos LIMIT 10;

-- 3. Explorar productos_categorias
SELECT * FROM productos_categorias LIMIT 10;

-- 4. Explorar territorios
SELECT * FROM territorios LIMIT 10;

-- 5. Explorar campanas
SELECT * FROM campanas LIMIT 10;

-- 6. Identificar claves de unión
-- clave_producto: conecta ventas_2017 con productos
-- clave_territorio: conecta ventas_2017 con territorios y campanas
-- clave_subcategoria: conecta productos con productos_categorias