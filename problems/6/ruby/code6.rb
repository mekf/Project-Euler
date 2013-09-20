# The sum of the squares of the first ten natural numbers is,
# 12 + 22 + ... + 102 = 385

# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)2 = 552 = 3025

# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

# BRUTE FORCE

def calculate_sum(numbers)
  numbers.inject { |sum, n| sum + n }
end

def build_numbers(low, high)
  @squares_of_numbers = []
  @numbers = []
  (low..high).each do |number|
    @squares_of_numbers << number ** 2
    @numbers << number
  end
end

def sum_square_difference(low = 1, high = 100)
  build_numbers(low, high)
  
  sum_square_of_numbers = calculate_sum(@squares_of_numbers)
  sum_of_numbers = calculate_sum(@numbers)
  square_of_sum_of_numbers = sum_of_numbers ** 2
  
  square_of_sum_of_numbers - sum_square_of_numbers
end

p sum_square_difference

# BAREBONE Script Version
sum = 0
sum_square = 0
(1..100).each do |num|
  sum = sum + num
  sum_square = sum_square + num ** 2
end
p (sum ** 2) - sum_square


# TODO
# spec for the optimised version
# limit = 100
# sum = limit(limit + 1)/2
# sum_of_sq = (2limit + 1)(limit + 1)limit/6
# p sum^2 − sum_of_sq