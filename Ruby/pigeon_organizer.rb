pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

new_hash = {}

pigeon_data.collect do |color_key, color_value|
  color_value.collect do |name_key, name_value|
    name_value.collect do |name|
      if !new_hash[name]
        new_hash[name] = {}
      end
      if !new_hash[name][color_key]
        new_hash[name][color_key] = []
      end
      new_hash[name][color_key] << name_key.to_s
    end 
  end
end

puts new_hash
