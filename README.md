# 💰 AdventureWorks Financial Analytics - SQL C-Suite
![SQL](https://img.shields.io/badge/SQL-Expert-red)
![Finance](https://img.shields.io/badge/Finance-ROI%20Analysis-red)
## 📌 Objetivo
- Destilar el universo AdventureWorks 2017 en un cuadro de mando C-Suite de 6 filas accionables.
- Determinar **cuánto se gana por país** (ingresos, costos, beneficio bruto)
- Evaluar **la rentabilidad de cada mercado** considerando gastos de marketing (margen % y ROI)
- Proporcionar recomendaciones estratégicas basadas en datos

[Resumen_final] (https://docs.google.com/spreadsheets/d/1HMy9iXdlln5W8u0HImemepPrORY_1CjKY2khJveNCNA/edit?usp=edit)

## 🛠️ Stack
* **SQL**: Agrupaciones y uniones territoriales.
* **Modelado**: Beneficio Bruto, Margen % y **ROI %**.
## ⚙️ SQL Showcase
![SQL](https://img.shields.io/badge/Language-SQL-blue?style=for-the-badge&logo=microsoft-sql-server)
```sql
/* Query Principal: Cálculo de Rentabilidad por País */
/* En este bloque utilizo **Common Table Expressions (CTEs)** y funciones de agregación para determinar la salud financiera por territorio.*/
SELECT 
    t.Name AS Pais,
    SUM(s.SalesAmount) AS Total_Ingresos,
    SUM(s.TotalProductCost) AS Costo_Produccion,
    -- Cálculo del Beneficio Bruto
    (SUM(s.SalesAmount) - SUM(s.TotalProductCost)) AS Beneficio_Bruto,
    -- Cálculo del Margen Porcentual
    ROUND(((SUM(s.SalesAmount) - SUM(s.TotalProductCost)) / SUM(s.SalesAmount)) * 100, 2) AS Margen_Pct
FROM FactInternetSales s
JOIN DimSalesTerritory t ON s.SalesTerritoryKey = t.SalesTerritoryKey
GROUP BY t.Name
ORDER BY Total_Ingresos DESC;
```

## 🔬 Hallazgos (Ref. Libro Blanco)
* 🌟 **ROI Geográfico**: USA lidera con 75.75% (el doble que otros mercados).
* 🚨 **Fricción de Capital**: Europa y Canadá destruyen valor neto en marketing.
* 🧠 **Criterio Senior**: Diferenciación entre Margen (operación) y ROI (capital).
# 📊 Análisis del Desempeño Financiero de Adventure Works con SQL

## 📌 Descripción del Proyecto
Proyecto de análisis financiero para AdventureWorks, donde actué como analista de datos para ayudar al director financiero a identificar los mercados más rentables y optimizar la inversión en marketing. Utilicé SQL para extraer, limpiar y analizar datos de ventas 2017, productos, territorios y campañas publicitarias.

## 🛠️ Herramientas Utilizadas
- **SQL** (PostgreSQL / BigQuery)
- **Hojas de cálculo** para validaciones y análisis complementario
- **Markdown** para documentación
- **GitHub** para control de versiones

## 📂 Estructura del Repositorio
![Proyecto3](proyecto-3-analisis-financiero-adventureworks-sql)
```
📦 proyecto-3-analisis-financiero-adventureworks-sql
 ┣ 📂 data                  # Diccionario y muestras de datos
 ┃ ┣ 📜 diccionario_datos.md
 ┃ ┗ 📂 sample_outputs/     # Ejemplos pequeños de resultados
 ┣ 📂 docs                   # Documentación y análisis cualitativo
 ┃ ┣ 📜 reflexiones_analista.md
 ┃ ┗ 📜 validaciones_qa.md
 ┣ 📂 informes               # Entregables finales
 ┃ ┗ 📜 resumen_ejecutivo_cfi.md
 ┣ 📂 outputs                # Resultados del análisis
 ┃ ┗ 📂 tablas               # CSVs con KPIs calculados
 ┃    ┗ 📜 kpis_financieros_pais.csv
 ┣ 📂 sql                    # Consultas SQL organizadas por etapa
 ┃ ┣ 📜 01_exploracion_inicial.sql
 ┃ ┣ 📜 02_limpieza_y_joins.sql
 ┃ ┣ 📜 03_calculo_ingresos_costos.sql
 ┃ ┣ 📜 04_agregacion_pais.sql
 ┃ ┣ 📜 05_incorporacion_campanas.sql
 ┃ ┣ 📜 06_kpis_financieros.sql
 ┃ ┗ 📜 07_validacion_qa.sql
 ┣ 📜 .gitignore              # Archivos excluidos de Git
 ┗ 📜 README.md               # Descripción general del proyecto
```
    👩‍💻 Autor
David Ramos https://www.linkedin.com/in/david-g-ramos/
# 💰 AdventureWorks Financial Analytics - SQL C-Suite
![SQL](https://img.shields.io/badge/SQL-Expert-red)
![Finance](https://img.shields.io/badge/Finance-ROI%20Analysis-red)


