		International Reference Ionosphere 2012 (IRI-2012) Software
		----------------------------------------------------------

================================================================================

The IRI is a joint project of the Committee on Space Research (COSPAR) and the 
International Union of Radio Science (URSI). IRI is an empirical model specifying
monthly averages of electron density, ion composition, electron temperature, and 
ion temperature in the altitude range from 50 km to 1500 km.

This directory includes the FORTRAN program, coefficients, and indices files for 
the latest version of the International Reference Ionosphere model: IRI-2012. This
version includes several options for different parts and parameters. A logical
array JF(50) is used to set these options. The IRI-recommended set of options
can be found in the COMMENT section at the beginning of IRISUB.FOR. IRITEST.FOR 
sets these options as the default.

Please check the COMMENTS at the beginning of each program file for a chronology
of the changes and when they were implemented.

More information about the different options can be found at 
https://omniweb.gsfc.nasa.gov/vitmo/iri2016_help.html

The compilation/link command in Fortran 77 is:
f77 -o iri iritest.for irisub.for irifun.for iritec.for iridreg.for igrf.for 
cira.for iriflip.for
 
Directory Contents:
-----------------------------------------------------------------------------------

00_iri2012.tar	TAR file that includes all files from this directory plus the 
				coefficients files that are explained below. The file was created 
				in UNIX using 'tar -cvf 00_iri2012.tar *'. UNIX command to unpack 
				is "tar -xvf 00_iri2012.tar". 

00_iri2012_readme.txt				this file

00_iri2012_License.txt				License file

00_iri2012_update_history.txt		List of which files were changed when
				 
irisub.for      This file contains the main subroutine iri_sub. It computes 
                height profiles of IRI output parameters (Ne, Te, Ti, Ni, vi) 
                for specified date and location. Also included is the 
                subroutine iri_web that computes IRI output parameters versus
                latitude, longitude (geog. or geom.), year, day of year, hour 
                (LT or UT), or month. iri_web calculates the additional IRI
                output parameter (vI)TEC which is the vertical Total Electron 
                Content (TEC) up to a user-specified upper altitude boundary
                htec_max. An example of how to call and use iri_web is shown 
                in iritest.for. 

irifun.for      This file contains the subroutines and functions that are 
                required for running IRI.


iriflip.for     Subroutines for the FLIP-related new model for the bottomside
                ion composition of Richards et al.
                
iridreg.for     Subroutines for the D region models of Friedrich-Torkar
                and of Danilov et al.

iritec.for      This file includes the subroutines for computing the ionospheric 
                electron content from 60km up to a specified upper limit. 

cira.for        This file includes the subroutines and functions for computing 
                the COSPAR International Reference Ionosphere (NRLMSIS-00) 
                neutral temperature and densities. 

igrf.for        This file includes the subroutines for the International
                Geomagnetic Reference Field (IGRF). Please check the COMMENTS
                at the beginning of the program for details on which IGRF
                version was implemented when.

dgrf%%%%.dat    Definitive IGRF coefficients for the years 1945 to 2000 in steps
                of 5 years (%%%%=1945, 1950, etc.)(ASCII).
igrf%%%%.dat    Prelimenary IGRF coefficients for most recent year (ASCII).
igrf%%%%s.dat   IGRF coefficients for extrapolating 5 years into the future (ASCII).

iritest.for 	Test program indicating how to use the IRI subroutines. Compilation
				of iritest.for requires irisub.for, irifun.for, iritec.for, 
				iridreg.for, iriflip.for, igrf.for, and cira.for.

iriorbit.for	Simple program for calculating IRI parameters along an orbit.
iriorbitmax.for	Program for computing IRI F2 peak parameters along a satellite orbit.
                
-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------

Indices files that are needed for all versions of the IRI program. These files are 
updated twice a year and are available at http://irimodel.org/indices/:

ig_rz.dat       This file(s) contains the 12-month running mean of the sunspot
                number Rz and of the ionospheric indices IG for the time period 
                from Jan 1958 onward. The file is in simple text (ASCII) format 
                and is read by subroutine read_ig_rz in irifun.for. The file
                structure is explained in the COMMENTS section of this subroutine.
               
apf107.dat      This file provides the 3-hour ap magnetic index and F10.7 daily
                81-day and 365-day indices from 1960 onward. The file is in simple 
                text (ASCII) format and is read by subroutine readapf107 in 
                irifun.for. The file structure is explained in the COMMENTS section 
                of this subroutine.

Coefficients files that are needed for all versions of the IRI program. These files 
are included in 00_iri2012.tar and are available at http://irimodel.org/COMMON_FILES/:

CCIR%%.ASC,     Coefficient files for the global representation of the F2 peak
   URSI%%.ASC	peak parameters (foF2, M3000) where %% = Month+10. CCIR is
                the model recommended by the International Committee Consultative  
                on Radiocommunication (CCIR) of the International Union of 
                Telecommunication (ITU). URSI is the model recommended by the 
                International Union of Radio Science. IRI recommends the CCIR
                model for the continents and the URSI model for the ocean areas.
                If a single model is needed globally URSI is recommended. 
                REFERENCES: 
                CCIR: Jones and Gallet, Telecomm. J. 29, 129, 1962 and 32, 18, 1965. 
                It is the model recommended by the Comite Consultatif International 
                des Radiocommunications (CCIR) of the International Telecommunications 
                Union (Report 340-4, ITU, Geneva, 1967). 
                URSI: Rush et al., Telecomm. J. 56, 179 - 182, 1989. 
                
-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------

NOTE: Please consult the 'listing of changes' in the comments section at the top 
of each one of these programs for recent corrections and improvements.

More information about the IRI project can be found at  irimodel.org
including a Frequently Asked Questions (FAQ) listing.

IRI parameters can be calculated and plotted online at sites given on irimodel.org


----------------------------- dbilitza@gmu.edu ------------------ April 16 2018
