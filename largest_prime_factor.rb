# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?
# target_number = 600851475143
target_number = 55
possible_prime = 2
prime_numbers = []
factors = []

# find all the prime numbers less than target_number
while possible_prime <= target_number
  # a prime number is only divisible by 1 and itself so let's divide the 
  # possible prime by every number between 1 and itself
  divisors = (1..possible_prime).to_a # an array of numbers 1 - possible_prime
  prime_check_numbers = [1, possible_prime]
  # we need an array to hold the numbers that divide evenly into possible_prime,
  # we will sort through these later
  temporary_array = [] 

  divisors.each do |int|
    if possible_prime % int == 0
      temporary_array << int
    end
  end

  # now we'll check to see if the only numbers that went into possible_prime evenly 
  # were 1 and possible_prime
  if temporary_array.eql?(prime_check_numbers)
    prime_numbers << possible_prime
  end

  possible_prime +=1
end

# find out which prime numbers are factors of target_number
prime_numbers.each do |int|
  if target_number % int == 0
    factor = target_number / int
    break
  end
end


# so take 5

# 5/1 = 5
# 5/2 = decimal
# 5/3 = decimal
# 5/4 = decimal
# 5/5 = 1

# so 

# 6/1 = 6
# 6/2 = 3
# 6/3 = 2
# 6/4 = decimal
# 6/5 = decimal
# 6/6 = 1

# so

# 16/1 = 16
# 16/2 = 8
# 16/3 = decimal
# 16/4 = 4
# 16/5 = decimal
# 16/6 = decimal
# 16/7 = decimal
# 16/8 = decimal

# All the primes will look like the number 5 example - if you divide the number with every number including and between 1 and the number itself then it 
# is a prime number so we can find all the prime numbers up to the target number but then what?

