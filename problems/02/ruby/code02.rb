# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

# OO approach

class FibonacciSequence
  def initialize(max)
    @fib = [1, 2]
    @max = max
  end

  def value
    @fib = calculate_sequence(@max)
  end

  private

  def calculate_sequence(max)
    fib ||= @fib
    while fib.last < max
      next_num = fib[-2] + fib[-1]
      fib.push(next_num)
    end
    return fib
  end

end

def sum_of_even(numbers)
  even_num = numbers.select { |num| num.even? }
  even_num.inject { |sum, x| sum + x }
end

fib = FibonacciSequence.new(4_000_000)
p sum = sum_of_even(fib.value)

# ================================================

# Script version

fib = [1, 2]

while fib.last < 4_000_000
  fib << fib[-2] + fib[-1]
end

even_fib = fib.select { |num| num.even? }
p even_fib.inject {|sum, x| sum + x}