def factorial(p):
    if p == 0:
        return 1
    return p * factorial(p-1)

assert factorial(5) == 120


def is_palindrome(s):
    if len(s) <=  1: return True

    # Compare the first and last letters
    if s[0] != s[-1:]:
        return False

    # Remove the first and last letters then repeat
    return is_palindrome(s[1:-1])

assert is_palindrome('abc') == False
assert is_palindrome('racecar') == True


def find_sum(a, b):
    return 


