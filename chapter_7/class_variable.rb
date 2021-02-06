class Hoge
  attr_reader :name
  @name = 'hoge'

  def self.name
    @name
  end

  def self.name= (name)
    @name = name
  end

  def initialize(name)
    @name = name
  end
end

hoge = Hoge.new('hogehoge')
puts hoge.name
puts Hoge.name
Hoge.name = 'fuga'
puts Hoge.name
puts hoge.name