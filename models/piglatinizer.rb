require 'pry'
class PigLatinizer

    def piglatinize(str)

        # if s
        #turn the string into an array of words
        array = str.split(" ")
        #piglatinize each word
        piglatin_arr = array.map{|word| piglatinize_word(word)}
        # join them back into a string
        piglatin_arr.join(" ")
    end

    def piglatinize_word(word)
        # if the word starts with a vowel
        if %w(a e i o u A E I O U).include?word[0]
            word + "way"
        # if the word starts with a consonant
        else
            # take all the letters until the first vowel
            first_vowel_index = word.index(/[aeiou]/)
            
            # and move them to the back
            word[first_vowel_index, word.length] + word[0, first_vowel_index] + "ay"
        end
    end
end