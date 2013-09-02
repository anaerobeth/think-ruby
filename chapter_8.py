"""
A program to encrypt a message in ROT13 by shifting a letter through the alphabet
"""
# ASCII numbers
# ord('a') => 97
# ord('z') => 122
# ord('A') = > 65
# ord('Z') = > 90
# chr(97) => 'a'
# key is the number of places the letters of the message should be moved during encryption

def rotate_word(message, key):
    new_message = ''
    s = message.lower()
    for letter in s:
        new_ord = key + ord(letter)
        if new_ord > 122:
            new_ord = new_ord - 26
            new_letter = chr(new_ord)
        else:
            new_letter = chr(new_ord)

        new_message = new_message + new_letter
    return new_message.lower()

words = ['abc', 'python', 'ruby', 'unladen swallow']

print "*** Messages encrypted in ROT13 ***"
for word in words:
    print "%s: %s" % (word, rotate_word(word, 13))
