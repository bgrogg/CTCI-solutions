# Implement a method to perform basic string compression using the counts
# of repeated characters. For example, the string aabcccccaaa would become
# a2b1c5a3. If the "compressed" string would not become smaller than the
# original string, your method should return the original string. You can
# assume the string has only uppercase and lowercase letters (a - z).

def compress(str)
  compressed = ""
  count_consecutive = 0

  idx = 0
  while idx < str.length
    count_consecutive += 1

    if (idx + 1) >= str.length || str[idx] != str[idx + 1]
      compressed << str[idx]
      compressed << count_consecutive.to_s
      count_consecutive = 0
    end

    idx += 1
  end

  compressed.length < str.length ? compressed : str
end

p compress("aabcccccaaa")
p compress("aaaabbbbbcdddaa")
p compress("")
p compress("a")
