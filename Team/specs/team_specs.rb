require('minitest/autorun')
require('minitest/reporters')
require_relative('../team')
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

class TeamTest < MiniTest::Test 
    
    def setup
        @team = Team.new(
            "Blue Weasels",
            ["Bob", "Jon", "Jill"],
            "Coachy McCoach Coach"
        )

    end

    def test_name
        assert_equal("Blue Weasels", @team.name)
    end 

    def test_players
        assert_equal(["Bob", "Jon", "Jill"], @team.players)
    end 

    def test_coach
        assert_equal("Coachy McCoach Coach", @team.coach)
    end 

    def test_set_coach
        @team.coach = "Dexter Morgan"
        assert_equal("Dexter Morgan", @team.coach)
    end 

    def test_add_player
        @team.add_player("Jack")
        assert_equal(4, @team.players.length)
    end

    def test_in_team__true
        assert_equal(true, @team.in_team?("Bob"))
    end

    def test_in_team__false
        assert_equal(false, @team.in_team?("James"))
    end

    def test_play_game__win
        @team.play_game("win")
        assert_equal(1, @team.points)
    end

    def test_play_game__lose
        @team.play_game("lose")
        assert_equal(0, @team.points)
    end
    
end