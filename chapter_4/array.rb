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
puts a
