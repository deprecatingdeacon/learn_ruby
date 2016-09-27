#write your code here
def echo(user_input)
  if user_input == "hello"
    "hello"
  elsif user_input == "bye"
    "bye"
  end
end

def shout(user_input)
  user_input.upcase
end

def repeat(user_input, num_times=2)
  ([user_input] * num_times).join(" ")
end

def start_of_word(user_input, n)
  user_input[0...n]
end

def first_word(user_input)
  user_input.split.first
end

def titleize(user_input)
  output = user_input.split(" ").map do |word|
    if ["the", "and", "over"].include?(word)
      word
    else
      word.capitalize
    end
  end
  output.first.capitalize!
  output.join(" ")
end
