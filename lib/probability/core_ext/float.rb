require 'securerandom'

class Float
  #Extention of Float class to include probability function.
  #TODO: Determine maximum precision and edge cases, design class around language limitations?
  #
  # 1.35.in(9.99): true ~13.51% of the time
  # and so on...

  def in(number, &block)
    return false if number <= 0
    return false unless number.is_a? Float

    threshold = self / number
    result = SecureRandom.random_number(0) <= threshold

    return yield if result && block_given?
    result
  end

end