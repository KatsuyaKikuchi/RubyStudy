class Person
  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def name(full: true, with_age: true)
    n = if !full
          "#{@first_name}"
        else
          "#{@first_name} #{@last_name}"
        end
    n << "(#{@age})" if with_age
    n
  end
end
