#implement an algorithm to determine if a string has all unique characters.
# what if you cannot use additional data structures?

def is_unique?(str)
  letters = {}

  str.chars.each do |char|
    return false if letters[char]
    letters[char] = true
  end

  true
end

# time complexity: O(N)
# worst case would be iterating through str all the way while checking for repeats
