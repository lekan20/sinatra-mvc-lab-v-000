class PigLatinizer

  def initialize
  end

  def piglatinize(word)
    constants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x","y", "z"]
    vowels = ["a", "e", "i", "o", "u"]
    pig_lantin_word = []
    words = word.split(' ')
    words.each do |word|
      if constants.include?(word.downcase.split('')[0]) && constants.include?(word.downcase.split('')[1]) && constants.include?(word.downcase.split('')[2])
        pig_lantin_word.push(word_begins_with_three_constants(word))
      elsif constants.include?(word.downcase.split('')[0]) && constants.include?(word.downcase.split('')[1])
        pig_lantin_word.push(word_begins_with_two_constants(word))
      elsif constants.include?(word.downcase.split('')[0])
        pig_lantin_word.push(word_begins_with_a_constant(word))
      elsif word == "I" || "i"
        new_word = word + "way"
        pig_lantin_word.push(new_word)
      elsif vowels.include?(word.downcase.split('')[0])
        pig_lantin_word.push(word_begins_with_a_vowel(word))
      end
    end
    pig_lantin_word.join(' ')
  end

  def word_begins_with_a_constant(word)
    first_letter_of_the_word = word[0]
    word.slice(1,word.length-1) + first_letter_of_the_word + "ay"
  end

  def word_begins_with_a_vowel(word)
    word + "way"
  end

  def word_begins_with_two_constants(word)
    first_letter_of_the_word = word[0]
    second_letter_of_the_word = word[1]
    word.slice(2, word.length-1) + first_letter_of_the_word + second_letter_of_the_word + "ay"
  end

  def word_begins_with_three_constants(word)
    first_letter_of_the_word = word[0]
    second_letter_of_the_word = word[1]
    third_letter_of_the_word = word[2]
    word.slice(3, word.length-1) + first_letter_of_the_word + second_letter_of_the_word + third_letter_of_the_word + "ay"
  end
end
