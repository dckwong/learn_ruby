def add (x,y)
  return x+y
end
def subtract (x,y)
  return x-y
end
def sum (arr)
 return  arr.inject(0){|sum,x| sum + x} 
end
def multiply(*s)
  prod = 1.0
  s.each {|x| prod*=x}
  return prod
end
def power(x,y)
  return x**y
end
def factorial (x)
  return 0 if x==0
  i = x
  prod = 1.0
  while i > 0
    prod = prod*i
    i-=1
  end
  return prod
end
