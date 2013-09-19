# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

@numbers = []
@sum = nil

def sum_3_5_multiplies(max=1000)
  (1...max).each do |num| 
    @numbers.push(num) if num % 3 == 0 or num % 5 == 0
  end
  @sum = @numbers.reduce(:+)
end

p sum_3_5_multiplies