require './lib/department'
require './lib/employee'
require'pry'

RSpec.describe Department do
  before do
  @customer_service = Department.new("Customer Service")
  end

  it'exists'do
  expect(@customer_service).to be_an_instance_of(Department)

  end

  # it'can have employees'do
  # expect(@customer_service.employees).to eq([])

  # end

  it'can hire employees'do

  expect(@customer_service.employees).to eq([])

  bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
  aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})

  @customer_service.hire(bobbi)
  @customer_service.hire(aaron)

  expect(@customer_service.employees).to eq([bobbi, aaron])

  end

  it'can have expenses'do

  @customer_service.expenses

  expect(@customer_service.expenses).to eq(0)

  @customer_service.expense(100)
  @customer_service.expense(25)

  expect(@customer_service.expenses).to eq(125)
  end
end
