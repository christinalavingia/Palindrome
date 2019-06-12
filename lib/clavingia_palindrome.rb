require "clavingia_palindrome/version"

class String

    # Returns true for a palindrome, false otherwise.
    def palindrome?
      processed_content == processed_content.reverse
    end

    # def letters
    #   the_letters = []
    #   letter_regex = /[a-z]/i
    #   self.chars.each do |character|
    #     if character.match(letter_regex)
    #       the_letters << character
    #     end
    # end
    # the_letters.join

    def letters
      self.chars.select { |c| c.match(/[a-z]/i) }.join
    end

    private
  
      # Returns content for palindrome testing.
      def processed_content
        self.scan(/[a-z]/i).join.downcase
      end
  end
