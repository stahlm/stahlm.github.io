compute_seasonality_indices <- function(df_in) {
  # This function computes seasonality indices as described in Markham (1970) [https://doi.org/10.1111/j.1467-8306.1970.tb00743.x.]
  
  ##### Inputs
  # The input data frame must have monthly data and must contain the following columns with the names exactly as they appear below:
  # Month: containing numeric months (i.e., 1,2,3...,12)
  # observation_value: column containing the monthly variable of interest (e.g., precipitation)
  # group_name: column containing a unique name for site(s)/location(s) with monthly data.  If multiple sites are in the data frame, the function 
  # will compute SI and SC for each site.  
  
  
  #### Outputs
  # a data frame containing the seasonality indices for each site in the input data frame.  
  
    
  df_in <- df_in %>% 
    mutate(month_angle = 15 + (Month-1)*30) %>% 
    mutate(month_angle_radians = 2*pi*(month_angle/360))
  
  
  df_in <- df_in %>% 
    mutate(value_x = observation_value*cos(month_angle_radians),
           value_y = observation_value*sin(month_angle_radians)
    )
  
  
  df_seasonality <- df_in %>% 
    group_by(group_name) %>% 
    
    summarize(value_tot = sum(observation_value),
              value_tot_x = sum(value_x),
              value_tot_y = sum(value_y)
    )
  
  
  df_seasonality <- df_seasonality %>% 
    mutate(SI = (((value_tot_x^2) + (value_tot_y^2))^0.5)/value_tot)
  
  
  df_seasonality <- df_seasonality %>% 
    
    mutate(a_coeff = case_when(value_tot_x <= 0 ~ 180,
                               value_tot_x > 0 & value_tot_y > 0 ~ 0,
                               value_tot_x > 0 & value_tot_y <= 0 ~ 360
    )) %>% 
    
    mutate(SC = atan(value_tot_y/value_tot_x)*(180/pi) + a_coeff) %>% 
    
    select(-a_coeff)
  
  
  list(df_in, df_seasonality)
}


