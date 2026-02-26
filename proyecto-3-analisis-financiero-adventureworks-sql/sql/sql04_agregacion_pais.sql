/*
==================================================
PROYECTO: Análisis Financiero Adventure Works
ETAPA: 04 - Agregación por País
AUTOR: [Tu Nombre]
FECHA: Febrero 2026
DESCRIPCIÓN: Calcular ingresos y costos totales
             agregados por país y territorio
==================================================
*/

SELECT
    pais,
    clave_territorio,
    SUM(ingreso_total)::integer AS ingresos,
    SUM(costo_total)::integer AS costos
FROM
    ventas_clean
GROUP BY
    pais,
    clave_territorio
ORDER BY
    ingresos DESC;

/*
Resultado:
pais            | clave_territorio | ingresos  | costos
----------------|------------------|-----------|---------
United States   | 1                | 3353940   | 1899474
Australia       | 9                | 2532004   | 1474958
United Kingdom  | 10               | 1189637   | 681509
Germany         | 8                | 1071461   | 611296
France          | 7                | 924317    | 527797
Canada          | 6                | 710205    | 392327
*/