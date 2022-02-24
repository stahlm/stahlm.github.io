compute_seaonality_indices <- function(df_in) {
  
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
}