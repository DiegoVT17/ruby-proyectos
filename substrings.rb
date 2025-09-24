dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
str = "Howdy partner, sit down! How's it going?"

def find_substring(arr, str)
  cleaned = str.gsub(/[^a-zA-Z0-9\s]/, "").downcase.split(" ")
  cleaned.reduce(Hash.new(0)) do |result, word|
    arr.each { |el| result[el] += 1 if word.include?(el) }
    result
  end
end

p find_substring(dictionary, str)