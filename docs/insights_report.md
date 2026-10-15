# Insights Report - Indian Road Accidents

**Dataset**: 20,000 accidents | 34,529 casualties | 2022–2024
**Average risk score**: 0.44 | **Average casualties per accident**: 1.73

---

## 1. Overall KPIs
| Metric | Value |
|--------|-------|
| Total accidents | 20,000 |
| Total casualties | 34,529 |
| Avg casualties per accident | 1.73 |
| Avg risk score | 0.44 |
| Fatal accidents | 2,987 (14.94%) |

---

## 2. Severity Distribution
| Severity | Count | % |
|----------|-------|---|
| Minor | 11,025 | 55.13% |
| Major | 5,988 | 29.94% |
| Fatal | 2,987 | 14.94% |

**Insight**: ~15% of accidents are fatal - a high fatality rate for urban contexts.

---

## 3. Temporal Patterns

### Weekend vs Weekday
| | Accidents | Avg Risk | Casualties |
|---|-----------|----------|------------|
| Weekday | 14,277 | 0.44 | 24,636 |
| Weekend | 5,723 | 0.44 | 9,893 |

**Insight**: 71% of accidents occur on weekdays, but **avg risk is identical (0.44)** - risk is not weekend-driven.

### Hourly Trend
- **Peak accident hours**: 2:00 (888), 13:00 (878), 12:00 (866), 17:00 (861), 1:00 (859)
- **Highest avg risk hours**: 8:00 (0.61), 10:00 (0.61), 18:00 (0.61), 9:00 (0.59), 19:00 (0.59)
- **Lowest risk hours**: 2:00 (0.34), 1:00 (0.35)

**Insight**: Two risk regimes emerge - **morning (8–10 AM) and evening (17–19 PM) commute windows have risk ~0.60**, nearly **2× higher than late-night (~0.35)**.

### Day of Week
- Busiest: Monday (2,966)
- Quietest: Wednesday (2,726)
- Range only ~240 accidents - very evenly distributed

### Monthly Trend
- Highest: January (2,044), March (2,043)
- Lowest: September (1,475), June (1,512)
- **Insight**: Accidents peak in **winter months** (Jan/Mar) and dip in **monsoon months** (Jun–Sep). This contradicts common assumptions - likely reflects reporting or reduced travel, not safer roads.

---

## 4. Geographic Hotspots

### By State
| State | Accidents | Casualties | Avg Risk |
|-------|-----------|------------|----------|
| Maharashtra | 5,009 | 8,716 | 0.44 |
| Punjab | 2,577 | 4,377 | 0.44 |
| Tamil Nadu | 2,575 | 4,567 | 0.44 |
| West Bengal | 2,559 | 4,508 | 0.43 |
| Karnataka | 2,438 | 4,128 | 0.44 |
| Delhi | 2,433 | 4,175 | 0.44 |
| Telangana | 2,409 | 4,058 | 0.44 |

**Insight**: Maharashtra dominates with **25% of all accidents** - but avg risk is uniform across states. Volume, not risk intensity, differentiates states.

### By City
Cities track states closely: Chandigarh (2,577), Chennai (2,575), Kolkata (2,559), Pune (2,517), Mumbai (2,492), Bangalore (2,438), Delhi (2,433), Hyderabad (2,409).

**Insight**: Accidents are **evenly distributed across the 8 major cities** - no single city is dramatically worse.

---

## 5. Risk Drivers

### Weather
| Weather | Accidents | Avg Risk |
|---------|-----------|----------|
| Clear | 6,690 | **0.24** |
| Rain | 6,677 | **0.49** |
| Fog | 6,633 | **0.59** |

**Insight**: **Weather is a top risk driver.** Fog has 2.5× the risk of clear weather - despite equal accident counts, fog/rain accidents are far riskier.

### Visibility (correlated with weather)
| Visibility | Accidents | Avg Risk |
|------------|-----------|----------|
| Low | 9,987 | **0.59** |
| Medium | 3,323 | 0.39 |
| High | 6,690 | 0.24 |

**Insight**: **50% of all accidents occur in low-visibility conditions**, with avg risk 2.5× that of high visibility. **Visibility is the single strongest predictor** in the dataset.

### Cause
| Cause | Accidents | Casualties | Avg Risk |
|-------|-----------|------------|----------|
| Distraction | 4,026 | 6,856 | 0.43 |
| Overspeeding | 4,025 | 6,943 | 0.44 |
| Weather | 3,997 | 6,953 | 0.44 |
| Drunk Driving | 3,978 | 6,869 | 0.44 |
| Poor Road | 3,974 | 6,908 | 0.44 |

**Insight**: Causes are **perfectly balanced** (~4,000 each) - a synthetic-looking distribution. No single behavioral cause stands out; risk is uniform across causes.

### Road Type
Urban / Rural / Highway - all ~6,600 accidents, avg casualties 1.72–1.73.

**Insight**: Road type has **no measurable impact** on accident frequency or severity in this dataset.

### Traffic Density × Severity
| Density | Minor | Major | Fatal |
|---------|-------|-------|-------|
| High | 3,912 | 2,077 | 1,045 |
| Low | 3,890 | 2,116 | 1,061 |
| Medium | 3,223 | 1,795 | 881 |

**Insight**: Severity distribution is **proportional across density levels** - traffic density doesn't skew severity.

---

## 6. Festival Impact
| | Accidents | Avg Risk | Casualties |
|---|-----------|----------|------------|
| Non-festival | 19,885 | 0.44 | 34,295 |
| Festival | 115 | **0.56** | 234 |

**Insight**: Festival days see **28% higher avg risk** (0.56 vs 0.44) despite tiny volume. Festival accidents are **more dangerous per incident**.

---

## Top 5 Findings

1. **Visibility is the dominant risk factor** - Low visibility: risk 0.59 vs High: 0.24 (2.5×)
2. **Weather tiers are clear**: Fog (0.59) > Rain (0.49) > Clear (0.24)
3. **Commute hours are riskiest** - 8–10 AM and 17–19 PM have ~0.60 risk vs ~0.35 late-night
4. **Maharashtra alone accounts for 25% of accidents** (5,009 of 20,000)
5. **Festival days are 28% riskier** per accident despite representing only 0.6% of volume

## Data Notes
- Behavioral causes (distraction, speeding, etc.) and road types are **uniformly distributed** - likely synthetic or artificially balanced
- Avg risk score (0.44) is stable across most dimensions - **weather + visibility are the only meaningful differentiators**