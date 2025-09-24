dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
str = "Howdy partner, sit down! How's it going?"

def find_substring(arr, str)
  str.downcase.split(" ")
end

p find_substring(dictionary, str)