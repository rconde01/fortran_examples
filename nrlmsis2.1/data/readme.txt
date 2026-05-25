===============================================================================
NRLMSIS 2.1 DATA SAMPLES
  The files in this directory contain the NO density data samples used to tune
  and validate the NRLMSIS 2.0 empirical model of atmospheric temperature and
  composition. For additional details, see Emmert et al. (2022).
  
REFERENCES

  Emmert, J. T., Drob, D. P., Picone, J. M., Siskind, D. E., Jones, M., 
  Mlynczak, M. G., et al. (2020). NRLMSIS 2.0: A whole-atmosphere empirical
  model of temperature and neutral species densities. Earth and Space
  Science, 8, e2020EA001321. https://doi.org/10.1029/2020EA001321 

  Emmert, J.T., Jones Jr., M., Siskind, D. E., Drob, D. P., Picone, J. M.,  
  Stevens, M. H., et al. (2022). NRLMSIS 2.1: An empirical model of nitric
  oxide incorporated into MSIS. Manuscript in preparation, to be submitted to
  Journal of Geophysical Research Space Physics.

FILE DIRECTORY
  NO.01.txt - NO.15.txt
    Data samples used to tune nitric oxide density in NRLMSIS 2.1.
  NO.15.txt - NO.30.txt
    Data samples used to validate nitric oxide density in NRLMSIS 2.1.
  snoe_level3_fullmission_20210601_v3.nc
    SNOE version 3 raw data, in netCDF format. See Emmert et al. (2021) for
    details.

FORMAT OF TEXT DATA FILES
  GRPID: ID OF INSTRUMENT:
        94  UARS/HALOE
       126  ACE/FTS
       128  ENVISAT/MIPAS
       140  SNOE/UV
       222  ODIN/SMR
       227  AIM/SOFIE
  KIND: KIND OF MEASUREMENT:
        30  NO Number Density (cm^-3)
  JDAY: NUMBER OF DAYS SINCE JAN 1, 1970
  UTSEC: UNIVERSAL TIME (s)
  ALT: GEODETIC ALTITUDE (km)
  LAT: GEODETIC LATITUDE (deg)
  LON: GEODETIC LONGITUDE (deg)
  VAL: MEASUREMENT VALUE
===============================================================================
