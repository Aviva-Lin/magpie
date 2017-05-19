*** (C) 2008-2017 Potsdam Institute for Climate Impact Research (PIK),
*** authors, and contributors see AUTHORS file
*** This file is part of MAgPIE and licensed under GNU AGPL Version 3
*** or later. See LICENSE file or go to http://www.gnu.org/licenses/
*** Contact: magpie@pik-potsdam.de



positive variables
  vm_dem_processing(i,kall)          demand for processing use
  v20_dem_processing(i,processing_subst20,kpr) demand for processing use by process
  vm_processing_costs(i)            costs of food processing
  v20_secondary_substitutes(i,ksd,kpr) substitutes for inferior secondary products (Mt DM)
  vm_secondary_overproduction(i,kall,kpr) overproduction of secondary couple products (Mt Dm)
;

equations
     q20_processing(i,kpr,ksd)                processing equation
     q20_processing_aggregation_nocereals(i,kpr) connecting processing activity to processing flows
     q20_processing_aggregation_cereals(i,kcereals20)    connecting processing activity to fooduse for milling
     q20_processing_aggregation_cotton(i)        connecting processing activity to production for cotton ginning
     q20_processing_substitution(i,dm_ge_nr)                  substitution of inferior secondary products
;

*#################### R SECTION START (OUTPUT DECLARATIONS) ####################
parameters
 ov_dem_processing(t,i,kall,type)                         demand for processing use
 ov20_dem_processing(t,i,processing_subst20,kpr,type)     demand for processing use by process
 ov_processing_costs(t,i,type)                            costs of food processing
 ov20_secondary_substitutes(t,i,ksd,kpr,type)             substitutes for inferior secondary products (Mt DM)
 ov_secondary_overproduction(t,i,kall,kpr,type)           overproduction of secondary couple products (Mt Dm)
 oq20_processing(t,i,kpr,ksd,type)                        processing equation
 oq20_processing_aggregation_nocereals(t,i,kpr,type)      connecting processing activity to processing flows
 oq20_processing_aggregation_cereals(t,i,kcereals20,type) connecting processing activity to fooduse for milling
 oq20_processing_aggregation_cotton(t,i,type)             connecting processing activity to production for cotton ginning
 oq20_processing_substitution(t,i,dm_ge_nr,type)          substitution of inferior secondary products
;
*##################### R SECTION END (OUTPUT DECLARATIONS) #####################
