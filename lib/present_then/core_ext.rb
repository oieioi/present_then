# frozen_string_literal: true

require 'active_support'
require 'active_support/core_ext'

class Object
  #   Calls the supplied block for the value and returns yieled value when an object is present.
  #
  #   nil.present_then { |val| puts "value is #{val}" }
  #   # => do nothing
  #
  #   ''.present_then { |val| puts "value is #{val}" }
  #   # => do nothing
  #
  #   1.present_then { |val| puts "value is #{val}"; val * 2 }
  #   # => puts "value is 1" and return 2
  def present_then
    return yield self if present? && block_given?

    self
  end
end
