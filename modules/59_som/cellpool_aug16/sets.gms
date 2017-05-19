*** (C) 2008-2017 Potsdam Institute for Climate Impact Research (PIK),
*** authors, and contributors see AUTHORS file
*** This file is part of MAgPIE and licensed under GNU AGPL Version 3
*** or later. See LICENSE file or go to http://www.gnu.org/licenses/
*** Contact: magpie@pik-potsdam.de

sets
noncropland59(land)
/past, forestry, forest, urban, other/

pools59
/cropland,noncropland/

tillage59
/full_tillage,reduced_tillage,no_tillage /

inputs59
/low_input,medium_input,high_input_nomanure,high_input_manure /

climate59 climate classes of IPCC 2006
/temperate_dry,temperate_moist,tropical_dry,tropical_moist/

clcl_climate59(clcl,climate59) climate classification types
           /
           Af .(tropical_moist) "equatorial fully humid"
           Am .(tropical_moist) "equatorial monsoonal"
           As .(tropical_moist) "equatorial summer dry"
           Aw .(tropical_moist) "equatorial winter dry"
           BSh .(tropical_dry) "arid steppe hot arid"
           BSk .(temperate_dry) "arid steppe cold arid"
           BWh .(tropical_dry) "arid desert hot arid"
           BWk .(temperate_dry) "arid desert cold arid"
           Cfa .(temperate_moist) "warm temperate fully humid hot summer"
           Cfb .(temperate_moist) "warm temperate fully humid warm summer"
           Cfc .(temperate_moist) "warm temperate fully humid cool summer"
           Csa .(temperate_moist) "warm temperate summer dry hot summer"
           Csb .(temperate_moist) "warm temperate summer dry warm summer"
           Csc .(temperate_moist) "warm temperate summer dry cool summer"
           Cwa .(temperate_moist) "warm temperate winter dry hot summer"
           Cwb .(temperate_moist) "warm temperate winter dry warm summer"
           Cwc .(temperate_moist) "warm temperate winter dry cool summer"
           Dfa .(temperate_moist) "snow fully humid hot summer"
           Dfb .(temperate_moist) "snow fully humid warm summer"
           Dfc .(temperate_moist) "snow fully humid cool summer"
           Dfd .(temperate_moist) "snow fully humid extremely continental"
           Dsa .(temperate_moist) "snow summer dry hot summer"
           Dsb .(temperate_moist) "snow summer dry warm summer"
           Dsc .(temperate_moist) "snow summer dry cool summer"
           Dsd .(temperate_dry) "snow summer dry extremely continental"
           Dwa .(temperate_moist) "snow winter dry hot summer"
           Dwb .(temperate_moist) "snow winter dry warm summer"
           Dwc .(temperate_moist) "snow winter dry cool summer"
           Dwd .(temperate_dry) "snow winter dry extremely continental"
           EF .(temperate_dry) "polar polar frost"
           ET .(temperate_moist) "polar polar tundra"
           /
;
