# 📊 Análisis del Desempeño Financiero de Adventure Works con SQL

## 📌 Descripción del Proyecto
Proyecto de análisis financiero para AdventureWorks, donde actué como analista de datos para ayudar al director financiero a identificar los mercados más rentables y optimizar la inversión en marketing. Utilicé SQL para extraer, limpiar y analizar datos de ventas 2017, productos, territorios y campañas publicitarias.

## 🎯 Objetivos
- Determinar **cuánto se gana por país** (ingresos, costos, beneficio bruto)
- Evaluar **la rentabilidad de cada mercado** considerando gastos de marketing (margen % y ROI)
- Proporcionar recomendaciones estratégicas basadas en datos

## 🛠️ Herramientas Utilizadas
- **SQL** (PostgreSQL / BigQuery)
- **Hojas de cálculo** para validaciones y análisis complementario
- **Markdown** para documentación
- **GitHub** para control de versiones

## 📂 Estructura del Repositorio

proyecto-3-analisis-financiero-adventureworks-sql/
│
├── README.md
├── LICENSE
├── .gitignore
│
├── data/
│   ├── diccionario_datos.md
│   └── sample_outputs/
│       ├── ventas_clean_sample.csv
│       └── kpis_financieros_pais_sample.csv
│
├── sql/
│   ├── 01_exploracion_inicial.sql
│   ├── 02_limpieza_y_joins.sql
│   ├── 03_calculo_ingresos_costos.sql
│   ├── 04_agregacion_pais.sql
│   ├── 05_incorporacion_campanas.sql
│   ├── 06_kpis_financieros.sql
│   └── 07_validacion_qa.sql
│
├── outputs/
│   ├── tablas/
│   │   ├── ventas_clean.csv
│   │   ├── ingresos_costos_pais.csv
│   │   ├── ingresos_costos_campanas_pais.csv
│   │   └── kpis_financieros_pais.csv
│   └── imagenes/
│       ├── diagrama_relacional.png
│       └── dashboard_preview.png
│
├── docs/
│   ├── diagrama_relacional.md
│   ├── reflexiones_analista.md
│   └── validaciones_qa.md
│
└── informes/
    ├── resumen_ejecutivo_cfi.md


    👩‍💻 Autor
David Ramos https://www.linkedin.com/in/david-g-ramos/
