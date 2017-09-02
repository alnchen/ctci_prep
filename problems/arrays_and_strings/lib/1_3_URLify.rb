# write a method to replace all spaces in a string with '%20'. you may assume
# that the string has sufficient space at the end to hold additional characters,
# and that you are given the 'true' length of the string.

def urlify(str)
  res = ""

  str.chars.each do |char|
    res += char == ' ' ? '%20' : char
  end
  
  res
end
