# Power BI Dashboard Spec - Indian Road Accidents

**File**: powerbi/Indian_Road_Accidents.pbix
**Data source**: data/exports/accidents_pbi.csv (20,000 rows, 30 cols)

## Theme
- Background: #F5F7FA
- Primary: #2E86AB (blue)
- Accent: #D7263D (red), #F18F01 (orange), #06A77D (green)
- Font: Segoe UI

## Global Slicers (top bar of every page)
- State (dropdown)
- Year (dropdown: 2022, 2023, 2024)
- Weather (buttons: Clear / Rain / Fog)
- Date range (between slicer)

---

## Page 1 - Overview
**Purpose**: Executive summary

| Visual | Type | Fields |
|--------|------|--------|
| Total Accidents | Card | [Total Accidents] |
| Total Casualties | Card | [Total Casualties] |
| Avg Risk Score | Card | [Avg Risk] |
| Fatal % | Card | [Fatal %] |
| Severity breakdown | Donut | Legend: accident_severity, Values: count |
| Accidents by State | Horizontal bar | Y: state, X: [Total Accidents] |
| Monthly Trend | Line | X: month_name, Y: [Total Accidents] |
| Weather split | Stacked bar | X: weather, Y: [Total Accidents], Legend: accident_severity |

---

## Page 2 - Temporal
**Purpose**: When do accidents happen?

| Visual | Type | Fields |
|--------|------|--------|
| Hour × Day Heatmap | Matrix | Rows: day_of_week, Cols: hour, Values: [Total Accidents] (conditional formatting) |
| Hourly Trend | Line | X: hour, Y: [Total Accidents] |
| Avg Risk by Hour | Line | X: hour, Y: [Avg Risk] |
| Weekend vs Weekday | Donut | Legend: is_weekend, Values: [Total Accidents] |
| Peak vs Non-Peak | Column | X: is_peak_hour, Y: [Total Accidents] |

---

## Page 3 - Geospatial
**Purpose**: Where are accidents concentrated?

| Visual | Type | Fields |
|--------|------|--------|
| Accident Map | Map (bubble) | Latitude, Longitude, Size: [Total Accidents], Color: [Avg Risk] |
| Top Cities | Bar | Y: city, X: [Total Accidents] |
| State Drill-down | Matrix | Rows: state → city, Values: [Total Accidents], [Total Casualties] |
| Casualty Map | Filled map | Location: state, Color saturation: [Total Casualties] |

---

## Page 4 - Risk Drivers
**Purpose**: What makes accidents worse?

| Visual | Type | Fields |
|--------|------|--------|
| Weather vs Avg Risk | Bar | X: weather, Y: [Avg Risk] |
| Visibility vs Avg Risk | Bar | X: visibility, Y: [Avg Risk] |
| Cause breakdown | Bar | Y: cause, X: [Total Accidents] |
| Road Type | Bar | X: road_type, Y: [Total Accidents] |
| Avg Risk Gauge | Gauge | Value: [Avg Risk], Min 0, Max 1, Target 0.44 |
| Festival Impact | Card + Bar | X: is_festival, Y: [Avg Risk] |

---

## Interactions
- All slicers sync across pages (Format → Edit interactions → Sync slicers)
- Page 1 state bar → drills to Page 3
- Page 4 weather bar → filters Page 2 hourly

## Bookmarks (optional)
- "Reset Filters" button on every page