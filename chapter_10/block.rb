# &xxx でブロックを引数として受け取る
def greeting(&block)
  puts 'hello'
  text = block.call('piyo')
  puts text
  puts 'goodby'
end

greeting do |txt|
  puts txt
  'huga'
end