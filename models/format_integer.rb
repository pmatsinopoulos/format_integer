class FormatInteger < Struct.new(:n)

  # Devise a function that takes an input 'n' (integer) and returns a string that is the
  # decimal representation of that number grouped by commas after every 3 digits. You can't
  # solve the task using a built-in formatting function that can accomplish the whole
  # task on its own.
  #
  # Assume: 0 <= n < 1000000000
  #
  # 1 -> "1"
  # 10 -> "10"
  # 100 -> "100"
  # 1000 -> "1,000"
  # 10000 -> "10,000"
  # 100000 -> "100,000"
  # 1000000 -> "1,000,000"
  # 35235235 -> "35,235,235"
  #
  def format 
    temp = n
    result = ""
    number_of_digits_added_so_far = 0
    while 1
      p = temp / 10
      y = temp % 10
      result = ",#{result}" if number_of_digits_added_so_far % 3 == 0 && number_of_digits_added_so_far >= 1 
      result = "#{y}#{result}"
      number_of_digits_added_so_far += 1
      break if p == 0
      temp = p
    end
    result
  end
end

