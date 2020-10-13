class Instructor

    attr_reader :name 

    @@all = []

    def initialize(name)
        @name = name
        @@all << self  
    end

    def self.all
        @@all 
    end


    def pass_student(student, test_name)
     boating_tests.find do |test| 
      if test.student == student && test.test_name == test_name
        test.test_status = "passed"
      elsif test.student == nil || test.test_name == nil 
        BoatingTest.new(student, self, test_name, "passed")
      end
     end
    end

    def fail_student(student, test_name)
      boating_tests.find do |test| 
      if test.student == student && test.test_name == test_name
        test.test_status = "failed"
      elsif test.student == nil || test.test_name == nil 
        BoatingTest.new(student, self, test_name, "failed")
      end
     end
    end

    def boating_tests
        BoatingTest.all.select {|test| test.instructor == self}
    end

    def all_students 
        boating_tests.map {|test| test.student}
    end

    def passed_students
      boating_tests.select {|test| test.test_status == "passed"}
    end
end
#has many students through boating tests-
#has many boating tests -