*** (C) 2008-2017 Potsdam Institute for Climate Impact Research (PIK),
*** authors, and contributors see AUTHORS file
*** This file is part of MAgPIE and licensed under GNU AGPL Version 3
*** or later. See LICENSE file or go to http://www.gnu.org/licenses/
*** Contact: magpie@pik-potsdam.de



q15_food_demand(i2,kfo) ..
                (vm_dem_food(i2,kfo) + sum(ct,f15_household_balance_flow(ct,i2,kfo,"dm")))
                * sum(ct,f15_nutrition_attributes(ct,kfo,"kcal"))
                /365 * 10**6
                =e=
                sum(ct,i15_pop(ct,i2)) * v15_kcal_pc(i2,kfo)
                ;

**** ### Elastic Food Demand

q15_aim ..
          v15_objective
          =e=
          sum(iso,v15_income_pc_real_iso(iso));

q15_aim_standalone ..
          v15_objective_standalone
          =e=
          sum(iso,v15_kcal_pc_iso(iso));

q15_budget(iso) ..
         sum(ct,i15_gdp_pc_iso(ct,iso))
         =g=
         sum((ct,kfo), v15_demand_quantity(iso,kfo)*p15_prices_kcal(ct,iso,kfo))
         + v15_demand_nonfood(iso)*s15_prices_nonfood;

q15_real_income(iso) ..
         v15_income_pc_real_iso(iso)
         =e=
         sum(kfo, v15_demand_quantity(iso,kfo)*i15_prices_initial_kcal(iso,kfo))
         + v15_demand_nonfood(iso)*s15_prices_nonfood_initial;
;


q15_food_kcal(iso) ..
         v15_kcal_pc_iso(iso)
         =e=
         sum(ct,exp(2.825+m_year(ct)*0.002131)*v15_income_pc_real_iso(iso)**(0.162+m_year(ct)*(-0.00003124)));

q15_food_ls(iso) ..
         v15_livestock_share_iso(iso)
         =e=
         sum(ct,
                 (1.372/100 - 5.295 /1000000* m_year(ct)) * v15_income_pc_real_iso(iso)**0.5
                 * exp(-(-1.102 /10000 + 6.404  / 100000000 * m_year(ct))*v15_income_pc_real_iso(iso))
         );

q15_food_vegfruit(iso) ..
         v15_vegfruit_share_iso(iso)
         =e=
         0.09
         ;

q15_food_kcal_livestock(iso,kap) ..
         v15_demand_quantity(iso,kap)
         =e=
         v15_kcal_pc_iso(iso) * v15_livestock_share_iso(iso)
         * sum(ct,f15_livestock_kcal_structure_iso(ct,iso,kap));

q15_food_kcal_staples(iso,kst) ..
         v15_demand_quantity(iso,kst)
         =e=
         v15_kcal_pc_iso(iso) *
         (1 - v15_livestock_share_iso(iso) - v15_vegfruit_share_iso(iso))
         * sum(ct,f15_staples_kcal_structure_iso(ct,iso,kst)) ;

q15_food_kcal_vegetables(iso) ..
         v15_demand_quantity(iso,"others")
         =e=
         v15_kcal_pc_iso(iso) *
         v15_vegfruit_share_iso(iso);
