class Employee
    attr_accessor :name, :salary, :manager
    @@all = []

    def initialize(name,salary,manager)
        @name = name
        @salary = salary
        @manager = manager
        @@all << self
    end

    def self.all
        @@all
    end

    def manager_name 
        self.manager.name
    end

    def self.paid_over(amount)
        self.all.select do |employee|
            employee.salary > amount
        end 
    end

    def self.find_by_department(department_name)
        self.all.select {|employee|
            employee.manager.department == department_name}.first
    end

    def tax_bracket
        Employee.all.select {|employee|
         employee.salary > self.salary-1000 && self.salary < self.salary + 1000}
        end
end
