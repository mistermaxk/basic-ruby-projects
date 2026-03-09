# Caesar Cipher 2026 @mistermaxk
# wrap A-Z a-z 65 - 122

def caesar_cipher(str, key = 0)
  encoded = str.split('').map do |ch|
    if /[A-Za-z]/.match?(ch)
      (ch.getbyte(0) + key)
      # wrap to 65-122
    else
      ch.getbyte(0)
    end
  end
  encoded_string = encoded.map { |ch| ch.chr("utf-8") }.join("")
  encoded_string
end

#test cases
puts caesar_cipher("computer", 7)   #"jvtwbaly"
puts caesar_cipher("What a string!", 5)   #"Bmfy f xywnsl!"