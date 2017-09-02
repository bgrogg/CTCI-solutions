# Assume you have a method isSubstring which checks if one word is a
# substring of another. Given two strings, s1 and s2, write code to check
# if s2 is a rotation of s2 using only one call to isSubstring(e.g,
#   "waterbottle" is a rotation of "erbottlewat").

def is_substring?(s1, s2)
  s1.include?(s2) #disregarding efficiency, method is assumed to be given
end

def is_rotation?(s1, s2)
  len = s1.length

  #Check that s1 and s2 are equal length and not empty.
  if len == s2.length && len > 0
    s1s1 = s1 + s1
    return is_substring?(s1s1, s2)
  end

  false
end

p is_rotation?("waterbottle", "erbottlewat")
