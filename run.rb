require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'

m1 = Manager.new("Mike","sales",23)
m2 = Manager.new("Terry","accounting",42)
e1 = Employee.new("Jack",69500,m1)
e2 = Employee.new("Megan",70000,m1)
e3 = Employee.new("Brian",420000,m2)


binding.pry
puts "done"
