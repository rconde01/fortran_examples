===============================================================================
NRLMSIS 2.0 DATA SAMPLES
  The files in this directory contain the data samples used to tune and
  validate the NRLMSIS 2.0 empirical model of atmospheric temperature and
  composition. For additional details, see Emmert et al. (2020).
  
FILE DIRECTORY -- DATA USED TO TUNE NRLMSIS 2.0
  tn.lower.001.txt - tn.lower.015.txt
    Data samples used to tune temperature from 0 to 120 km altitude. Contains
    0-105 km temperature observations and 90-125 km NRLMSISE-00 output.
  O.lower+E00.001.txt - O.lower+E00.015.txt
    Data samples used to tune atomic oxygen density from 50 km altitude to the 
    exobase. Contains 50-100 km TIMED/SABER and ODIN/OSIRIS observations and
    160-500 km km NRLMSISE-00 output.
  H.lower+E00.001.txt - H.lower+E00.015.txt
    Data samples used to tune atomic hydrogen density from 75 km altitude to the 
    exobase. Contains 75-100 km TIMED/SABER observations and 300-500 km
    NRLMSISE-00 output.
  tledens.txt
    Orbit-derived, global average mass density data used to tune atomic oxygen
    from 370 km altitude to 575 km. Contains 1986-2005, 200-575 km data. The
    data are the same as in the supporting information of Emmert (2015), 
    except that the observed/MSISE-00 density ratios are applied to MSISE-00
    with global variations turned off, instead of to the MSISE-00 global average
    calculated on a grid.
  
FILE DIRECTORY -- DATA USED TO VALIDATE NRLMSIS 2.0
  tn.lower.016.txt - tn.lower.030.txt
    Data samples used to validate temperature from 0 to 105 km altitude. Contains
    0-105 km temperature observations.
  O.lower.016.txt - O.lower.030.txt
    Data samples used to validate atomic oxygen density from 50 to 105 km
    altitude. Contains TIMED/SABER and ODIN/OSIRIS observations.
  H.lower.016.txt - H.lower.030.txt
    Data samples used to validate atomic hydrogen density from 75 to 105 km
    altitude. Contains TIMED/SABER observations.
  P.lower.000.txt
    Data samples used to validate pressure from 0 to 80 km altitude. Contains
    CFSR and MERRA2 pressure data with water vapor partial pressure removed.
  Millstone.ISR.T.txt
    Millstone Hill ISR neutral temperatures used to compare with NRLMSIS 2.0
    from 100 to 180 km altitude.
  MIPAS.V5R_TwNO_622.T.txt
    ENVISAT/MIPAS temperatures used to compare with NRLMSIS 2.0
    from 110 to 170 km altitude.
  rho.upper.accel.000.txt
    CHAMP and GOCE accelerometer mass density data used to compare with
    NRLMSIS 2.0 from 200 to 500 km.

REFERENCES
  Emmert, J. T. (2009). A long-term data set of globally averaged thermospheric
  total mass density. J. Geophys Res., 114. A06315, doi:10.1029/2009JA014102

  Emmert, J.T., Drob, D. P., Picone, J. M., Siskind, D. E., Jones Jr., M.,
  et al. (2020). NRLMSIS 2.0: A whole-atmosphere empirical model of temperature
  and neutral species densities. Manuscript in preparation, to be submitted to
  Earth and Space Science.

FORMAT OF DATA FILES
  GRPID: ID OF INSTRUMENT:
         0  NRLMSISE-00 Synthetic data
         3  Millstone Hill ISR
        94  UARS/HALOE
       121  TIMED/SABER
       122  ODIN/OSIRIS
       123  ENVISAT/MIPAS
       133  GOCE Accelerometer
       134  CHAMP Accelerometer
       198  NWP Reanalysis: MERRA2
       199  NWP Reanalysis: CFSR
       223  AURA/MLS
       226  ACE/FTS
       227  AIM/SOFIE
       320  Fort Collins Sodium Lidar
       340  Andes Sodium Lidar
       350  ALOMAR Sodium Lidar
       360  Boulder (CU STAR) Sodium Lidar
       370  Logan Sodium Lidar
       499  Density derived from orbital two-line elements
  KIND: KIND OF MEASUREMENT:
        -1  Pressure (hPa)
         0  Temperature (K)
         1  H Number Density (m^-3)
        16  O Number Density (m^-3)
        48  log10 Mass Density (kg/m^3)
  JDAY: NUMBER OF DAYS SINCE JAN 1, 1970
  UTSEC: UNIVERSAL TIME (s)
  ALT: GEODETIC ALTITUDE (km)
  LAT: GEODETIC LATITUDE (deg)
  LON: GEODETIC LONGITUDE (deg)
  VAL: MEASUREMENT VALUE
===============================================================================
