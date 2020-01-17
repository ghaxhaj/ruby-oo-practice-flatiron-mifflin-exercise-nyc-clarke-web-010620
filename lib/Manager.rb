class Manager
    attr_accessor :name, :department, :age
    @@all = []

    def initialize(name,department,age)
        @name = name
        @department = department
        @age = age 

        @@all << self
    end

    def self.all
        @@all
    end

    def employee
        Employee.all.select do |employee|
            employee.manager == self
        end
    end

    def hire_employee(name,salary)
        Employee.new(name,salary,self)
    end

    def self.all_departments
        self.all.map do |manager|
            manager.department
        end
    end

    def self.average_age
        array = self.all.map {|manager| manager.age}
        sum = array.inject(0) {|sum,x| sum += x}
        average = sum / array.count
        average.to_f
    end
end
