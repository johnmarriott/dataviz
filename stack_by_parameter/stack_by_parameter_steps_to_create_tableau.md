# Stack by Parameter in Tableau

1. Connect to `california_county_pollution_means.csv` as data source and go to worksheet.

1. Create Parameter:
   - Name: Stack by
   - Data type: String
   - Allowable values: List
   - List of values: Type, County
   - Current value: Type
   
1. Click arrow on the `Stack by` parameter's pill and select Show Parameter Control

1. Create Calculated Field:
   - Name: Legend
   - Formula: `IF [Stack by] = 'County' THEN [County] ELSEIF [Stack by] = 'Type' THEN [Type] END`
   
1. Highlight `Date.Local`, `Legend`, and `Value` then click Show Me and pick area chart.

The `Stack by` parameter can be used to select which variable to group by in the area chart.
