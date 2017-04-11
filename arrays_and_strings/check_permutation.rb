#Given two strings, write a method to decide if one is a permutation of
#the other.

#Assumptions: Comparison is case-sensitive and white-space is significant.

#Solution 1: Sort the strings

def permutation?(string_a, string_b)
  return false if string_a.length != string_b.length

  content_a, content_b = string_a.chars, string_b.chars
  content_a.sort == content_b.sort
end

permutation?("dog", "god") == true
permutation?("apple", "banana") == false
permutation?("dog", "God") == false


#Solution 2: Check if the two strings have identical character counts
#(more efficient)
