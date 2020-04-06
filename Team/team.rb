class Team

    attr_reader :name, :players, :points
    attr_accessor :coach

    def initialize(name, players, coach)
        @name = name
        @players = players
        @coach = coach
        @points = 0
    end

    def add_player(new_player)
        @players << new_player
    end

    def in_team?(player_name)
        return @players.include?(player_name)
    end 

    def play_game(win_or_lose)
        @points += 1 if win_or_lose == "win"
    end

end