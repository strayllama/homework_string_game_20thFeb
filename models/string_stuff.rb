class String_stuff

  def initialize (string1, string2 = "")
    @string1 = string1.downcase
    @string2 = string2.downcase
  end

  def equals
    if (@string1 == @string2)
      return "\'#{@string1}\' is EQUAL to \'#{@string2}\'!"
    else
      return "\'#{@string1}\' is NOT EQUAL to \'#{@string2}\'!"
    end
  end # end EQUALS

  def palindrome
    if @string1 == @string1.reverse
      return "\'#{@string1}\' is a PALINDROME!"
    else
      return "\'#{@string1}\' is NOT a PALINDROME!"
    end
  end # end PALINDROME

  def isogram
    if @string1.chars.uniq == @string1.chars
      return "\'#{@string1}\' is an ISOGRAM!"
    else
      return "\'#{@string1}\' is NOT an ISOGRAM!"
    end
  end # end ISOGRAM

  def anogram
    if @string1.chars.sort == @string2.chars.sort
      return "\'#{@string1}\' is an ANAGRAM of \'#{@string2}\'!"
    else
      return "\'#{@string1}\' is NOT an ANAGRAM of \'#{@string2}\'!"
    end # end IF
  end # end ANOGRAM

end # end CLASS STRING_STUFF
