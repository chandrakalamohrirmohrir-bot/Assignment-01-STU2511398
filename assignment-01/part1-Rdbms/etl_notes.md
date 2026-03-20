## ETL Decisions

### Decision 1 — Date Standardization
Problem: Dates were in different formats.
Resolution: Converted all into YYYY-MM-DD format.

### Decision 2 — Handling NULL Values
Problem: Some fields had missing values.
Resolution: Replaced NULLs with default values or removed invalid rows.

### Decision 3 — Category Consistency
Problem: Category names had different casing (e.g., electronics vs Electronics).
Resolution: Standardized all category values to proper case.