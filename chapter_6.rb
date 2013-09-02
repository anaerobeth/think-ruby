# Ex. 6.6
# Write a function called is_palindrome that takes a string argument and returns
# True if it is a palindrome and False otherwise.

def first_letter(word)
  word[0]
end

def last_letter(word)
  word[-1]
end

def middle(word)
  word.byteslice(1..-2)
end

def is_palindrome?(word)
  if word.length <= 1
    return true
  elsif first_letter(word) != last_letter(word)
    return false
  else
    return is_palindrome?(middle(word))
  end
end
puts "Palindrome Detector"

array = %w[cat noon radar swallows racecar]
array.each do |word|
  puts "#{word}: #{is_palindrome?(word)}"
end

# Ex 6.8
# Write a function called gcd that takes parameters
# a and b and returns their greatest common divisor.