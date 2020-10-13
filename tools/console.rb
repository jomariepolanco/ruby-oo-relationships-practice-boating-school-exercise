require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

spongebob = Student.new("Spongebob")
patrick = Student.new("Patrick")
squidward = Student.new("Squidward")

t1 = Instructor.new("Miss P")
t2 = Instructor.new("Danny")
t3 = Instructor.new("Chris")
t4 = Instructor.new("Angel")

test1 = BoatingTest.new(spongebob, t1, "test 1", "passed")
test2 = BoatingTest.new(squidward, t1, "test 2", "passed")
test3 = BoatingTest.new(patrick, t1, "test 3", "pending")
test4 = BoatingTest.new(squidward, t1, "test 4", "pending")
test5 = BoatingTest.new(patrick, t1, "test 5", "failed")
test6 = BoatingTest.new(spongebob, t1, "test 1", "failed")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line

