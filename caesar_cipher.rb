puts "Enter the text to encrypt:"
text = gets.chomp
puts "Enter the shift number:"
code = gets.chomp.to_i

def caesar_cipher(string, code)
  lower = ("a".."z").to_a
  upper = ("A".."Z").to_a
  encrypted = ""
  string.each_char do |char|
    if lower.include?(char)
      idx = lower.index(char)
      encrypted += lower[(idx + code) % lower.length]
    elsif upper.include?(char)
      idx = upper.index(char)
      encrypted += upper[(idx + code) % upper.length]
    else
      encrypted += char
    end
  end
  encrypted
end

result = caesar_cipher(text,code)

puts result