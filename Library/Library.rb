class Library 
    attr_accessor :title,:student_name, :date_due
    def initilize(title, student_name, date_due)
        @title = title
        # @rental_details = {
        #     @student_name = student_name
        #     @date_due = date_due
        # }
        @student_name = student_name
        @date_due = date_due
        # @rental_details = rental_details
    end
end  



