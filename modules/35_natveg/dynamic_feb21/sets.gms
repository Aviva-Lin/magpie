*** |  (C) 2008-2021 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de

sets
  pol35 Land protection policy
  / none, npi, ndc /

  prot_type Conservation priority areas
  / BH, CPD, FF, LW, WDPA, HalfEarth /

  pol_stock35 Land types for land protection policies
  / forest, other /

  driver_source Source of deforestation drivers
  / overall, deforestation, shifting_agriculture,
  forestry, wildfire, urbanization /

  combined_loss(driver_source) Combined loss from fire plus agriculture
  / shifting_agriculture,wildfire /

;
