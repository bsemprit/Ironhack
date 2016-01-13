require_relative("lib/employee.rb")
require_relative("lib/hourly.rb")
require_relative("lib/salaried.rb")
require_relative("lib/multi.rb")
require_relative("lib/payroll_class.rb")

josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)
employees = [josh, nizar, ted]
this_week = Payroll.new(employees)

this_week.pay_employees
this_week.notify_employee(employees)