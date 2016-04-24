class Book
  def title
    @book
  end
  def title=(word)
    exceptions = ["the", "a", "an", "and", "in", "of"]
    words = word.split(" ")
    words.map!{|word| (exceptions.include? word) ? word : word.capitalize}
    words[0] = words[0].capitalize
    @book = words.join(" ")
  end

  
end
