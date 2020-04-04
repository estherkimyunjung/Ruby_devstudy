def game_hash
  
  result = {}
  
  ### location
  result[:home] = {}
  result[:away] = {}
  
  #### team_data (attribute, data)

  home_team = result[:home]
  home_team[:team_name] = "Brooklyn Nets"
  home_team[:colors] = []
  home_team[:colors] << "Black"
  home_team[:colors] << "White"
  home_team[:players] = []
  
  away_team = result[:away]
  away_team[:team_name] = "Charlotte Hornets"
  away_team[:colors] = []
  away_team[:colors] << "Turquoise"
  away_team[:colors] << "Purple"
  away_team[:players] = []


  #### players_list
  
  h_players =  home_team[:players]
  h_players << h_players[0]
  h_players << h_players[1]
  h_players[0] = {}
  h_players[1] = {}
  h_players[2] = {}
  h_players[3] = {}
  h_players[4] = {}

  
  h_players[0][:player_name] = "Alan Anderson"
  h_players[0][:number] = 0
  h_players[0][:shoe] = 16
  h_players[0][:points] = 22
  h_players[0][:rebounds] = 12
  h_players[0][:assists] = 12
  h_players[0][:steals] = 3
  h_players[0][:blocks] = 1
  h_players[0][:slam_dunks] = 1

  h_players[1][:player_name] = "Reggie Evans"
  h_players[1][:number] = 30
  h_players[1][:shoe] = 14
  h_players[1][:points] = 12
  h_players[1][:rebounds] = 12
  h_players[1][:assists] = 12
  h_players[1][:steals] = 12
  h_players[1][:blocks] = 12
  h_players[1][:slam_dunks] = 7

  h_players[2][:player_name] = "Brook Lopez"
  h_players[2][:number] = 11
  h_players[2][:shoe] = 17
  h_players[2][:points] = 17
  h_players[2][:rebounds] = 19
  h_players[2][:assists] = 10
  h_players[2][:steals] = 3
  h_players[2][:blocks] = 1
  h_players[2][:slam_dunks] = 15

  h_players[3][:player_name] = "Mason Plumlee"
  h_players[3][:number] = 1
  h_players[3][:shoe] = 19
  h_players[3][:points] = 26
  h_players[3][:rebounds] = 11
  h_players[3][:assists] = 6
  h_players[3][:steals] = 3
  h_players[3][:blocks] = 8
  h_players[3][:slam_dunks] = 5

  h_players[4][:player_name] = "Jason Terry"
  h_players[4][:number] = 31
  h_players[4][:shoe] = 15
  h_players[4][:points] = 19
  h_players[4][:rebounds] = 2
  h_players[4][:assists] = 2
  h_players[4][:steals] = 4
  h_players[4][:blocks] = 11
  h_players[4][:slam_dunks] = 1

# binding.pry 

  a_players =  away_team[:players]
  a_players << a_players[0]
  a_players << a_players[1]
  a_players[0] = {}
  a_players[1] = {}
  a_players[2] = {}
  a_players[3] = {}
  a_players[4] = {}
  
  a_players[0][:player_name] = "Jeff Adrien"
  a_players[0][:number] = 4
  a_players[0][:shoe] = 18
  a_players[0][:points] = 10
  a_players[0][:rebounds] = 1
  a_players[0][:assists] = 1
  a_players[0][:steals] = 2
  a_players[0][:blocks] = 7
  a_players[0][:slam_dunks] = 2

  a_players[1][:player_name] = "Bismack Biyombo"
  a_players[1][:number] = 0
  a_players[1][:shoe] = 16
  a_players[1][:points] = 12
  a_players[1][:rebounds] = 4
  a_players[1][:assists] = 7
  a_players[1][:steals] = 22
  a_players[1][:blocks] = 15
  a_players[1][:slam_dunks] = 10

  a_players[2][:player_name] = "DeSagna Diop"
  a_players[2][:number] = 2
  a_players[2][:shoe] = 14
  a_players[2][:points] = 24
  a_players[2][:rebounds] = 12
  a_players[2][:assists] = 12
  a_players[2][:steals] = 4
  a_players[2][:blocks] = 5
  a_players[2][:slam_dunks] = 5

  a_players[3][:player_name] = "Ben Gordon"
  a_players[3][:number] = 8
  a_players[3][:shoe] = 15
  a_players[3][:points] = 33
  a_players[3][:rebounds] = 3
  a_players[3][:assists] = 2
  a_players[3][:steals] = 1
  a_players[3][:blocks] = 1
  a_players[3][:slam_dunks] = 0

  a_players[4][:player_name] = "Kemba Walker"
  a_players[4][:number] = 33
  a_players[4][:shoe] = 15
  a_players[4][:points] = 6
  a_players[4][:rebounds] = 12
  a_players[4][:assists] = 12
  a_players[4][:steals] = 7
  a_players[4][:blocks] = 5
  a_players[4][:slam_dunks] = 12
  
# binding.pry
  result
end
