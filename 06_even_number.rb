# Implement question #5 again in Ruby in two ways:
#     a. Using a loop
#     b. Using recursion
#
#


require "benchmark"

# Using Loop
def even_loop(num)
  evenNumbers = []
  for i in (1..num)
    evenNumbers.push(i) if i % 2 == 0
  end
end

#Using recursion
def even_recursion(n, i = 1)
  if i == n
    [i * 2]
  else
    [i * 2] + even_recursion(n, i + 1)
  end
end



n = 100000

# Using Loop
Benchmark.bm do |x|
  x.report do
    n.times do
      even_loop(30)
    end
  end
end

#Using recursion
Benchmark.bm do |x|
  x.report do
    n.times do
      even_recursion(30)
    end
  end
end
