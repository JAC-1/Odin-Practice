# require 'pry-byebug'

def wrap_lower(byte)
  a = 96
  b = 122
  over = byte - b
  a + over
end

def wrap_upper(byte)
  a = 64
  z = 90
  over = byte - z 
  a + over
end

def encode(string, mod=2)
  b = string.bytes
  b.map! {|bit| bit == 32 ? bit : bit + mod}
  b.map! {|bit| bit > 122 ? wrap_upper(bit) : bit}
  bad_char_range = (91..96)
  b.map! {|bit| bad_char_range.any?(bit) ? wrap_lower(bit) : bit}
  return b
end


# binding.pry
puts "Give me a super secret message to encode"
string = gets.chomp
puts "Great, now give me a integer for the shift"
encoding = gets.chomp
puts "Thank you, your encoded message is: "
p encode(string, 5).pack('C*')

