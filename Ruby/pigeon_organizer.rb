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
 
pigeon_data.reduce({}) do |memo, pair|
  pair.reduce({}) do |memo, pair|
    p memo # First block parameter
    p pair # Second block parameter
    memo # Return value for the block. It becomes the memo in the next go-round
  end # Second block parameter
  memo # Return value for the block. It becomes the memo in the next go-round
end
