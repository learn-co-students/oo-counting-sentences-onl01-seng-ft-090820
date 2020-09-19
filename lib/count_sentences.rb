require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
    if self.include?("." || "?" || "!") != true
      return 0
    else
      count = []
      sentences = self.split("." || "?" || "!")
      sentences.each do |sentence|
        if
          sentence != "." || "?" || "!"
          count << sentence
        end
      end
      binding.pry
      return count.length
    end
  end

end