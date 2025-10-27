POC: ATP Rankings Dashboard 

This project is a Proof of Concept (POC) aiming to analyze ATP tennis player rankings through an end-to-end data analytics pipeline: from data collection to visualization.
It combines data from Kaggle and live ATP ranking websites, processed via SQLite and Power Query, and visualized in Power BI.

Project Overview : The goal of this POC is to build a clean, automated, and insightful dashboard that highlights trends in ATP player rankings — such as player distribution by age, nationality, ranking evolution, and competitive gaps at the top level.
It demonstrates how a data analyst can leverage simple tools to transform raw sports data into actionable insights.

Data Workflow :
1️. Data Collection

Sources:
- Kaggle dataset: ATP Rankings & Player Information

- Live ATP Ranking site (web scraping & manual update)

Storage: 
- SQLite database (atp_database.db)

2️. Data Profiling
- Tool: SQLite Studio

Actions:
- Structure inspection of two key tables: atp_players and atp_ranking

- Creation of SQL views (v_players, v_ranking) to load only the required columns into Power BI

3️. Data Cleansing
- Tool: Power Query (M Language)

- Goal: Standardize player names and ensure data consistency

Key challenges:

- Mismatch of player_id across datasets

- Ranking updates over time (e.g., since June, several players—including Alcaraz—have changed positions)

- Irregular name formats (“J.Sinner” ≠ “Jannik Sinner”)

Solution:
A custom Power Query function Fn_CleanName was created to clean, normalize, and uppercase player names.

- Input: Two SQL views (v_players, v_ranking)
- Output: Clean and harmonized tables ready for transformation.

4️. Data Transformation

Goal: Merge, enrich, and refresh data for business analysis.

Steps:

- Combine both tables through a LEFT JOIN to keep all players

- Perform fuzzy matching for unmatched records

- Update rankings from a web-based source (Update_Ranking)

- Handle manual mappings via Manual_Mapping.csv

Output: A fully harmonized ATP_Ranks table ready for visualization.

5️. Data Visualization

Tool: Power BI

Key Insights:

- Alcaraz leads with over 11,540 points, confirming consistency at the top

- France 🇫🇷 ranks #1 by number of players in the Top 500

- Age group 20–25 dominates globally

- Nearly 8,000 points separate the 1st and 10th players, showing a strong top-tier concentration

Dashboard Goals:

- Track global ATP player distribution (by age and nationality)

- Detect emerging players and ranking volatility

- Support strategic decisions for federations, sponsors, and talent scouting

technical stack : 

- SQLite Studio : Database management and SQL profiling
- ODBC Driver (SQLite3): Data connection bridge to Power BI
- Power Query (M): Data cleaning & transformation
- Power BI: Data visualization & storytelling

Key Learnings : 

- How to connect Power BI directly to SQLite via ODBC;
- How to clean and normalize player names efficiently using Power Query;
- How to merge datasets with inconsistent IDs through fuzzy matching;
- How to design a readable, dynamic dashboard from live sports data.

Author :

Khaoula Jeraf
🎓 Master's degree in Project Management, Innovation & Digital Transformation — IAE Clermont Auvergne
💼 Power BI Developer | Data Analyst | Sports Data Enthusiast
📍 Paris, France
🔗 https://www.linkedin.com/in/khaoula-jeraf-5a7bb81ab/