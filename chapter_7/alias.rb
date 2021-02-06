class User
  def initialize(name)
    @name = name
  end

  def hello
    puts "Hello #{@name}"
  end

  # エイリアスメソッド
  alias hi hello
end

user = User.new('Alice')
user.hello
user.hi