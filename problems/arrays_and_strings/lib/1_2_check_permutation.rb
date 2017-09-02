# given two strings, write a method to decide if one is a permutation of the other

def is_permutation?(str1, str2)
  return false unless str1.length == str2.length
  counts = {}

  str1.chars.each { |char| counts[char] ? counts[char] += 1 : counts[char] = 1}

  str2.chars.each do |char|
    return false unless counts[char]
    counts[char] -= 1
  end

  return false if counts.any? { |_, count| count > 0 }
  true
end

# time complexity: O(N)
# iterate through first string and keep count, then iterate through
# second string and decrement count or return false if first string did
# not have that particular letter 
