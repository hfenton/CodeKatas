class PrimeFactors

  def initialize
    @prime_list = []
  end

  def is_prime?(value)
    return false if value == 1
    # return true if value == 2
    return find_divisors(value).length == 2

  end

  def find_divisors(value)
  divisors = []
   (1..value).each do |int|
     divisors << int if value % int == 0
     break if divisors.length > 2
   end
  # puts "Divisors for value: #{value} are #{divisors}"
  divisors
  end

  def find_all_divisors(value)
    divisors = []
    (1..value).each do |int|
      divisors << int if value % int == 0
    end
    # puts "Divisors for value: #{value} are #{divisors}"
    divisors
  end

  def generate(value)
    primes = []
    find_all_divisors(value).each do |num|
      primes << num if is_prime?(num)
    end
    # puts "Primes factors of #{value} are #{primes}"
    primes
  end

  def factorize(value)
    # puts "The value is #{value}" if value == 1475143
    if value % 2 == 0
      @prime_list << 2
      factorize( value /  2)
    elsif value % 3 == 0
    @prime_list << 3
    factorize( value /  3)
    elsif value % 5 == 0
      @prime_list << 5
      factorize( value /  5)
    elsif value % 7 == 0
      @prime_list << 7
      factorize( value /  7)
   elsif value % 11 == 0
      @prime_list << 11
      factorize( value /  11)
   elsif value % 13 == 0
     @prime_list << 13
     factorize( value /  13)
   elsif value % 17 == 0
     @prime_list << 17
     factorize( value /  17)
   elsif value % 29 == 0
     @prime_list << 29
     factorize( value /  29)

   end
    @prime_list
  end

  def new_factorize(prime_number = 2, value)
    # puts "range is #{range}, value is #{value}"
    if value % prime_number == 0
      @prime_list << prime_number
      new_factorize(range + 1, value) unless range + 1 > value
    end

    puts "Prime list is #{@prime_list}"
    @prime_list
  end

  def find_next_prime_number(current_prime)
    new_prime = current_prime + 1
    loop do
      is_prime = false
      (2..new_prime).each do |divisor|
        break if new_prime % divisor == 0
        break if is_prime
      end
      break if is_prime
      new_prime = current_prime + 1
    end
    new_prime
  end
end