def translate(string)
  s = string.split(" ")
  s.collect!{|word| latin(word)}
  s.join(" ")
end

def latin(string)
  return string+"ay" if string[0].match(/[aeiou]/)
  return [string[3..-1],"squay"].join if string[0..2].include? "squ"
  return [string[2..-1],"qu","ay"].join if string[0..1].include? "qu"
  s = string[0..2].match(/[^aeiou]{3}/)
  return [string[3..-1],s,"ay"].join if s
  s = string[0..1].match(/[^aeiou]{2}/)
  return [string[2..-1],s,"ay"].join if s
  s = string[0].match(/[^aeiou]/)
  return [string[1..-1],s,"ay"].join if s
end
