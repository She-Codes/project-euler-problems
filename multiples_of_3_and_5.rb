# If we list all the natural numbers below 10 that are 
# multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of 
# these multiples is 23.  Find the sum of all the 
# multiples of 3 or 5 below 1000.

def find_multiples(int)
  counter = 1
  multiple = int
  multiples_array = []

  #run loop to find the next multiple as long as the multiple is under 1000
  while multiple < 1000
    multiple = int * counter
    #found the next multiple now make sure it's under 1000 before adding 
    #to the array
    if multiple < 1000
      multiples_array << multiple
    end
    counter += 1
  end
  multiples_array
end

multiples_of_3 = find_multiples 3
multiples_of_5 = find_multiples 5

#join the two arrays and remove the duplicates
multiples_of_3_and_5 = multiples_of_3 | multiples_of_5

sum_of_multiples = multiples_of_3_and_5.inject {|sum, n| sum + n}

puts sum_of_multiples
