module LargestPrimeFactor
  extend self

  attr_accessor :prime

  def is_prime_number?(value)
    return true if value == 2 or value == 3 or value == 5 or value == 7
    is_not_even?(value) and is_greater_than_one?(value) and is_not_divisible_by_three?(value) and is_not_divisible_by_five?(value) and is_not_divisible_by_seven?(value)
  end

  def qualifies_for_prime_number?(value)
    return true if value == 2 or value == 3 or value == 5 or value == 7
    is_not_even?(value) and is_greater_than_one?(value)
  end

  def is_greater_than_one?(value)
    value > 1
  end

  def is_not_even?(value)
    value % 2 != 0
  end

  def is_not_divisible_by_three?(value)
    value % 3 != 0
  end

  def is_not_divisible_by_five?(value)
    value % 5 != 0
  end

  def is_not_divisible_by_seven?(value)
    value % 7 != 0
  end

  def is_divisible?(value, divisor)
    value % divisor == 0
  end


  def list_prime_numbers_up_to(value)
    prime = []
    (1..value).each {|i|
      # puts "Prime: #{i}" if is_prime_number?(i)
      prime << i if is_prime_number?(i)
    }
    puts "Number of prime numbers up to #{value} is #{prime}"
    @prime = prime
  end

  def get_primes_up_to(value)
    primes = []
    (2..value).each { |x|
      (2..value).each { |y|
        puts "Is it [#{x}] there: #{primes.include?(x)}"
        break if x < y or primes.include?(x)
        puts "Is x=#{x} divisible by y=#{y}?... #{is_divisible?(x,y)}, IsPrime #{x}? #{is_prime_number?(x)}"
        primes << x if (is_divisible?(x,y) == false or is_prime_number?(x))
      }
    }
    puts "Primes are #{primes}"
    primes
  end


end

#
# The prime factors of 13195 are 5, 7, 13 and 29.
#
#     What is the largest prime factor of the number 600851475143 ?