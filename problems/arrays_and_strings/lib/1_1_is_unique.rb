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
