ARTICLES = %w[the a an]
CONJUNCTIONS = %w[for and nor but or yet so]
PREPOSITIONS = %w[to from over under on in of]

def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word,n=2)
  ans = ""
  (n-1).times {ans += word + " "}
  ans += word
  return ans
end

def start_of_word(word,n)
  word[0..n-1]
end

def first_word(word)
  first_space = word.index(" ")
  word[0..first_space-1]
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

def titleize(string)
  arr = string.split
  arr[0].capitalize!
  arr.each do |word|
    if capitalize?(word) == true
      word.capitalize!
    end
  end
  arr.join(" ")
end