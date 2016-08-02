# Stack is "first in last out" data structure

class Stack
  def initialize
    @array = []
  end
  def add(item)
    @array.push(item)
  end

  def remove
    @array.pop
  end

end

# Queue is "first in firs out" data structure
class Queue
  def initialize
    @array = []
  end

  def add(item)
    @array.unshift(item)
  end

  def remove
    @array.pop
  end
end
