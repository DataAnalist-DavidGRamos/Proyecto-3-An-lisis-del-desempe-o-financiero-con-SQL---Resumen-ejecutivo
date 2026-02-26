/*
==================================================
PROYECTO: Análisis Financiero Adventure Works
ETAPA: 06 - Cálculo de KPIs Financieros
AUTOR: [Tu Nombre]
FECHA: Febrero 2026
DESCRIPCIÓN: Calcular beneficio bruto, margen porcentual
             y ROI por país/territorio
==================================================
*/

WITH ingresos_costos_pais AS (
    SELECT
        pais,
        clave_territorio,
        SUM(ingreso_total)::integer AS ingresos,
        SUM(costo_total)::integer AS costos
    FROM ventas_clean
    GROUP BY pais, clave_territorio
),
gastos_campana_pais AS (
    SELECT
        clave_territorio,
        SUM(costo_campana)::integer AS costo_campana
    FROM campanas
    GROUP BY clave_territorio
)

SELECT
    p.pais,
    p.clave_territorio,
    p.ingresos,
    p.costos,
    COALESCE(c.costo_campana, 0) AS costo_campana,
    -- Beneficio bruto
    (p.ingresos - p.costos) AS beneficio_bruto,
    -- Margen porcentual
    ROUND(((p.ingresos - p.costos) * 100.0) / NULLIF(p.ingresos, 0), 2) AS margen_pct,
    -- ROI porcentual
    ROUND(((p.ingresos - p.costos) * 100.0) / NULLIF(c.costo_campana, 0), 2) AS roi_pct
FROM
    ingresos_costos_pais p
LEFT JOIN
    gastos_campana_pais c ON p.clave_territorio = c.clave_territorio
ORDER BY
    p.clave_territorio;

/*
Resultado:
pais            | clave_territorio | ingresos | costos  | costo_campana | beneficio_bruto | margen_pct | roi_pct
----------------|------------------|----------|---------|---------------|-----------------|------------|--------
United States   | 1                | 3353940  | 1899471 | 1920000       | 1454469         | 43.37      | 75.75
Canada          | 6                | 710205   | 392326  | 1824000       | 317879          | 44.76      | 17.43
France          | 7                | 924317   | 527797  | 2208000       | 396520          | 42.90      | 17.96
Germany         | 8                | 1071460  | 611295  | 2265600       | 460165          | 42.95      | 20.31
Australia       | 9                | 2532004  | 1474958 | 2150400       | 1057046         | 41.75      | 49.16
United Kingdom  | 10               | 1189637  | 681509  | 2304000       | 508128          | 42.71      | 22.05
*/