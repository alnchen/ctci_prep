=begin
given a string, write a function to check if it is a permutation of a
palindrome. a palindrome is a word or phrase that is the same forwards and
backwards. a permutation is a rearrangement of letters. the palindrome does
not need to be limited to just dictionary words.

input: Tact Coa
output: True (permutations: "taco cat", "atco cta", etc.)
=end

def palindrome_permutation?(str)
  counts = {}

  str.chars.each do |char|
    next if char == ' '
    ltr = char.downcase
    counts[ltr] ? counts[ltr] += 1 : counts[ltr] = 1
  end

  counts.select { |_, count| count % 2 == 1 }.length <= 1
end

# palindromes have at most one char that shows up an odd number of times
# use hash table to keep track of letters and check at the end for count

# time complexity: O(N) where N is the length of the string 
