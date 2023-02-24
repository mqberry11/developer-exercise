class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
    words = str.split(/ /)
    # puts "words: #{words}"
    new_words = []
    words.map! do |word|
      if word.length <= 4
        new_words.push(word)
      elsif word.length > 4  
        new_word = "marklar"
        if word.slice(0).match /[A-Z]/
          new_word = "Marklar"
        end
        if !word.slice(-1).match /[A-Za-z]/
          new_word << word.slice(-1)
        end
        new_words.push(new_word)
      end
    end
    new_str = new_words.join(" ")
    # puts "new_str: #{new_str}"
    return new_str
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    fib_array = []
    prev = 1
    cur = 1
    if nth > 0
      fib_array.push(1)
    end
    if nth > 1
      fib_array.push(1)
    end
    while fib_array.length < nth
      next_num = prev + cur
      fib_array.push(next_num)
      prev = cur
      cur = next_num
    end
    # puts nth
    # puts "fib_array: #{fib_array}"
    even_nums = fib_array.select { |x| x % 2 == 0 }
    # puts "even_nums: #{even_nums}"
    sum_even_nums = even_nums.reduce(0) { |sum, num| sum + num }
    # puts "sum_even_nums: #{sum_even_nums}"
    return sum_even_nums
    # TODO: Implement this method
  end

end
