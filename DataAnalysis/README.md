# Celebrity Insights Analysis

## Project overview

This project explores entertainment-industry data using a MySQL relational database and a Power BI report. The analysis is organised around celebrity profiles, professional categories, genres, awards, releases and revenue.

The project is intended to demonstrate a workflow that moves from relational data modelling and SQL querying to dashboard-based exploration.

## Questions explored

- Which artists have the highest recorded revenue?
- Which artists have the highest award scores?
- How are awards and professional categories represented in the dataset?
- How do movie and song releases vary by year?
- How are revenue and success represented across the available records?

## Tools and files

| File | Purpose |
|---|---|
| `Tables.sql` | Creates the relational tables |
| `Insertions.sql` | Loads sample records |
| `Queries.sql` | Contains analytical SQL queries |
| `Capstone SQL.pbix` | Power BI report |
| `Analysis.png`, `Insights.png`, `Trends.png` | Static report screenshots |
| `Table Schema.docx` | Additional schema notes |

## Database structure

The current `Tables.sql` script creates **eight tables**:

1. `Celebrities`
2. `Regions`
3. `Celeb_Regions`
4. `Success`
5. `Movies`
6. `Songs`
7. `Revenue`
8. `Awards`

The schema uses foreign keys to connect celebrity records to region, success, movie, song and award records.

### Schema caveats

- `Revenue.Entity_Type` allows both Movie and Song, but `Revenue.Entity_ID` currently has a foreign key only to `Movies.Movie_ID`. This does not enforce valid references to both entity tables. A future redesign should use separate nullable foreign keys or a common parent/entity table.
- `Celeb_Regions` stores both `Region_Name` and `Region_ID`; the duplicated region label can become inconsistent with the referenced Regions row.
- The schema and the Power BI data model should be checked together before treating the report as a fully normalised analytical model.

## Query workflow

The SQL queries demonstrate ranking artists by revenue and award score, identifying lower-ranked records and comparing annual release counts. Run the table creation script first, then the insertions, then the analytical queries.

## Power BI report

Open `Capstone SQL.pbix` in Power BI Desktop. The screenshots in this folder provide static previews; the PBIX file is needed to interact with report filters and visuals.

## Interpretation and limitations

The results depend on the contents and definitions of the supplied dataset. Revenue, awards and genre popularity should not be interpreted as comprehensive measures of real-world celebrity success without information about data coverage, sources, units and time periods.

## Tools

- MySQL / SQL
- Power BI
- Excel

## Contact

[LinkedIn](https://www.linkedin.com/in/evansdzidzienyo)
