*** (C) 2008-2017 Potsdam Institute for Climate Impact Research (PIK),
*** authors, and contributors see AUTHORS file
*** This file is part of MAgPIE and licensed under GNU AGPL Version 3
*** or later. See LICENSE file or go to http://www.gnu.org/licenses/
*** Contact: magpie@pik-potsdam.de

sets
   watdem_exo(wat_dem) exogenous water demands / industry, electricity, domestic, ecosystem /

        scen42 EFP policy
                  / off, on /

        scen42_to_dev(scen42,dev)
      /        off                . (lic, mic)
               on                . (hic) /
;