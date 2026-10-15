# Indian Road Accident Analysis (End-to-End)

End-to-end analysis of a 20,000-row Indian road accident dataset using **Python (Pandas)**, **PostgreSQL**, **Power BI**, and **Excel**.\
Dataset Link - [https://www.kaggle.com/datasets/sehaj1104/indian-road-accident-dataset-20222025](https://www.kaggle.com/datasets/sehaj1104/indian-road-accident-dataset-20222025)

## Tech Stack
- **Python 3.12** - Pandas, NumPy, Matplotlib, Seaborn
- **PostgreSQL** - storage + SQL analysis
- **Power BI Desktop** - interactive dashboard
- **Excel** - KPI summary workbook
- **Git + GitHub** - version control

## Structure
| Folder | Purpose |
|--------|---------|
| `notebooks/` | Jupyter notebooks (01–06) |
| `sql/` | Standalone SQL scripts |
| `data/raw/` | Original CSV |
| `data/processed/` | Cleaned CSV |
| `data/exports/` | BI/Excel feeds |
| `powerbi/` | PBX + specs |
| `excel/` | KPI workbook |
| `docs/` | Data dictionary, insights, workflow |
| `images/` | EDA charts |

## Run Order
1. `pip install -r requirements.txt`
2. Create Postgres DB `road_accidents`
3. Copy `.env.example` → `.env`, fill password
4. Run notebooks `01` → `06` in order
5. Open `powerbi/Indian_Road_Accidents.pbix`
