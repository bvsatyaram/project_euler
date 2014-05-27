GRID_SIZE = 20

def factorial(n)
  return (1..n).reduce(:*)
end

def paths_count(n)
  factorial(2*n)/(factorial(n)**2)
end

puts paths_count(GRID_SIZE)