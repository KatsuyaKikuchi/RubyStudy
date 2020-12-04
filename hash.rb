
hash = {key0: "hoge",key1: "huga", key2: "piyo"}

puts hash[:key1]
hash[:key3] = "goro"

hash.each do |key,value|
  puts "#{key} -> #{value}"
end