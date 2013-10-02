# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

# i = 2520
# condition
# while condition false
# i += 2520

# 2520 is given as divisible to (1..10)
# therefore we can check increments of 2520 to see if there is a number divisible to (11..20)


@i = 2520
@divisible_numbers = Array(11..20)

def evenly_divisible
  divisible_results = @divisible_numbers.map { |num| @i % num == 0 }
  !divisible_results.include?(false)
end

while evenly_divisible == false
  @i += 2520
  p @i
end