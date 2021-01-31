hash = {}
puts hash.class

currencies          = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }
currencies['iraly'] = 'euro'
puts currencies

currencies['japan'] = '円'
puts currencies
puts currencies['india']
currencies['chaina'] = 30

currencies.each do |key, value|
  puts "#{key}: #{value}"
end

deleted = currencies.delete('japan')
puts currencies
puts deleted