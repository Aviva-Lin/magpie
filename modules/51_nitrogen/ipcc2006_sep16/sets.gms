*** (C) 2008-2017 Potsdam Institute for Climate Impact Research (PIK),
*** authors, and contributors see AUTHORS file
*** This file is part of MAgPIE and licensed under GNU AGPL Version 3
*** or later. See LICENSE file or go to http://www.gnu.org/licenses/
*** Contact: magpie@pik-potsdam.de

sets
   emis_uncertainty51 different estimates for emission parameters
   /best,low, high/

   ipcc_ef51 ipcc emission factors
   /frac_gasf,frac_gasm,frac_leach,frac_leach_h,ef_1,ef_1fr,ef_2,ef_4,ef_5/

   emis_source_n51(emis_source)
   / inorg_fert, man_crop, awms, resid, man_past, som, rice /

   emis_source_nonitrogen51(emis_source) emission sources
   / rice, ent_ferm,
     resid_burn,
     crop_vegc, crop_litc, crop_soilc,
     past_vegc, past_litc, past_soilc,
     forestry_vegc, forestry_litc, forestry_soilc,
     forest_vegc, forest_litc, forest_soilc,
     urban_vegc, urban_litc, urban_soilc,
     other_vegc, other_litc, other_soilc,
     beccs/
;
