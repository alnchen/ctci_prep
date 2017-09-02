=begin
implement a method to perform basic string compression using the counts
of repeated characters. for example, the string aabcccccaaa would become
a2b1c5a3. if the "compressed" string would not become smaller than the
original string, your method should return the original string. you can
assume the string has only uppercase and lowercase letters (a-z)
=end

def string_compression(str)
  consec = 0
  res = ''

  str.chars.each_with_index do |char, idx|
    if idx >= str.length || char != str[idx + 1]
      consec += 1
      res << "#{char}#{consec}"
      consec = 0
    else
      consec += 1
    end
  end

  res.length < str.length ? res : str
end


# time complexity: O(N) where N is the length of the string
# loop through the string once while keeping track of whether the current
# letter is part of a consecutive chain
# NOTE:
# shovel operator is faster for concatenating strings
# '+' created new object every time and '.concat' works on the same object.
# Thats why 'concat' is faster and that's why you should not use it every time.
# '<<' is an alias for '.concat'.
