# frozen_string_literal: true

require './class'
require './person'

user = User.new("hoge", "piyo", "huga")

puts user.profile

person = Person.new('test', 'hoge', 100)
puts person.name(full: false, with_age: false)

puts __FILE__
puts __LINE__
