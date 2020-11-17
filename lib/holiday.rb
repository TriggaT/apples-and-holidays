require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  {
    :winter => {
     :christmas => ["Lights", "Wreath"],
      :new_years => ["Party Hats"]
    },
    :summer => {
      :fourth_of_july => ["Fireworks", "BBQ"]
    },
    :fall => {
     :thanksgiving => ["Turkey"]
   },
  :spring => {
    :memorial_day => ["BBQ"]
   }
  }
  holiday_supplies[:summer][:fourth_of_july][1]
  
  
  # return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  {
    :winter => {
     :christmas => ["Lights", "Wreath"],
      :new_years => ["Party Hats"]
    },
    :summer => {
      :fourth_of_july => ["Fireworks", "BBQ"]
    },
    :fall => {
     :thanksgiving => ["Turkey"]
   },
  :spring => {
    :memorial_day => ["BBQ"]
   }
  }
  holiday_supplies.each do | season , holiday|
    holiday.each do |day, supply|
      if season = :winter
      supply << "Balloons"
      end
    end
  end 
    
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

end


def add_supply_to_memorial_day(holiday_hash, supply)
  #   {
  #   :winter => {
  #    :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #    :thanksgiving => ["Turkey"]
  #  },
  # :spring => {
  #   :memorial_day => ["BBQ"]
  #  }
  # }
# binding.pry
    holiday_hash[:spring][:memorial_day] << supply
    
      
    


  # add the second argument to the memorial day array

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  
  holiday_hash[season] = {holiday_name => supply_array.to_a}

  
  
  
  # code here
  # remember to return the updated hash

end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten 
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.to_s.capitalize}:"
    holiday.each do |name, supply|
      cap_name = name.to_s.split('_').each do |word|
        word.capitalize!
      end
      cap_name = cap_name.join(" ")
      puts "  #{cap_name}: #{supply.join(", ")}"
    end
  end
end










def all_holidays_with_bbq(holiday_hash)
  bbq_holiday = []
  holiday_hash.keys.each do |season|
    holiday_hash[season].each do |day, supply|
      bbq_holiday << day if supply.include?("BBQ")
    end
  end
  bbq_holiday



  
  
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end







