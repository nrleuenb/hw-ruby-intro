# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return arr.size == 0 ? 0: arr.reduce(:+)
end

# Why is arr.max(2).sum invalid? --> Ruby 2.4+ only. Requires ActiveSupport in 2.3
def max_2_sum arr
    if arr.empty?
        return 0
    elsif arr.size == 1
        return arr[0]
    end
  maxes = arr.max(2)
  return maxes[0] + maxes[1]
end

# https://stackoverflow.com/questions/23572515/check-if-the-sum-of-two-different-numbers-in-an-array-equal-a-variable-number
=begin
My original thought behind this was to use the combination method and a loop, and manually go through all the combinations to check and see if they were equal to n -- if yes, short circuit and return true. Otherwise, return false. This stack overflow post however had a much better way of doing it.
=end
def sum_to_n? arr, n
  return !!arr.combination(2).detect { |a, b| a + b == n}
end

# Part 2

def hello(name)
  # return "Hello, ".concat(name)
  return "Hello, " << name
end

def starts_with_consonant? s
  return !(/\A[aeiou]/i.match(s) != nil) && !s.empty? && !(/\W/.match(s) != nil)
end

#https://stackoverflow.com/questions/19305067/regex-binary-multiple-of-4
def binary_multiple_of_4? s
  return s == "0" || /^[10]*00\z/.match(s) != nil
end

# Part 3

class BookInStock
    attr_accessor :isbn, :price

    def initialize(isbn, price)
        if isbn.empty? || price <= 0
            raise ArgumentError.new('Please make sure your inputs are valid.')
        end
        @isbn = isbn
        @price = price
    end

    def price_as_string
        sprintf("$%.2f", @price)
    end

end
