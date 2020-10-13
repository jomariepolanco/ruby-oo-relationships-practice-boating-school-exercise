class BoatingTest

    attr_accessor :student, :instructor, :test_status
    attr_reader :test_name  

    @@all = []

    def initialize(student, instructor, test_name, test_status)
        @student = student
        @instructor = instructor
        @test_name = test_name 
        @test_status = test_status
        self.class.all << self 
    end

    def self.all
        @@all 
    end
end
#boating test belongs to student - 
#boating test belongs to instructor-