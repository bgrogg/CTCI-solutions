def is_unique_chars?(string)
  return false if string.length > 128

  char_set = Array.new(128, false)

  idx = 0
  while idx < string.length
    val = string[idx].ord

    return false if char_set[val]

    char_set[val] = true

    idx += 1
  end

  true
end

puts is_unique_chars?("sentence")
puts is_unique_chars?("abcdefg123456")
