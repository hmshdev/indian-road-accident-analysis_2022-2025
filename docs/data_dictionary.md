# Data Dictionary — Indian Road Accidents Dataset

| Column | Type | Description | Notes |
|--------|------|-------------|-------|
| accident_id | int | Unique accident ID | Primary key, no duplicates |
| city | text | City | 8 unique: Chandigarh, Chennai, Kolkata, Pune, Mumbai, Bangalore, Delhi, Hyderabad |
| state | text | State | 7 unique |
| latitude | float | Latitude | |
| longitude | float | Longitude | |
| date | date | Accident date | Parsed from string |
| time | time | Accident time | Hour precision only |
| datetime | timestamp | Combined date + time | **Engineered** |
| hour | int | Hour of day (0–23) | |
| day_of_week | text | Day name | |
| is_weekend | bool | Sat/Sun flag | Cast from int |
| road_type | text | Urban / Rural / Highway | |
| lanes | int | Number of lanes | |
| traffic_signal | bool | Traffic signal present | Cast from int |
| weather | text | Clear / Rain / Fog | |
| visibility | text | Low / Medium / High | **Categorical, not numeric** |
| temperature | int | Temperature (°C) | |
| traffic_density | text | Low / Medium / High | |
| cause | text | Distraction / Overspeeding / Weather / Drunk Driving / Poor Road | |
| accident_severity | text | Minor / Major / Fatal | |
| vehicles_involved | int | Number of vehicles | |
| casualties | int | Number of casualties | |
| is_peak_hour | bool | Peak hour flag | Cast from int |
| festival | text | Holi / Eid / Diwali / New Year / None | Nulls filled with "None" |
| is_festival | bool | Festival flag | **Engineered** |
| risk_score | float | Precomputed risk score | |
| year | int | Year | **Engineered** |
| month | int | Month (1–12) | **Engineered** |
| month_name | text | Month abbreviation | **Engineered** |
| day | int | Day of month | **Engineered** |
| quarter | int | Quarter (1–4) | **Engineered** |
| week_of_year | int | ISO week number | **Engineered** |
| is_fatal | bool | Severity == Fatal | **Engineered** |

## Data Quality Notes
- Raw rows: 20,000
- Duplicate rows: 0
- Missing values after cleaning: 0
- `festival` had 19,885 nulls (99.4%) → filled with "None"
- `visibility` stored as text (Low/Medium/High) - treated as categorical