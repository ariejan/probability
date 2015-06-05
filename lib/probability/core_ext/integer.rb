require 'securerandom'

class Integer
  # Probability of integer in number.
  #
  #   1.in(10) => true   # about 10% of the time
  #   1.in(10) => false  # about 90% of the time
  #
  # You may also supply a block, which is only executed
  # if when the condition is true
  #
  #   3.in(10) do
  #     # Do something 30% of the time
  #   end
  def in(number, &block)
    return false if number <= 0
    #TODO: Throw "incorrect type" exception for non-integer number paramter
    return false unless number.is_a? Integer

    #Needs to be casted to float for random_number(0) call; achieves better precision
    threshold = self / number.to_f
    result = SecureRandom.random_number(0) <= threshold

    return yield if result && block_given?
    result
  end
end
