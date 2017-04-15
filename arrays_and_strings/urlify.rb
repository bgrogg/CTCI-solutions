#Write a method to replace all spaces in a string with '%20.' You may
#assume that the string has sufficient space at the end to hold additional
#characters, and that you are given the "true" length of the string.

def urlify(string, true_length)
  space_count = 0
  idx = 0
  while idx < true_length
    space_count += 1 if string[idx] == ' '
    idx += 1
  end

  index = true_length + space_count * 2

  i = true_length - 1
  while i >= 0
    if string[i] == ' '
      string[index - 1] = '0'
      string[index - 2] = '2'
      string[index - 3] = '%'
      index = index - 3
    else
      string[index - 1] = string[i]
      index -= 1
    end
    i -= 1
  end

  string
end

puts urlify("Mr John Smith    ", 13)
