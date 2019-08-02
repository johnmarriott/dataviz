# Toggle Totals in Tableau

1. Connect to `california_county_pollution_means.csv` as data source and go to worksheet.

- Create Parameter:
    - Name: Show totals
    - Data type: Boolean
    - Current value: True
    - Aliases: Yes for True, No for False

1. Click arrow on the `Show totals` parameter pill and select Show Parameter Control

1. Click arrow on the the Show totals parameter control and change it to Single Value List.

- Create calculated field:
    Name: Total value
    Formula: `{FIXED[Date.Local]:SUM([Value])}`

- Create calculated field:
  Name: Displayed total value
  Formula: `IF [Show totals] THEN [Total value] ELSE NULL END`

  *This field can be combined with the previous one if preferred.*

- Highlight `Date.Local`, `Type`, and `Value` then click Show Me and pick area chart.

- Highlight `Date.Local` and `Displayed total value` then click Show Me and pick area chart.

- Remove Type as the color on the `Displayed total value` area chart if needed (it should be one color, gray).  Remove duplicate `YEAR(Date.Local)` column if needed.

- Click arrow on the Type dimension and select Show Filter.

- In the Rows pane, click the arrow on the second area chart's pill and select Dual Axis.

- On the chart, right-click the second y-axis and select Synchronize Axis, then deselect Show Header.

- Right click the first y-axis and select Move marks to front/back so that the gray area chart is in back.

- If desired, for the first area chart, change the opacity of the color to 100% so that the gray area chart doesn't bleed through.

- Optional: select No for Show totals so that "N Nulls" will appear in the corner of the chart.  Right click it and select Hide Indicator.  **This will hide all NAs on both charts.  This is a poor fit for visualizations that want to highlight missing data.**


