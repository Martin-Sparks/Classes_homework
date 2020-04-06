require('minitest/autorun')
require('minitest/reporters')
require_relative('../Library')
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

class LibraryTest < MiniTest::Test 

    def setup 
        @book = Library.new("Dave","Jeff","01/06/20")





    #     @library = Library.new(
    #         [
    #          {
    #             title: "lord_of_the_rings",
    #             rental_details: {
    #             student_name: "Jeff",
    #             date: "01/06/20",
    #             }
    #         },
    #         {
    #             title: "50 Shades of Gray",
    #             rental_details: {
    #             student_name: "Martin",
    #             date: "01/02/20",
    #             }
    #         },
    #         {
    #             title: "Mr Smith",
    #             rental_details: {
    #             student_name: "Martin",
    #             date: "01/02/20",
    #             }
    #           }
    #         ]
    #     )
    end 
    def test_name 
        p @book
    end 
    
end 

