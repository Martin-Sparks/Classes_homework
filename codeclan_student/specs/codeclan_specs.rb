require('minitest/autorun')
require('minitest/reporters')
require_relative('../codeclan.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class StudentTest < MiniTest::Test

    def setup
        @student = Student.new("Dave", "E40")
    end

    def test_name
        assert_equal("Dave", @student.name)
    end

    def test_cohort
        assert_equal("E40", @student.cohort)
    end

    def test_set_name 
        @student.name = "Martin"
        assert_equal("Martin", @student.name)
    end

    def test_set_cohort 
        @student.cohort = "E39"
        assert_equal("E39", @student.cohort)
    end

    def test_talk
        assert_equal("I can talk!", @student.talk)
    end

    def test_say_favourite_language
        assert_equal("I love Ruby", @student.say_favourite_language("Ruby"))
    end
    
end


