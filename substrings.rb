
def substrings(string, dictionary)
    words = string.split(" ")
    dictionary.reduce(Hash.new(0)) do |result, dictionary_word|
        current_word_count = words.count {|word| word.downcase.include?(dictionary_word.downcase)}
        result[dictionary_word] += current_word_count if current_word_count > 0
        result
    end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("Howdy partner, sit down! How's it going?", dictionary)