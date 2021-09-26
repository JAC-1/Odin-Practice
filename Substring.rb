dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

def substring(arr)
  arr.reduce(Hash.new(0)) do |word, count|
    word[count] += 1
    word
  end
end

def split_in?(arr, string)
  arr.any?(string)
end

p dictionary.any?("below")
# String shift first char
p dictionary.any?("elow")
p dictionary.any?("low")

# continune to shift off chars
# after each shift:
#   if dictionary.any?
#     update hash (new word or nothing)
#   else
#     do nothing
