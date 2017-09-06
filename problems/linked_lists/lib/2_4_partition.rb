require_relative '../linked_list'

=begin
write code to partition a linked list around the value x such that all
nodes less than x come before all nodes greater than or equal to x. if x
is contained within the list, the values of x only need to be after the
elements less than x (see below). the partition element x can appear
anywhere in the "right partition"; it does not need to appear between the
left and right partitions.

example:
input: 3 -> 5 -> 8 -> 5 -> 10 -> 2 -> 1 (partition = 5)
output: 3 -> 1 -> 2 -> 10 -> 5 -> 5 -> 8
=end

# 10 is before 5 because the two 5s can appear anywhere on the "right"

def partition(linked_list, partition_value)
  less = LinkedList.new
  more = LinkedList.new

  current_node = linked_list.head

  until current_node == nil
    if current_node.val < partition_value
      less.add(current_node.val)
    else
      more.add(current_node.val)
    end
    current_node = current_node.next
  end

  current_node = more.head

  until current_node == nil
    less.add(current_node.val)
    current_node = current_node.next
  end

  less
end
