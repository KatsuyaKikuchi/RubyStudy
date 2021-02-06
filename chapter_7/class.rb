class User
  def initialize (name)
    @name = name
  end

  # =のついた関数名でプロパティのセッターのような形を定義できる
  def name= (name)
    @name = name
  end

  def name
    @name
  end
end

class User2
  # attr_accessor でメンバ変数のgetter/setterを自動定義
  # メンバ変数名はシンボルで定義
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  # selfをつけるとstatic メソッド
  def self.create_users(names)
    names.map { |name| User.new(name) }
  end
end

user = User.new('Alice')
puts user.name
user.name = 'Bob'
puts user.name

user2 = User2.new('Alice')
puts user2.name
user2.name = 'Bob'
puts user2.name

names = %w[hoge huge piyo]
users = User2.create_users(names)
users.each do |u|
  puts u.name
end