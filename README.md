# 🎵 Spotify Music Analytics — EDA & Business Insights

![Power BI](https://img.shields.io/badge/Power%20BI-F2C811?style=flat&logo=powerbi&logoColor=black)
![Python](https://img.shields.io/badge/Python-3776AB?style=flat&logo=python&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=flat&logo=mysql&logoColor=white)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)

## Project Overview

An end-to-end exploratory data analysis of 9,000+ Spotify tracks spanning 70+ years of music (1952–2025), combining SQL-based data extraction, Python EDA, and an interactive Power BI dashboard to surface actionable insights around artist performance, genre trends, and listener behavior.

> **Business Question:** What patterns in Spotify's catalog reveal opportunities for smarter playlist curation, artist positioning, and content strategy?

---

## Key Findings

- **Catalog dilution:** Track releases grew 3x from 2010 to 2025, yet average popularity remained flat at ~52 — listener attention is not scaling with content volume
- **Songs are getting shorter:** Average song duration dropped from ~4.2 min (2000s) to ~3.1 min (2024) — a 26% decline, directly aligned with streaming platform skip-rate economics
- **Top-tier tracks are rare:** Only 8.3% of the catalog scores 81–100 in popularity; 61% of all tracks are clustered in the mid-tier (41–80), indicating a highly competitive middle ground
- **Metadata gap:** "Unknown" genre accounts for 39% of catalog volume — the single largest data quality issue in the dataset
- **High-follower ≠ high-volume:** Genres like R&B pop and reggaeton command 100M+ avg followers despite relatively low track counts — underserved but high-attention segments

---

## Dashboard Preview

> Power BI dashboard covering: KPI cards, release volume vs popularity trends, song duration over time, top artists by track volume and popularity, genre follower analysis

*(See `/powerbi/` folder for the `.pbix` file)*

---

## Project Structure

```
spotify-project/
├── sql/                  # Data extraction and cleaning queries
├── python/               # EDA notebooks and analysis scripts
├── data/                 # Cleaned CSV exports used for visualization
└── README.md
```

---

## Tools & Technologies

| Tool | Usage |
|------|-------|
| MySQL | Data extraction, aggregation queries |
| Python (pandas, matplotlib) | Cleaning, Exploratory data analysis |
| Power BI | Interactive dashboard and KPI tracking |
| Excel | Supplementary data validation |

---

## Dataset

- **Source:** Spotify tracks dataset (Kaggle)
- **Size:** 9,000+ tracks, 1,000+ unique artists
- **Fields:** Track name, artist, genre, release year, duration, popularity score, artist followers

---

## How to Run

1. Clone the repo: `git clone https://github.com/AyushSVOff/spotify-eda-analysis`
2. Open `/sql/` queries in MySQL Workbench to recreate the cleaned tables
3. Run `/python/` notebooks in Jupyter (requires `pandas`, `matplotlib`)
4. Open `/powerbi/spotify_dashboard.pbix` in Power BI Desktop

---

## Author

**Ayush S Verma**
B.Tech Chemical Engineering | Delhi Technological University
[LinkedIn](https://www.linkedin.com/in/ayush-s-verma-860365222/) • [GitHub](https://github.com/AyushSVOff) • ayushsverma30@gmail.com
