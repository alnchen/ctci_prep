require_relative '../linked_list'

=begin
implement an algorithm to find the kth to last element of a single linked list
=end

def return_kth_to_last(head, k)
  p1 = head
  p2 = head

  k.times do
    return nil if p2 == nil
    p2 = p2.next
  end

  until p2 == nil
    p1 = p1.next
    p2 = p2.next
  end

  p1.val
end

# time complexity: O(N) where N is the length of the LinkedList
# logic: have a pointer, p2, that is K nodes ahead of p1 and return p1
# when p2 is at the very end. this returns the length - k element
