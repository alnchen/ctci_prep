=begin
assume you have method is_substring? which checks if one word is a
substring of another. given two strings, str1 and str2, write code to
check if str2 is a rotation of str1 using only one call to is_substring?

"waterbottle" is a rotation of "erbottlewat"
=end

def string_rotation(str1, str2)
  return false unless str1.length == str2.length

  is_substring?(str2, str1+str1)
end

# not optimal helper method but serves the purpose of a "given method"
def is_substring?(short, long)
  long.include?(short)
end

# time complexity will depend on implementation of is_substring? helper
# function but on standard substring methods it will be O(m+n) which will
# result in a string_rotation time complexity of O(N)

# the logic for this method is that if str2 is a rotated version of str1,
# then when you have str1str1 (twice), str2 will be included somewhere in
# the middle and our is_substring? helper method can detect that with one
# run through 
