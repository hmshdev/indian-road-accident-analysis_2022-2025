# DAX Measures

Create these in a **Measures table** (New Table → `Measures = {BLANK()}`).

## Core KPIs
```dax
Total Accidents = COUNTROWS(accidents)
Total Casualties = SUM(accidents[casualties])
Avg Risk = AVERAGE(accidents[risk_score])
Avg Casualties = AVERAGE(accidents[casualties])
```

## Severity
```dax
Fatal Accidents = CALCULATE([Total Accidents], accidents[is_fatal] = TRUE)
Fatal % = DIVIDE([Fatal Accidents], [Total Accidents])
Major Accidents = CALCULATE([Total Accidents], accidents[accident_severity] = "Major")
Minor Accidents = CALCULATE([Total Accidents], accidents[accident_severity] = "Minor")
```

## Contextual
```dax
Weekend Accidents = CALCULATE([Total Accidents], accidents[is_weekend] = TRUE)
Peak Hour Accidents = CALCULATE([Total Accidents], accidents[is_peak_hour] = TRUE)
Festival Accidents = CALCULATE([Total Accidents], accidents[is_festival] = TRUE)
Festival Avg Risk = CALCULATE([Avg Risk], accidents[is_festival] = TRUE)
Non-Festival Avg Risk = CALCULATE([Avg Risk], accidents[is_festival] = FALSE)
```

## Time Intelligence
```dax
Accidents YoY =
VAR CurrYear = SELECTEDVALUE(accidents[year])
VAR PrevYear = CurrYear - 1
VAR PrevAccidents = CALCULATE([Total Accidents], accidents[year] = PrevYear)
RETURN DIVIDE([Total Accidents] - PrevAccidents, PrevAccidents)
```

## Conditional formatting
```dax
Risk Color =
SWITCH(
    TRUE(),
    [Avg Risk] >= 0.55, "#D7263D",
    [Avg Risk] >= 0.40, "#F18F01",
    "#06A77D"
)
```