https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet

## Time Complexity
* big O - upper bound
* big omega - lower bound
* big theta - both upper and lower

Industry refers to Big O as theta (upper bound)

Quicksort is N (log n) because it takes log n steps for an item to be sorted and you have to sort N items

###### Sum of Integers 1-N
* sum = N(N+1)/2

###### Sum of Fibonacci Numbers
* Has a time complexity of O(2^n) because there are 2 calls at each stack and you are making N calls

```
def fibs_sum(n)
  return 0 if n <= 0
  return 1 if n == 1
  fibs_sum(n - 1) + fibs_sum(n - 2)
end

```

###### Memoization
* The act of storing known-values in a cache (or hash data structure for Ruby)

```
def allFibs(n)
  cache = {}
  n.times { |num| p fib(num, cache) }
end

def fib(n, cache)

end
```

###### (B)ottlenecks
* Look for the one area of the code that is causing the biggest time issue

```
#Find all pairs of numbers in an array or N length that have a K difference

array = [1, 7, 5, 9, 2, 12, 3]

#naive solution is to iterate through all and compare with next item in array but this will be O(N^2)

#better solution would be to first sort the array (O(N Log N)) and then go through each and find if the next element has a diff of K

#best solution is to iterate through each item and create a hash table to store values and then iterate again while doing a look up in the hash table for a value of hash[val+k] which results in O(N)

```

###### BCR (Best Conceivable Runtime)
* The best possible runtime given the arguments but does not necessarily mean it is achievable
  * It is a good indicator for you to know when you have already achieved fastest possible run time and provides a good "milestone" when working through algorithms

## Space Complexity

```
#recursive calls have a large stack, O(n) space:

def sum(n)
  return 0 if n == 0

  n + sum(n - 1)
end

sum(4)
  -> sum(3)
    -> sum(2)
      -> sum(1)
        -> sum(0)


#non-recursive does not have a stack because calls do not exist simultaneously

def pair_sum(n)
  sum = 0

  cur_num = 0
  while cur_num < n
    sum += add_two(n, cur_num)
  end

end

def add_two(num1, num2)
  num1 + num2
end


```

## Core Data Structures, Algorithms, and Concepts

###### Data Structures
* Linked Lists
* Trees, Tries, & Graphs
* Stacks & Queues
* Heaps
* Vectors and ArrayLists
* Hash Tables

###### Algorithms
* Breadth-First Search
* Depth-First Search
* Binary Search
* Merge Sort
* Quick Sort

###### Concepts
* Bit Manipulation
* Memory (Stack vs. Heap)
* Recursion
* Dynamic Programming
* Big O Time & Space
