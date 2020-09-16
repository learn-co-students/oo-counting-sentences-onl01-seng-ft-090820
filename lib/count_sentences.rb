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
   arr = self.split(/[.!?] /)
    # arr.delete_if {|n| n == " "}
    arr.count
  end
end