# Your Code Here
def map(array)
  negArray = []
  g = 0 
  while g < array.length
    negArray << yield(array[g])
    g +=1 
  end
  negArray
end

def reduce(array, starting_point = nil)
  if starting_point
    total = starting_point
    n = 0
  else
    total = array[0]
    n = 1
  end
  while n < array.count
  total = yield(total, array[n])
  n+=1 
end
total
end
