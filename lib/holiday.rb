require 'pry'
  holiday_hash = {
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
def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |key, value|
    value << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |seasons, holidays|
    puts "#{seasons.to_s.capitalize!}:"
    holidays.each do |holiday, supplies|
      capitalized_holiday = holiday.to_s.split("_")
      capitalized_holiday.collect do |word|
        word.capitalize!
      end
      puts "  #{capitalized_holiday.join(" ")}: #{supplies.join(", ")}"
    end
  end
end
all_supplies_in_holidays(holiday_hash)

def all_holidays_with_bbq(holiday_hash)
  arr = []
  holiday_hash.each do |season, holidays|
     holidays.each do |holiday, supplies|
       if supplies.include?("BBQ")
         arr << holiday
       end
     end
    end
    arr
  end
