def echo(msg)
  msg
end
def shout(msg)
  msg.upcase
end
def repeat(msg,x=2)
  ([msg]*x).join(" ")
end
def start_of_word(str,ind)
  str[0..ind-1]
end
def first_word(str)
  arr = str.split(" ")
  arr[0]
end
def titleize(str)
  littlewords = ["and", "over", "the"]
  arr = str.split(" ")
  first = arr[0].capitalize!
  if arr.length > 1
    first = arr.shift
    n = arr.map!{ |word| (littlewords.include? word) ? word : word.capitalize}
    rem = n.join(" ")
    [first,rem].join(" ") 
  else
    first
  end
end

