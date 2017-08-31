# given two strings, write a method to decide if one is a permutation of the other

def is_permutation?(str1, str2)
  counts = {}

  str1.chars.each { |char| counts[char] ? counts[char] += 1 : counts[char] = 1}

  str2.chars.each do |char|
    return false unless counts[char]
    counts[char] -= 1
  end

  return false if counts.any? { |_, count| count > 0 }
  true
end
