require 'active_support'
require 'active_support/core_ext'

class Object
  def present_then(&block)
    if present?
      if block_given?
        yield self
      else
        self
      end
    end
  end
end
