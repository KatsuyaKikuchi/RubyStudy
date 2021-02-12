#Procオブジェクト→ブロックをオブジェクト化するためのクラス
hello = Proc.new do
  puts 'hello'
end

hello.call