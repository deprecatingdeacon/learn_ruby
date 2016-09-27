class Book
  attr_reader :title

  def title=(sentence)
    except = "the", "a", "an", "do", "or", "and", "in", "of"
    sentence_array = sentence.split(" ")
    sentence_array = sentence_array.map do |i|
      if except.include? i
        i
      else
        i.capitalize
      end
    end
    sentence_array.first.capitalize!
    @title = sentence_array.join(" ")
  end
end
