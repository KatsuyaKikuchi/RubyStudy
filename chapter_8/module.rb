module Loggable
  # モジュールでprivate指定しておくと、ミックスインしたクラスでもprivate

  private

  def log(text)
    puts "[LOG] #{text}"
  end
end

module Hoge
  include Loggable
end

module ClassMethod
  def call
    puts 'called cllass Method'
  end
end

class Product
  include Hoge
  # extendはクラスメソッドとしてミックスイン
  extend ClassMethod

  def title
    log('Title is called')
    'hoge'
  end
end

class User
  include Loggable

  def name
    log('name is called')
    'huga'
  end
end

product = Product.new
user    = User.new
puts product.title
puts user.name

puts Product.call

puts Product.ancestors.join(', ')
