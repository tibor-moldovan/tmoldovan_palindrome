require "tmoldovan_palindrome/version"

module TmoldovanPalindrome

  # Returns true for a palindrome, false otherwise.
  def palindrome?
   if processed_content.empty?
	false
	else
    processed_content == processed_content.reverse
  end
  end



  private

    # Returns content for palindrome testing.
    def processed_content
      self.to_s.scan(/[a-z,0-9]/i).join.downcase
    end


end

class String
  include TmoldovanPalindrome
end

class Integer
  include TmoldovanPalindrome
end
