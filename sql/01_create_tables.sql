-- Schema for Indian Road Accidents dataset
-- Matches columns in data/processed/accidents_clean.csv

DROP TABLE IF EXISTS accidents CASCADE;

CREATE TABLE accidents (
    accident_id        INTEGER PRIMARY KEY,
    city               TEXT,
    state              TEXT,
    latitude           NUMERIC(9,6),
    longitude          NUMERIC(9,6),
    date               DATE,
    time               TIME,
    datetime           TIMESTAMP,
    hour               INTEGER,
    day_of_week        TEXT,
    is_weekend         BOOLEAN,
    road_type          TEXT,
    lanes              INTEGER,
    traffic_signal     BOOLEAN,
    weather            TEXT,
    visibility         TEXT,
    temperature        INTEGER,
    traffic_density    TEXT,
    cause              TEXT,
    accident_severity  TEXT,
    vehicles_involved  INTEGER,
    casualties         INTEGER,
    is_peak_hour       BOOLEAN,
    festival           TEXT,
    risk_score         NUMERIC,
    year               INTEGER,
    month              INTEGER,
    month_name         TEXT,
    day                INTEGER,
    quarter            INTEGER,
    week_of_year       INTEGER,
    is_fatal           BOOLEAN,
    is_festival        BOOLEAN
);

CREATE INDEX idx_state ON accidents(state);
CREATE INDEX idx_city ON accidents(city);
CREATE INDEX idx_datetime ON accidents(datetime);
CREATE INDEX idx_severity ON accidents(accident_severity);
CREATE INDEX idx_cause ON accidents(cause);