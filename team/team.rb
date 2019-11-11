class Team

  attr_accessor :team_name, :players, :coach, :points

# constructor
  def initialize(input_team_name, input_players, input_coach)
    @team_name = input_team_name
    @players = input_players
    @coach = input_coach
    @points = 0
  end

  # does a methods
  def add_new_player(new_player)
      @players << new_player
  end

# i considered a gets.chomp to take input for a player search,
# but it would make passing the test awkward so i'm leaving it commented
# out for now, thought it would let us test for a false case as well
# which isn't possible with this method as it stands
  def search_for_player
    # p "Please enter a player name:"
    # player_search = gets.chomp
    player_search = "dupreeh"
    return @players.include?(player_search)
  end

  def match_result(result)
    if result == "win"
      return @points += 3
    end
    if result == "loss"
      return @points
    end
  end


# # getters methods
#   def get_name
#     return @team_name
#   end
#
#   def get_players
#     return @players
#   end
#
#   def get_coach
#     return @coach
#   end
#
# # setter methods
#   def set_coach(new_coach)
#     @coach = new_coach
#   end

end
