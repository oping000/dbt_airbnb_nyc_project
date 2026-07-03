# dbt_airbnb_nyc_project
## Models

### Staging
| Model | Description | Materialization |
|---|---|---|
| `stg_airbnb__listings` | Cleaned and renamed listings from raw source | View |
| `stg_airbnb__reviews` | Cleaned and renamed reviews from raw source | View |

### Marts
| Model | Description | Materialization |
|---|---|---|
| `dim_listings` | Listing attributes dimension table | Table |
| `dim_hosts` | Host attributes dimension table | Table |
| `fct_reviews` | Reviews fact table joined with listing context | Incremental |

### Snapshots
| Snapshot | Description | Strategy |
|---|---|---|
| `scd_airbnb__listings` | Tracks historical changes to listing attributes (SCD Type 2) | Timestamp |

## Tests
### Generic Tests
- `unique` and `not_null` on all primary keys
- `accepted_values` on `room_type` (Entire home/apt, Private room, Shared room, Hotel room)
- `relationships` test linking reviews to listings

### Singular Tests
- `assert_positive_minimum_nights` — ensures all listings have a positive minimum nights value
- `assert_no_future_reviews` — ensures no reviews have a future date

### Data Quality Findings
- ~29% of listings (8,744) have null prices, reflecting Airbnb's dynamic pricing model
- Some reviews reference listings that no longer exist (deleted/delisted properties) — handled with `severity: warn`

## Macros
- `clean_price` — strips `$` and `,` from raw price strings and casts to numeric for accurate analysis

## How to Run
1. Clone this repository
2. Install dbt with Snowflake adapter: `pip install dbt-snowflake`
3. Configure your `profiles.yml` with Snowflake credentials
4. Run the following commands:
```bash
dbt deps
dbt seed
dbt snapshot
dbt run
dbt test
```

## Technologies Used
- **dbt** (data build tool) — data transformation and modeling
- **dbt Fusion 2.0** — Rust-based dbt engine
- **Snowflake** — cloud data warehouse
- **GitHub** — version control
- **Inside Airbnb** — data source

## License
This project is licensed under the [Creative Commons Attribution-NonCommercial 4.0 International License](https://creativecommons.org/licenses/by-nc/4.0/).

© 2026 oping000 (ODell)
