module Enumerable
  def my_all?(&block)
    block ||= proc { |value| value } # Default block for truthy check
    each { |value| return false unless block.call(value) }
    true
  end
end
class Array
  include Enumerable
end

module Enumerable
  def my_each
    for i in 0...self.length
      yield(self[i])
    end
  end
end

# You will first have to define my_each

# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
end
