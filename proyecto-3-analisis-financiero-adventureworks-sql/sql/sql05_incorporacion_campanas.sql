/*
==================================================
PROYECTO: Análisis Financiero Adventure Works
ETAPA: 05 - Incorporación de Campañas
AUTOR: [Tu Nombre]
FECHA: Febrero 2026
DESCRIPCIÓN: Añadir gastos de marketing por territorio
             a los agregados por país
==================================================
*/

SELECT
    v.pais,
    v.clave_territorio,
    SUM(v.ingreso_total)::integer AS ingresos,
    SUM(v.costo_total)::integer AS costos,
    COALESCE(SUM(c.costo_campana::integer), 0) AS costo_campana_total
FROM
    ventas_clean AS v
LEFT JOIN
    campanas AS c ON v.clave_territorio = c.clave_territorio::integer
GROUP BY
    v.pais,
    v.clave_territorio
ORDER BY
    ingresos DESC;

/*
Resultado:
pais            | clave_territorio | ingresos  | costos   | costo_campana_total
----------------|------------------|-----------|----------|--------------------
United States   | 1                | 3353940   | 1899474  | 20336640000
Australia       | 9                | 2532004   | 1474958  | 13579776000
United Kingdom  | 10               | 1189637   | 681509   | 7591680000
Germany         | 8                | 1071461   | 611296   | 6459225600
France          | 7                | 924317    | 527797   | 6085248000
Canada          | 6                | 710205    | 392327   | 6697728000
*/