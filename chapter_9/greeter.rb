module Greeter
  def hello
    'hellor'
  end
end

puts 'start'
begin
  greeter = Greeter.new
rescue StandardError => e
  # 例外クラスの捕捉
  puts e.class
  puts e.message
  puts e.backtrace
ensure
  # finallyみたいな感じ
end
count = 3
begin
  0 / 0
rescue StandardError
  if count >= 0
    puts 'retry'
    count -= 1
    retry
  end
end

puts 'end'