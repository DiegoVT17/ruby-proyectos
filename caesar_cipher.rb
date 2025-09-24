puts "Enter the text to encrypt:"
text = gets.chomp
puts "Enter the shift number:"
code = gets.chomp.to_i

def caesar_cipher(string, code)
  lower = "abcdefghijklmnopqrstuvwxyz"
  upper = lower.upcase
  new_string = ""
  string.each_char do |char|
    if lower.include?(char)
      idx = lower.index(char)
      new_string += lower[(idx + code) % lower.length]
    elsif upper.include?(char)
      idx = upper.index(char)
      new_string += upper[(idx + code) % upper.length]
    else
      new_string += char
    end
  end
  new_string
end

result = caesar_cipher(text,code)

puts result