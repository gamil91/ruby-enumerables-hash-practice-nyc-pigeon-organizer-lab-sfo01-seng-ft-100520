require 'pry'

def nyc_pigeon_organizer (pigeon_data)
  pigeon_data.each_with_object({}) do |(attribute, values), hash|
    values.each do |value, names|
      names.each do |pigeon_name|
     
        if hash != hash[pigeon_name]
          hash[pigeon_name] = {}
        end
        
        if hash != hash[pigeon_name][attribute]
          hash[pigeon_name][attribute] = []
        end
       binding.pry
        if hash != hash[pigeon_name][attribute][value] 
          hash[pigeon_name][attribute] << value.to_s
        end
        binding.pry
      end
    end 
  end
  hash
end
