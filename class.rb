# frozen_string_literal: true

# test class
class TEST
  def call(name)
    puts name
  end
end

t = TEST.new
# メソッドは括弧がなくても呼べるらしい
t.call 'hello'
