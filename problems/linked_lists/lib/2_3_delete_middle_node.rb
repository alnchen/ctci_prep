require_relative '../linked_list'

=begin
implement an algorithm to delete a node in the middle (i.e. any node but
the first and last node, not necessarily the exact middle) of a single
linked list, given only access to that node

example:
input: the node c from the linked list a->b->c->d->e->f
result: nothing is returned, but the new linked list looks like a->b->d->e->f

=end

def delete_middle_node(cur_node)
  return false if cur_node == nil || cur_node.next == nil
  next_node = cur_node.next
  cur_node.val = next_node.val
  cur_node.next = next_node.next

  cur_node.next == nil
end

# time complexity: O(1) simple re-assignment of the middle node's values.
# logic: copy over the values/pointers of the middle node's next node
