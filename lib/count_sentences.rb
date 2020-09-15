require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    sentences_ar = self.split ("")
    sentence_count = 0
    sentences_ar.each_with_index do |char, index|
      if char == "." || char == "?" || char == "!"
        sentence_count += 1
        if sentences_ar[index] == sentences_ar[index + 1]
          sentence_count -= 1
        end
      end
    end
    sentence_count
  end
end