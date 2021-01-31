apple = :apple
puts "#{apple} #{apple.class} #{apple.object_id}"
# シンボルは中身は整数として管理されいる。
# また、同じシンボルは同じオブジェクトとして判定されるので、同じシンボルを大量生成した時、文字列と比べてメモリ効率がよくなる
# 比較も高速

hash = { apple: 100, orange: 200, banana: 300 }
puts hash

#シンボルでデフォルト引数を設定
def test_method(arg0, arg1: true, arg2: true, arg3:)
  puts "#{arg0} #{arg1} #{arg2} #{arg3}"
end

test_method('test', arg3: 'hoge')
test_method('test2', arg2: 'hoge', arg3: 10)