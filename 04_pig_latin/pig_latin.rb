VOWELS=["a","e","i","o","u"]

def translate_each(word)
  n=word.size
  part = ''
  (1..n).each do |num|
    if VOWELS.include? word[num-1]
      if word[num-1] != "u" and word[num-2]!='q'
        part = word[num-1]
        break

      end

    end
  end
  arr = word.partition(part)
  arr[1] << arr[2] << arr[0] <<'ay'
end

def translate(word)
  result=[]
  array = word.split(" ")
  puts array.inspect

  array.each do |elem|
    elem_new = translate_each(elem)
    result.append(elem_new)
  end
  result.join(" ")
end