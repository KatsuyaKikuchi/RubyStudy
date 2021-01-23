a = [1, 2, 3, 5]
puts a
a[4] = 10
puts a

# 多重代入
x, y, z = a
puts "#{x} #{y} #{z}"

a.each do |value|
  a[3] = value
  puts value
end

# ブロックを指定して偶数だけ削除
a.delete_if do |value|
  value.even?
end
# 1行でもかける
a.each { |value| puts value }

a << 14
puts a

# ブロックの処理の返り値で配列の値を上書き
a = a.map { |value| value ** 2 }
puts a

# rust の fold
sum = a.inject(0) { |s, n| s += n }
puts sum

range = 3..10
puts range

str = "hello ruby world!"
# 範囲を抜け出せる
puts str[range]

puts "#{x} #{y} #{z}"
range = x..y
puts range
puts str[range]

# 範囲オブジェクトから配列を生成
arr = ('a'..'bc').to_a
puts arr