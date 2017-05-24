class Book
  # TODO: your code goes here!
  attr_accessor :title

  def title
    non_cap = ["and", "in", "the", "of", "a", "an"]
    result = ""
    @title.split.each_with_index do |word,idx|
      if idx == 0
        result << word.capitalize
        result << " "
      elsif !non_cap.include?(word)
        result << word.capitalize
        result << " "
      else
        result << word
        result << " "
      end
    end
    result.strip
  end

end
