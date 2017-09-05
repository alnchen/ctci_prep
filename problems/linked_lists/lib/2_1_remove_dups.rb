=begin
write code to remove duplicates from an unsorted linked list

follow up:
how would you solve this problem if a temporary buffer is not allowed?
=end

require_relative '../linked_list'

def remove_dups(list)
  vals = {}
  current = list.head
  vals[current.val] = true

  until current.val == nil
    break if current.next == nil

    if vals[current.next.val]
      current.next = current.next.next
    else
      vals[current.next.val] = true
      current = current.next
    end
  end
end

# time complexity: O(N) where N is the length of the list of nodes
# logic: check each node to see if we have encountered a previous
# node with the same value. if so, skip and re-assign next values.
