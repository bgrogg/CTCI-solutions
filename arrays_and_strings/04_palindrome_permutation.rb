# Given a string, write a function to check if it is a permutation of a
# palindrome.

def palindrome_permutation?(phrase)
  table = build_char_frequency_table(phrase)
  check_max_one_odd(table)
end

#Check that no more than one character has an odd count
def check_max_one_odd(table)
  found_odd = false

  table.each do |count|
    if count % 2 == 1
      return false if found_odd
    end

    found_odd = true
  end

  true
end

#Map each character to a number. a -> 0, b -> 1, c-> 2, etc.
#This is case-insensitive. Non-letter characters map to -1.
def get_char_number(char)
  a = 'a'.ord
  z = 'z'.ord
  val = char.ord

  if a <= val && val <= z
    return val - a
  end

  -1
end

#Count how many times each character appears
def build_char_frequency_table(phrase)
  table = Array.new(26, 0)

  phrase.each_char do |char|
    x = get_char_number(char)
    if x != -1
      table[x] += 1
    end
  end

  table
end

# This algorithm takes O(N) time where N is the length of the string. We
# cannot optimize the big O time any further since we will always have
# to look through the entire string.

puts palindrome_permutation?("doggod") == true
puts palindrome_permutation?("doggaod") == true
puts palindrome_permutation?("doggodxxxaaa") == false
