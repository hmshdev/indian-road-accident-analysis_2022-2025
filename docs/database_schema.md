# Database Schema — `road_accidents.accidents`

## Connection
- Host: localhost
- Port: 5432
- DB: road_accidents
- User: postgres
- Table: accidents

## Columns (33)
See `data_dictionary.md` for full descriptions.

## Indexes
| Index | Column | Purpose |
|-------|--------|---------|
| idx_state | state | state-level rollups |
| idx_city | city | city-level rollups |
| idx_datetime | datetime | time-series queries |
| idx_severity | accident_severity | severity filters |
| idx_cause | cause | cause-based analysis |

## Row count
20,000

## Load command
`notebooks/03_load_to_postgres.ipynb` (chunksize=1000, method='multi')