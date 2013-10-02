# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

# i = 2520
# condition
# while condition false
# i += 1

@i = 1

def evenly_divisible
  divisible_results = Array(2..20).map { |num| @i % num == 0 }
  !divisible_results.include?(false)
end

while evenly_divisible == false
  @i += 1
  p @i
end