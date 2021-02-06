# 演算子オーバーライド
class Product
  attr_reader :code, :name

  def initialize(code, name)
    @code = code
    @name = name
  end

  # 演算子をオーバーライド
  def ==(other)
    if other.is_a?(Product)
      @code == other.code
    else
      false
    end
  end
end

a = Product.new(:A0001, 'hoge')
b = Product.new(:B0001, 'huga')
c = Product.new(:A0001, 'puyo')

puts a == b
puts a == c

# あるインスタンスにだけメソッドを定義することも可能
def a.hogehoge
  puts 'hi!'
end

puts a.hogehoge
# puts b.hogehoge