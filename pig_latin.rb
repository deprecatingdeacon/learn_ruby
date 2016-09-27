#write your code here
def translate(input)
  input_array = input.split(" ")
  puts input_array
  pig_latin_array = Array.new
  input_array.each do |w|
      temp = w.match(/\b(qu+|squ+|[bcdfghjklmnprstvwxyz]+)/)
      if ["a", "e", "i", "o", "u"].include?(w[0..0])
        w += "ay"
        pig_latin_array << w
      elsif temp
        w = w.sub(/#{temp}/, "")
        w.concat(temp.to_s + "ay")
        pig_latin_array << w
      end
    end
    pig_latin_array.join(" ")
end

translate("one two three")
