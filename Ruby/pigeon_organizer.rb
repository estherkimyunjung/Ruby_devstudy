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

pigeon_data.collect do |key, hash_value|
  hash_value.collect do |inner_key, name_array|
    name_array.collect do |pigeon_name|
      if !new_hash[pigeon_name]
        new_hash[pigeon_name] = {}
      end
      if !new_hash[pigeon_name][key]
        new_hash[pigeon_name][key] = []
      end
      new_hash[pigeon_name][key] << inner_key.to_s
    end 
  end
end

pp new_hash
