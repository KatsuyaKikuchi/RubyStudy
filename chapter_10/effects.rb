module Effects
  def self.reverse
    ->(word) do
      word.split(' ').map(&:reverse).join(' ')
    end
  end

  def self.echo(times)
    ->(words) do
      words.chars.map { |c| c == ' ' ? c : c * times }.join
    end
  end

  def self.loud(times)
    ->(word) do
      word.split(' ').map { |w| w.upcase + '!' * times }.join(' ')
    end
  end
end