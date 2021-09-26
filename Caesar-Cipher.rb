# require 'pry-byebug'

def wrap(bits, mod=2)
  a = 97
  b = 122
  over = (bits + mod) - b
  a + over
end
def encode(string, mod=2)
  b = string.bytes
  z = "z".bytes
  a = "a".bytes
  b.map! {|bit| bit == 32 ? bit : bit + mod}
  b.map! {|bit| bit > 122 ? wrap(bit) : bit}
  p b
  p "#{z} is z and #{a} is a"
end


# binding.pry
p [wrap(123)].unpack('c*')
p x = "asdf".unpack('c*')
p x.pack('c*')




