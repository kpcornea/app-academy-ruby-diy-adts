
class Stack
  def initialize
    # create ivar (instance variable? must be) to store stack here!
    @stack = []
  end

  def push(el)
    # adds an element to the stack
    @stack << el
  end

  def pop
    # removes one element from the stack
    @stack.pop
  end

  def peek
    # returns, but doesn't remove, the top element in the stack
    @stack.last
  end
end


class Queue

  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue << el
  end

  def dequeue
    @queue.shift
  end

  def peek
    @queue.first
  end

end


class Map

  def initialize
    @map = []
  end

  def set(key, value)
    @map.each do |pair|
      cur_key = pair[0]
      if cur_key == key
        pair[1] = value
        return value
      end
    end

    @map << [key, value]
    value
  end

  def get(key)
    @map.each do |pair|
      cur_key = pair[0]
      cur_val = pair[1]
      return cur_val if cur_key == key
    end
    nil
  end

  def delete(key)
    @map.each do |pair|
      cur_key = pair[0]
      cur_val = pair[1]
      if cur_key == key
        @map.delete(pair)
        return cur_val
      end
    end
    nil
  end

  def show
    @map
  end

end
