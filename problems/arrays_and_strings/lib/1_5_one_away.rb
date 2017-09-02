=begin
there are three types of edits that can be performed on strings: insert
a character, remove a character, or replace a character. given two strings,
write a function to check if they are one edit (or zero edits) away

pale, ple -> true
pales, pale -> true
pale, bale -> true
pale, bake -> false

keep in mind ordering of letters is retained and factored into method
=end


def one_away(str1, str2)
  return false if (str1.length - str2.length).abs > 1

  if str1.length < str2.length
    short = str1
    long = str2
  else
    short = str2
    long = str1
  end

  different = false

  idx1 = 0
  idx2 = 0

  while idx1 < short.length
    if short[idx1] != long[idx2]
      return false if different
      different = true
    else
      idx1 += 1
    end
    idx2 += 1
  end

  true
end

# time complexity: O(N) where N is length of shorter string
# because you do not need to go the distance of the longest string since
# the condition of returning false if different will hit by that point 
