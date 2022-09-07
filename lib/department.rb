class Department
   attr_reader :name, :employees, :expenses
  def initialize(name)
    @name = name
    @employees =[]
    @expenses = []
  end

  def hire(employee)
    @employees << employee
  end

  def expenses(expense)
    @expenses += expense
  end
end
