require 'pry-byebug'


def encode(string, mod=2)
  b = string.bytes
  z = "z".bytes
  a = "a".bytes
  p b
 # b.map! {|bit| bit != 32 ? bit + mod : bit}
  b.map! do |bit|
    if bit != 32
      bit += mod
      if bit > 122
        start = 96
        over = 122 - (bit + mod)
        bit = start + over
      end
    else
      bit = 32
    end
  end
  p b
  p "#{z} is z and #{a} is a"
  p z.pack('c*')
end

binding.pry
encode("apples and oranges")




