# Project Workflow

## Phase 0 - Setup 
- Folder structure, .venv, deps, Postgres DB, .env, git init

## Phase 1 - Data Understanding 
- Notebook 01: loaded raw data, inspected dtypes/nulls/uniques

## Phase 2 - Data Cleaning 
- Notebook 02: cleaned, engineered datetime + time features
- Output: data/processed/accidents_clean.csv
- Docs: data_dictionary.md

## Phase 3 — Load to Postgres
- Notebook 03: created `accidents` table via `sql/01_create_tables.sql`
- Loaded 20,000 rows via SQLAlchemy (chunked, method='multi')
- Indexes: state, city, datetime, severity, cause
- Verified: row count, festival breakdown, KPI sanity check

## Phase 4 — SQL Analysis 
- sql/02_kpi_queries.sql, 03_trend_analysis.sql, 04_hotspot_analysis.sql, 05_severity_drivers.sql
- Notebook 04: 15 queries covering KPIs, trends, hotspots, drivers
- Findings captured in docs/insights_report.md

## Phase 5 — EDA Visualizations 
- Notebook 05: 10 charts saved to images/
  01_hourly, 02_risk_by_hour, 03_dayofweek, 04_severity, 05_weather_risk,
  06_visibility_risk, 07_states, 08_hour_day_heatmap, 09_cause, 10_monthly
- Visuals confirm SQL findings (visibility + weather = top risk drivers)


## Phase 6 - Export for BI + Excel 
## Phase 7 - Power BI Dashboard 
## Phase 8 - Docs & Insights 