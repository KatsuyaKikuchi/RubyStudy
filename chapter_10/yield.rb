def greeting0
  puts 'hello'
  # yield を使用するとブロックの処理が呼び出される
  yield
  puts 'goodby'
end

def greeting1
  puts 'hello'
  # 引数を受け取る/渡す
  text = yield 'huga'
  puts text
  puts 'goodby'
end

greeting0 do
  puts 'hoge'
end

greeting1 do |txt|
  puts txt
  'piyo'
end