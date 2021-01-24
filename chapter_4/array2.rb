# 配列で関数の引数を受け取る
def print_array(*array)
  puts "#{array.join(' ')}"
end

arr0 = [1, 2, 3, 4]
arr1 = arr0.map { |value| value ** 2 }

print_array arr0
print_array(arr1)

# 配列を連結
arr0.push *arr1
print_array(*arr1)

# each_with_index で indexつきfor
arr0.each_with_index do |value, idx|
  puts "#{value},#{idx}"
end
