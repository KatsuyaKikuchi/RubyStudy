module Chatting
  def chat
    'hello'
  end
end

class Dog
  include Chatting
end

pochi = Dog.new
puts pochi.chat
