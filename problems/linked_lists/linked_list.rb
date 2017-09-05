class Node
  attr_accessor :val, :next

  def initialize(val, next_node = nil)
    @val = val
    @next = next_node
  end
end


class LinkedList
  attr_accessor :head

  def initialize(val)
    @head = Node.new(val)
  end

  def add(val)
    current = @head

    until current.next == nil
      current = current.next
    end

    current.next = Node.new(val)
  end

  def prepend(val)
    cur_head = @head
    @head = Node.new(val, cur_head)
  end

  def delete(val)
    current = @head

    until current.next == nil
      next_node = current.next
      break if next_node.nil?
      if next_node.val == val
        current.next = next_node.next
      else
        current = current.next
      end
    end

  end

  def results
    res = []
    current = @head

    until current == nil
      res << current.val
      current = current.next
    end

    p res
  end
end
