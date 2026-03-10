# Sub Strings 2026 @mistermaxk

def substrings(word, dict)
  # take word and array of valid substrings
  # return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)
#{ "below" => 1, "low" => 1 }
substrings("Howdy partner, sit down! How's it going?", dictionary)
#{ "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
