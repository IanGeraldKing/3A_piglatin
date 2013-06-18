class PigLatinConverter

	def self.convert(normal_word)
		vowels = %w(a e i o u)
		consonants = %w(b c d f g h j k l m n p q r s t v w x y z)
		discoveredcharacters = ""

		if (normal_word.nil? || normal_word.empty?)
			return normal_word

		elsif normal_word.start_with?(vowels)
			return normal_word

		else
			normal_word.each_char do |discovered|
				if consonants.include? discovered
				discoveredcharacters += discovered
				else
					break
				end
			end

			normal_word.slice! discoveredcharacters

			translated_word = normal_word + discoveredcharacters + "ay"

			return translated_word

		end
	end
end

puts "Enter the word you desired to be translated into Pig Latin:"

input = gets.chomp.downcase

translate = puts PigLatinConverter.convert(input)





