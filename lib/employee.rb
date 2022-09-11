class Employee
 attr_reader :name, :age, :salary

 def initialize(info)
   @name = info[:name]
   #[].to_i ensures it is an interger and not
   #returning a string.
   @age = info[:age].to_i
   @salary = info[:salary].to_i
 end
end
