*** (C) 2008-2017 Potsdam Institute for Climate Impact Research (PIK),
*** authors, and contributors see AUTHORS file
*** This file is part of MAgPIE and licensed under GNU AGPL Version 3 
*** or later. See LICENSE file or go to http://www.gnu.org/licenses/
*** Contact: magpie@pik-potsdam.de


q57_total_costs(i2) ..
      vm_maccs_costs(i2)
       =g=
      sum((ct,emis_source),
        p57_maccs_costs_integral(ct,i2,emis_source,"n2o_n_direct") * vm_btm_reg(i2,emis_source,"n2o_n_direct") +
        p57_maccs_costs_integral(ct,i2,emis_source,"ch4") * vm_btm_reg(i2,emis_source,"ch4")
       );
