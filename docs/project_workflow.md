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
## Phase 4 - SQL Analysis 
## Phase 5 - EDA Visualizations 
## Phase 6 - Export for BI + Excel 
## Phase 7 - Power BI Dashboard 
## Phase 8 - Docs & Insights 