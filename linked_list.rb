class LinkedList
  Node = Struct.new :value, :next_node

  attr_reader :head

  def initialize
    @head = nil
  end

  def prepend element
    @head = Node.new element, @head # replace the head with element
    nil
  end

  def append element
    if @head == nil
      prepend element
    else
      current = @head
      while current.next_node != nil # keep going until you hit nil(the tail)
        current = current.next_node # the last iteration, current = last node
      end
      current.next_node = Node.new element, nil
    end
    nil
  end

  def size
    current, counter = @head, 0
    return 0 if current == nil # if no element is there
    while current.next_node != nil
      current = current.next_node
      counter += 1
    end
    counter + 1
  end

  def tail
    current = @head
    while current.next_node != nil
      current = current.next_node
    end
    current
  end

  def at idx
    current = @head
    idx.times do # traverse the list "idx" times
      current = current.next_node
    end
    current # current is the node at "idx"
  end

  def find value
    counter, current = 1, @head
    return 0 if value == @head.value
    while current.next_node != nil
      current = current.next_node
      return counter if current.value == value
      counter += 1
    end
    nil
  end

  def contains? value
    return (self.find(value) != nil) ? true : false
  end

  def pop
    current = @head
    prev = nil
    while current.next_node != nil
      prev = current
      current = current.next_node
    end

    prev.next_node = current.next_node
    nil
  end

  def to_s
    current, str = @head, "(#{@head.value})->"
    while current.next_node != nil
      current = current.next_node
      str += "(#{current.value})->"
    end
    str += "nil"
  end
end