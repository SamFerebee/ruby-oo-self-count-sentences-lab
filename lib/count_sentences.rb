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
    # total = 0
    # total += self.count(".")
    # total += self.count("?")
    # total += self.count("!")
    # total
    total = self.split(/\?|\.|!/)
    total.reject!{|str| str.empty?}
    #binding.pry
    total.size
  end
end