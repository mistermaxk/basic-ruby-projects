# Caesar Cipher 2026 @mistermaxk
# key => 0-25 (x+n) % 26
# wrap A-Z a-z
# skip puncuatation and spaces
# negative key to decode (x-n) % 26
def caesar_cipher(str, key = 0)
  
end

#test cases
puts caesar_cipher("computer", 7)   #"jvtwbaly"
puts caesar_cipher("What a string!", 5)   #"Bmfy f xywnsl!"