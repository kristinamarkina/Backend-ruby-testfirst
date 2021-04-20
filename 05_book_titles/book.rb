ARTICLES = %w[the a an]
CONJUNCTIONS = %w[for and nor but or yet so]
PREPOSITIONS = %w[to from over under on in of]

class Book
  attr_accessor :title
  def initialize(title = '')
    @title = title
  end

  def capitalize?(word)
    if ARTICLES.include? word
      return false
    end
    if  CONJUNCTIONS.include? word
      return false
    end
    if  PREPOSITIONS.include? word
      return false
    end
    return true
  end

  def title
    arr = @title.split
    arr[0].capitalize!
    arr.each do |word|
      if capitalize?(word) == true
        word.capitalize!
      end
    end
    arr.join(" ")
  end


  # write your code here
end
