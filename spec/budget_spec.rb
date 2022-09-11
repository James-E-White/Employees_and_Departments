require'pry'
require './lib/department.rb'
require'./lib/budget.rb'

RSpec.describe Budget do
  before(:each) do
    @bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
    @derek = Employee.new({name: "Derek Carr", age: "32", salary: "150000"})
    @russell = Employee.new({name: "Russell Wilson", age: "34", salary: "170000"})

    @customer_service = Department.new("Customer Service")
    @billing = Department.new("Billing")
    @human_resource = Department.new("Human Resource")
    @customer_service.hire(@bobbi)
    @billing.hire(@derek)
    @human_resource.hire(@russell)

    @budget = Budget.new("1987")

    @budget.add_department(@customer_service)
    @budget.add_department(@billing)
    @budget.add_department(@human_resource)
  end

  it'exist'do
    expect(@budget).to be_an_instance_of Budget
  end

  it'can have attributes'do
    expect(@budget.year).to eq("1987")

    #@budget.budget_year
  end

  it'can have departments'do

    #expect(@budget.departments.first).to eq(@customer_service)
    expect(@budget.departments).to eq([@customer_service, @billing, @human_resource])
    # expect(@budget.departments).to eq([])
    # @budget.expenses
    # expect(@budget.expenses).to eq(0)
  end

  it'can list departments with expenses less than $500'do
   @customer_service.expense(450)
   @billing.expense(550)
   @human_resource.expense(400)
   expect(@budget.cheap_departments).to eq([@customer_service, @human_resource])

  end

  it'can list all employees salaries'do


  
  expect(@budget.employee_salaries).to eq([100000, 150000, 170000])
  end
end
