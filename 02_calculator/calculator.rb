def add(a,b)
  a+b
end

def subtract(a,b)
  a-b
end

def sum(arr)
  sum = 0
  arr.each {|a| sum += a}
  return sum
end

def multiply(a,b)
  a*b
end

def power(a,n)
  a**n
end

def factorial(a)
  f = 1
  (1..a).each {|num| f *= num}
  return f
end
