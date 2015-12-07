class Employee

  attr_reader :name, :title, :salary, :boss

  def initialize(name, title, salary, boss)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
  end

  def bonus(multiplier)
    @salary * multiplier
  end

end



class Manager < Employee


  attr_accessor :subordinates

  def initialize(name, title, salary, boss)
    super(name, title, salary, boss)
    @subordinates = []
  end

  def add_subordinate(sub)
    @subordinates << sub
  end

  def sub_salary_sum
    sum = 0

    subordinates.each do |sub|
      sum += sub.salary
      sum += sub.sub_salary_sum if sub.is_a?(Manager)
    end

    sum
  end

  def bonus(multiplier)
    bonus_total = sub_salary_sum * multiplier
  end

end

ned = Manager.new("Ned", "Founder", 1000000, nil)
darren = Manager.new("Darren", "TA Manager", 78000, ned)
shawna = Employee.new("Shawna", "TA", 12000, darren)
david = Employee.new("David", "TA", 10000, darren)

darren.add_subordinate(shawna)
darren.add_subordinate(david)
ned.add_subordinate(darren)



puts ned.bonus(5)
puts darren.bonus(4)
puts david.bonus(3)
