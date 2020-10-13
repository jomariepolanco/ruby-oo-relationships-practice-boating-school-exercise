class Student

    attr_accessor :first_name

    @@all = []

    def initialize(first_name)
        @first_name = first_name
        self.class.all << self 
    end

    def self.all
        @@all 
    end

    def add_boating_test(instructor, test_name, test_status)
        BoatingTest.new(self, instructor, test_name, test_status)
    end

    def self.find_student(first_name)
        self.all.find {|student| student.first_name == first_name}
    end

    def passed_tests
      boating_tests.select {|test| test.test_status == "passed"}
    end
    
    def grade_percentage
        (passed_tests.count.to_f / boating_tests.count) * 100 
    end

    def boating_tests
        BoatingTest.all.select {|test| test.student == self}
    end

    def all_instructors
        boating_tests.map {|test| test.instructor}
    end
end
#student has many boating test -
#student has manh instructors through boating test - 