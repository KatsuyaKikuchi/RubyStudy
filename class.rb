# frozen_string_literal: true

class User
  attr_reader :name, :address, :email

  def initialize(name, address, email)
    @name = name
    @address = address
    @email = email
  end

  def profile
    "#{name} (#{address})"
  end
end
