require "pry"


def unique_morse_representations(words)
    abc = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    morse = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
    morse_array =[]
    abc_hash = Hash[abc.zip(morse)]
    words.map do |word| 
        morse_word = ""
        binding.pry
        letters = word.split("")
        letters.each do |letter|
            morse_word.concat(abc_hash[letter])
        end 
        morse_array << morse_word 
    end
    return morse_array.uniq.count
end

words = ["apple", "cat"]

print unique_morse_representations(words)