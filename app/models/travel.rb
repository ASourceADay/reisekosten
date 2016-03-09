class Travel < ActiveRecord::Base
  has_many :Drive, dependent: :destroy
  
  KM_PRICE = 0.3
  EUR12 = 12
  EUR24 = 24
  @expenses

  def calculate_expenses

  end
  
  def calculate_total_cost
     calculate_all_drives_km_price + calculate_employee_overnighter_away_from_home
  end
 
  def get_hours_between
    ((end_time - start_time) / 1.hour).round 
  end
  
  def hours_between(end_date,start_date)
    ((end_date - start_date) / 1.hour).round 
  end
  
  def employee_24h_away_from_home?
    true if hours_between(end_time, start_time) > 24 
  end
  
  def add_provision_expenses(amount, times)
    amount * times
  end
  
  def days_between(end_date, start_date)
    (end_date - start_date).to_i  
  end
  
  def calculate_arrival_departure_overnighter
      
  end
  
  def calculate_employee_overnighter_away_from_home
    if employee_24h_away_from_home?
       add_provision_expenses(EUR24, days_between(end_time.to_date, start_time.to_date))
    end
  end 
  
  def overnight_stay_away_plus_minus_1_day?(date)
    
  end
  
  def calculate_external_activities_without_overnighter
    
  end
  
  def calculate_total_km
    Drive.where( :travel_id => id ).sum :km_distance
  end 
  
  def calculate_all_drives_km_price
    get_km_price * calculate_total_km
  end 
      
  def employee_is_more_than_8h_away?
    
  end
  
  def employee_is_away_from_main_workplace?
    
  end
  
  def employee_is_away_from_residence?
    
  end
  
  def get_km_price
    KM_PRICE
  end
  
end

