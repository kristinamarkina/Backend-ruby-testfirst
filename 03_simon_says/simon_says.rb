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

def titleize(string)
  arr = string.split
  arr[0].capitalize!
  arr.each do |word|
    word.capitalize! if word.length > 4
  end
  arr[-1].capitalize!
  arr.join(" ")
end