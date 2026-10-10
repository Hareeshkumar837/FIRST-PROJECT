# FIRST-PROJECT


An automated financial data pipeline combining Python, MySQL, and Power BI to analyze historical market trends and surface algorithmic trading signals.

## Architecture
1. **Extraction & Transformation (Python):** Ingested historical Nifty 50 market data and calculated multiple Simple Moving Averages (SMA 5, 10, 20, 30, 40).
2. **Data Modeling & Business Logic (MySQL):** Created a curated presentation view (`nifty_trading_summary`) implementing automated Buy/Sell/Hold action logic with a 40-day warm-up window filter.
3. **Visualization & Reporting (Power BI):** Developed an interactive dashboard featuring dynamic multi-SMA trend overlays and responsive trading signal filtering.

## Key Technical Decisions
* **Upstream Processing:** Heavy calculations (rolling averages and conditional action logic) were performed upstream in Python and SQL rather than through complex DAX measures, keeping the Power BI file lightweight and responsive.
* **Warm-Up Window Handling:** Filtered out records prior to complete 40-day calculation availability (`WHERE sma_40 IS NOT NULL`) to ensure visual alignment across all trend lines.

## Demonstration

https://github.com/user-attachments/assets/24a65fa5-e338-49a0-a3e0-be0e7f50aa53

