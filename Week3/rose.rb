# IN PROGRESS
#Ulam's Rose

# using your is_prime function from last week plus your newfound multi-dimensional array knowledge, 
# draw a 201x201 Ulam’s Rose. 
# Use spaces to represent non-primes and Xs or something for primes.

def is_prime(n)
  return false if n <= 1
  2.upto(Math.sqrt(n).to_i) do |x|
    return false if n%x == 0
  end
  true
end
