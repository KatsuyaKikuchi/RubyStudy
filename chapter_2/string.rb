a = 'hello ruby'
b = 'hello ruby'

puts a.hash
puts b.hash
if a == b
  puts 'same'
else
  puts 'diff'
end

document = <<DOC
ヒアドキュメント
複数行の文字列を作成することができる
DOC

document.prepend('先頭に追加')

puts document