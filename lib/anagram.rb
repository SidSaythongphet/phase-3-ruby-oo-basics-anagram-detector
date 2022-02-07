class Anagram
    attr_reader :word
    def initialize(word)
        @word = word
    end

    def match(arr)
        result = []
        sorted_word = @word.chars.sort.join
        sorted_array = arr.map { |word| word.chars.sort.join }
        target_index = sorted_array.map.with_index { |word, index| index if word == sorted_word}.compact
        target_index.map { |index| result << arr[index] }
        result
    end
end

