#Given two strings, write a method to decide if one is a permutation of
#the other.

#Assumptions: Comparison is case-sensitive and white-space is significant.

#Solution 1: Sort the strings

# def permutation?(string_a, string_b)
#   return false if string_a.length != string_b.length
#
#   content_a, content_b = string_a.chars, string_b.chars
#   content_a.sort == content_b.sort
# end
#
# puts permutation?("dog", "god") == true
# puts permutation?("apple", "banana") == false
# puts permutation?("dog", "God") == false


#Solution 2: Check if the two strings have identical character counts
#(more efficient)

def permutation?(string_a, string_b)
  return false if string_a.length != string_b.length

  letters = Array.new(128, 0)
  idx = 0
  while idx < string_a.length
    letters[string_a[idx].ord] += 1
    idx += 1
  end

  idx = 0
  while idx < string_b.length
    letters[string_b[idx].ord] -= 1
    return false if letters[string_b[idx].ord] < 0
    idx += 1
  end

  true
end

puts permutation?("dog", "god") == true
puts permutation?("apple", "banana") == false
puts permutation?("dog", "God") == false
