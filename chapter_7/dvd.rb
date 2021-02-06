require '../chapter_7/product'

class DVD < Product
  attr_reader :running_time

  def initialize(name, price, running_time)
    super(name, price)
    @running_time = running_time
  end

  def to_s
    "#{super }, running_time:#{@running_time}"
  end

  def debug
    puts "#{@name} : ¥#{@price}, #{@running_time}"
  end
end

dvd = DVD.new('hoge', 100, 20)
puts dvd.class
puts dvd.is_a?(Product)
dvd.debug
puts dvd.to_s