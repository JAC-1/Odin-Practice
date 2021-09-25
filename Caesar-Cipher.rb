require 'pry-byebug'

def into_bytes (string)
  b = string.bytes
  b.each do |bite|
    if bite == 32
      p "space"
    end
  end
  p b
end

# def  encode(bytes)

# end

binding.pry

into_bytes("apples")
into_bytes("apples and oranges")




