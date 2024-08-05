def substrings(strings, dictionary)
  strings.split(" ").reduce(Hash.new(0)) do |substring, element| 
    dictionary.each { |vaild_string| substring[vaild_string] += 1 if element.downcase.match?(vaild_string)}
    substring
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)