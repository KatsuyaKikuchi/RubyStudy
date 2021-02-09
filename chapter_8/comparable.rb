class Tempo
  include Comparable

  attr_reader :bpm

  def initialize(bpm)
    @bpm = bpm
  end

  def <=>(other)
    if other.is_a?(Tempo)
      bpm <=> other.bpm
    else
      nil
    end
  end
end

t_120 = Tempo.new(120)
t_180 = Tempo.new(180)

puts t_120 > t_180
puts t_120 == t_180
puts t_120 < t_180
