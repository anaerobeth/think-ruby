# A program to encrypt a message in ROT13 by shifting a letter through the alphabet
# ASCII numbers
# or('a') => 97
# ord('z') => 122
# ord('A') = > 65
# ord('Z') = > 90
# chr(97) => 'a'
# key is the number of places the letters of the message should be moved during encryption

def rotate_word(message, key)
  new_message = ''
  message.downcase!
  message_array = message.split('')
  message_array.each do |m|
    new_ord = key + m[0].ord
    if new_ord > 122
      new_ord = new_ord - 26
      new_letter = new_ord.chr
    else
      new_letter = new_ord.chr
    end
    new_message = new_message + new_letter
  end
  return new_message.downcase
end

words = ['abc', 'python', 'ruby', 'unladen swallow']

puts "*** Messages encrypted in ROT13 ***"
words.each do |word|
    puts "#{word}: #{rotate_word(word, 13)}"
end
