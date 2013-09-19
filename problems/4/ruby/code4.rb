# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

@palindrom = []
@palindrom_compo = []
@largest_palindrom = nil
@largest_palindrom_compo = nil

def check_if_palindrom?(num1, num2, product)
  if product.to_s == product.to_s.reverse
    @palindrom_compo << {
      num1: num1,
      num2: num2,
      palindrom: product
    }
  end
end

def find_palindrom_compo(first, last)
  (first..last).each do |num1|
    (first..last).each do |num2|
      product = num1 * num2
      check_if_palindrom?(num1, num2, product)
    end
  end
end

def find_palindrom
  @palindrom_compo.each { |pc| @palindrom << pc[:palindrom] }
end

def find_largest_palindrom(first=100, last=999)
  find_palindrom_compo(first, last)
  find_palindrom
  @largest_palindrom = @palindrom.max
  @palindrom_compo.each do |pc|
    if pc[:palindrom] == @largest_palindrom
      @largest_palindrom_compo = pc
      break
    end
  end
end

find_largest_palindrom(100, 999)

p @largest_palindrom
p @largest_palindrom_compo

# Barebone version
def largest_palindrom(first=100, last=999)
  palindromes = []
  (first..last).each do |num1|
    (first..last).each do |num2|
      product = num1 * num2
      palindromes.push(product) if product.to_s == product.to_s.reverse
    end
  end
  palindromes.max
end

p largest_palindrom