class PigLatinizer

  def initialize
  end

  def piglatinize(word)
    constants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "x", "z"]
    vowels = ["a", "e", "i", "o", "u"]
    pig_lantin_word = []
    if word.include?(' ')
      binding.pry
    elsif constants.include?(word.downcase.split('')[0]) && constants.include?(word.downcase.split('')[1]) && constants.include?(word.downcase.split('')[2])
      word_begins_with_three_constants(word)
    elsif constants.include?(word.downcase.split('')[0]) && constants.include?(word.downcase.split('')[1])
      word_begins_with_two_constants(word)
    elsif constants.include?(word.downcase.split('')[0])
      word_begins_with_a_constant(word)
    elsif word == "I"
      word + "way"
    elsif vowels.include?(word.downcase.split('')[0])
      word_begins_with_a_vowel(word)
    end
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
