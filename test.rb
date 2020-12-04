# frozen_string_literal: true

require './class'

user = User.new
user.name = "test"
user.address = "Tokyo"
user.email = "hogehoge@hoge.com"

puts user.profile

