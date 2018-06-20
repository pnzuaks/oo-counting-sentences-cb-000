require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true 
    else return false 
  end
  end

  def question?
    if self.end_with?("?")
      return true
    else return false 
  end
  end

  def exclamation?
    if self.end_with?("!")
      return true
    else return false 
  end
  end

  def count_sentences
    
    without_question_marks = self.gsub("?", ".")
    without_exclamation_marks = without_question_marks.gsub("!", ".")

    result = without_exclamation_marks.split(".")
    result.reject! { |c| c.empty? }
    
    return result.count
    end
end