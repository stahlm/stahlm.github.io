This folder contains datasets used in the lectures and labs for ENS-215

* Blue_Hills_MA_Precip_Temp_Data_1.csv
    * Data from NOAA GHCN database.  Daily temperature and precipitation data for met station in Blue Hills, MA. Date is from 1880's to 2018
      * PRCP: daily precip in inches
      * TMAX: daily max temp in deg F
      * TMIN: daily min temp in deg F
      * TOBS: temperature at time of observation in deg F

* Albany_Temperature_Data.csv
   * Data from NOAA GHCN database.  Daily temperature and precipitation data for met station in Albany, NY.  Date is from 2017-01-01 to 2017-12-31
      * TAVG: Is the daily average temperature in deg F
      
* Old_faithful.csv
   * Dataset included in R, which has data for Old Faithful eruption times and waiting times.
      * eruptions: length of eruption in minutes
      * waiting: time to next eruption in minutes
      
* Albany_Temperatures_Nov_2018.csv
   * Data from wunderground.com.  Daily min, max, avg air temperature in Albany.  Date is from Nov 1-30, 2018
      
*Global_Rivers_Discharge.csv
   * Dataset with info on largest rivers.Data from numerous sources, accessed via table on Wikipedia (https://en.wikipedia.org/wiki/List_of_rivers_by_discharge)
   * Columns
      * Continent
      * River
      * Length_km: River length in kilometers
      * Drainage_area_km2: River drainage area in square kilometers
      * Discharge_m3_s: River average discharge in m^3/s
      * Outflow_location: Location into which the river discharges

* NOAA_State_Precip_LabData.csv
   * Data obtained from NOAA Climate at a Glance (https://www.ncdc.noaa.gov/cag/statewide/time-series).  Dataset has monthly precipitation data from 1895-2017
   * Columns
      * Year: Year in numeric format
      * Month: Month in numeric format
      * Precip_inches: Total monthly precipitaton in inches
      * state_cd: State abbreviation (e.g. NY for New York, MA for Massachusetts,...)
 
* NOAA_State_Precip_Summary_Table.csv
   * Summary table created from data in "NOAA_State_Precip_LabData.csv"
      * Columns
         * State: State abbreviation
         * Avg_precip: Average annual precipitation in inches (period of record 1895-2017)
         * Pre_precip: Average annual precipitation in inches (1895-1959)
         * Post_precip: Average annual precipitation in inches (1960-2017)

* Mauna_Loa_CO2.csv
   * Atmospheric CO2 data at Mauna Loa, obtained from NOAA (https://www.esrl.noaa.gov/gmd/ccgg/trends/) 
      * Columns
         * Year: Year in decimal format (e.g. 1998.25)
         * CO2_ppm: Atmospheric CO2 concentration in ppm (mole fraction)
