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
    quotient = -1
    while quotient != 0
      quotient = temp / 1000
      remainder = temp % 1000
      prepend = "%#{quotient == 0 ? 'd' : '03d'}" % remainder 
      result = ",#{result}" if result.length > 0
      result = "#{prepend}#{result}"
      temp = quotient
      break if quotient == 0
    end
    result
  end
end

