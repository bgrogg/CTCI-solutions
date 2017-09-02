# There are three types of edits that can be performed on strings: insert
# a character, remove a character, or replace a character. Given two
# strings, write a function to check if they are one edit (or zero edits)
# away.

def one_away?(string_a, string_b)
  if string_a.length == string_b.length
    return one_edit_replace?(string_a, string_b)
  elsif string_a.length + 1 == string_b.length
    return one_edit_insert?(string_a, string_b)
  elsif string_a.length == string_b.length + 1
    return one_edit_insert?(string_b, string_a)
  end

  false
end

def one_edit_replace?(s1, s2)
  found_difference = false

  idx = 0
  while idx < s1.length
    if s1[idx] != s2[idx]
      return false if found_difference
      found_difference = true
    end
    idx += 1
  end

  true
end

def one_edit_insert?(s1, s2)
  idx1 = 0
  idx2 = 0

  while idx2 < s2.length && idx1 < s1.length
    if s1[idx1] != s2[idx2]
      return false if idx1 != idx2
      idx2 += 1
    else
      idx1 += 1
      idx2 += 1
    end
  end

  true
end

puts one_away?("pale", "ple") == true
puts one_away?("pales", "pale") == true
puts one_away?("pale", "bale") == true
puts one_away?("pale", "bake") == false
