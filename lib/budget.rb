class Budget
   attr_reader :year,
               :departments

 def initialize(year)
    @year = year
    @departments = []
 end

 def add_department(department)
   @departments << department
 end


 def cheap_departments
   #@departments.find_all do |department|
   #department.expenses < 500
  #end
   @departments.find_all { |department| department.expenses < 500 }
   # @cheap_departments = []
   # @departments.each do |department|
   #   if department.expenses < 500
   #     @cheap_departments << department
   #   end
   # end
   #cheap_departments
  end

 def employee_salaries
  # @budget.departments[1].employees[0].salary
  @departments.flat_map { |department| department.employees.map { |employee|employee.salary } }
 #
 #  @departments.flat_map do |department|
 #   department.employees.map do |employee|
 #     employee.salary
 #   end
 #
 # end

 end

 #   @employee_salaries = []
 #   @employee_salaries.each do |salary|
 #     @employee_salaries << salary.to_i
 #   end
 # end
 # @employee_salaries
end
