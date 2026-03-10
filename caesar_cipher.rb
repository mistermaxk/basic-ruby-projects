# Caesar Cipher 2026 @mistermaxk

def caesar_cipher(str, key = 0)
  encoded = str.split('').map do |ch|
    character = ch.getbyte(0)
    if /[A-Za-z]/.match?(ch)
      letter_A = 65
      letter_Z = 90
      letter_a = 97
      letter_z = 122
      offset = 1
      # wrap A-Z 65-90 
      if character >= letter_A && character <= letter_Z 
        if (character + key) < letter_A
          letter_Z - (letter_A - (character + key)) + offset
        elsif (character + key) > letter_Z
          letter_A + ((character + key) - letter_Z) - offset
        else
          character + key
        end
      # wrap a-z 97-122
      elsif character >= letter_a && character <= letter_z
        if (character + key) < letter_a 
          letter_z - (letter_a - (character + key)) + offset
        elsif (character + key) > letter_z
          letter_a + ((character + key) - letter_z) - offset
        else
          character + key
        end
      end
    else
      character
    end
  end
 
  encoded_string = encoded.map { |ch| ch.chr("utf-8") }.join("")
  encoded_string
end

#test cases
puts caesar_cipher("computer", 7)   #"jvtwbaly"
puts caesar_cipher("jvtwbaly", -7)  #"computer"
puts caesar_cipher("What a string!", 5)   #"Bmfy f xywnsl!"
puts caesar_cipher("Bmfy f xywnsl!", -5)  #"What a string!"