1. Download QGIS here: [http://www.qgis.org/en/site/](http://www.qgis.org/en/site/)
2. Clone the OpenSMC github repository: [https://github.com/opensmc/ssmc-agriculture-zoning](https://github.com/opensmc/ssmc-agriculture-zoning)
3. Download the following shapefiles from the County GIS download site:
  1. San Mateo County Active Parcels [http://maps.smcgov.org/gis\_data\_download/SAN\_MATEO\_COUNTY\_PARCELS.zip](http://maps.smcgov.org/gis_data_download/SAN_MATEO_COUNTY_PARCELS.zip)
  2. San Mateo County Streets [http://maps.smcgov.org/GIS\_data\_download/SAN\_MATEO\_COUNTY\_STREETS.zip](http://maps.smcgov.org/GIS_data_download/SAN_MATEO_COUNTY_STREETS.zip)
  3. Jurisdictional Boundaries [http://maps.smcgov.org/GIS\_data\_download/JURISDICTIONAL\_BOUNDARIES.zip](http://maps.smcgov.org/GIS_data_download/JURISDICTIONAL_BOUNDARIES.zip)
4. Open QGIS and add the San Mateo County parcel, streets, and boundaries shapefile (.shp) by clicking on the **Add Vector Layer** button.

 ![Add vector layer button](https://lh3.googleusercontent.com/xHtpLCtR55VKELGOMVOiv3aG0hrmL_kJ9i6omTaOOeZgCXM22UJfXiDto5zl5v3Z6D1-Rqp54UjjvO3CGi_MiYFjuimBNeWXXtsO8xuFauOlnR2YhZlocJw16-QELqJ5CDY2Ypigm7X2z6bthA)

1. Zoom to the city or town of interest you&#39;re working on using the navigation tools along the top window.

 ![Navigation tools](https://lh5.googleusercontent.com/cZlLJe2NCZ-abUJ1YHxLQrshnhR-Ohb9MwrKq4a_ylMK-EvMP9MXXjJsQdGxRJ_MxiZ0PHX1oJN-EhLYxDlFl6Klogr39DlEKi3Fs3_j4puNA_Jxo0mjoJMSMxPuUPTvJvYqIB1K5clHoNaWOg)

1. Pull up an authoritative map of the city zoning, which can be sourced from the Google spreadsheet here: [https://docs.google.com/spreadsheets/d/199shxJaRycwVGXGR46jQNyur960dnPf-L7-lIcXyKRg](https://docs.google.com/spreadsheets/d/199shxJaRycwVGXGR46jQNyur960dnPf-L7-lIcXyKRg)
2.
7.In QGIS, select some parcels from a single zoning designation using the **Select by Polygon** tool ![Polygon tool button](https://lh6.googleusercontent.com/iTfPWqUolzEo3sH03-fB1_2NLnaTZL_22N0oLmYVyaDsGMaDP2M2wqxBcbr0UNPJqPZwcOH9CHIU5CwUsgoDlI-85gtEi_Q2Z0agFR6FnPRrUYanJUOEn-3zlE4vA_ZY7kVHHT_Pfkad8aZndQ)

Start drawing a polygon that intersects the parcels you would like to select. To complete the selection polygon you&#39;ll need to right-click to close it.

1. Open the attribute table of the dataset by right-clicking on the file in the Layers Panel window and selecting **Open Attribute Table**

 ![Open Attribute Table button](https://lh5.googleusercontent.com/gpEvhBKgABKpwhDCJWHZyl6t3hyszQpnUNXP9mj7UTAM-HDAXit1L799uDUpvYrSO6YurR8kExGNIIB-zMHG8Bi8bng0H__XYRAJtMXsSWT_j4XvOdU_j3AJDXCY7YMj5YA_HnYRRmyEslMnlw)

1. Begin an edit session by clicking on the pencil icon.
2. To specify zoning attributes of these parcels, click on the **Open field calculator** tool, which looks like an abacus (keyboard shortcut = Ctrl + I ). Choose to **only update the selected features** (NOTE that if you don&#39;t have this checked it will overwrite attribute values for all parcels). Choose to update an existing field and specify the **Zoning** column. In the **Expression** window specify the zoning designation using quotes around the text.

 ![](https://lh5.googleusercontent.com/AwbQhucN4pZcHQdweai-ZvRunv2wM4nbDAyjMG3T05t0YQINh0qJsIWpqLYiXQuIYikE1Di7P4wobkQt9SfmuPpUes1zdpBgxFnWHUFmOTx-JBeGqPdFNb5nuQeRLje_7OrIZEc5bMLoO9MvDQ)

1. So it is easier to keep track of what parcels you have edited going forward, try changing the way data are displayed. Right click on the file and select the **Properties** tab. Click on the **Style** tab. Select _Categorized_ as the type, _Zoning_ as the column. Then click the **Classify** button.

 ![](https://lh5.googleusercontent.com/Ro1-nDqkw7jzCFp2bZ3VC17sG0VZFr0IPWmOButecyCSIMH5e1aU_nk6r6pexg9eiZ0qiIkW6hGM5zUa9hM615_NJgsIIeIQ54lLEPvLO5VSXM7X8Ur-zSBLn5AEaqJY1HxCNUWHYqO9HA7MLA)
