def fizz_buzz(value)
  if value % 15 == 0
    'Fizz Buzz'
  elsif value % 3 == 0
    'Fizz'
  elsif value % 5 == 0
    'Buzz'
  else
    value.to_s
  end
end

a = fizz_buzz(15)
b = fizz_buzz(8)

puts a.class
puts b.class
