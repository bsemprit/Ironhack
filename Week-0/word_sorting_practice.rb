

def sorting(something)
words= something.gsub(/[^a-z0-9\s]/i, '') #this removes everything except a-z 0-9 and spaces (case insensitive)
words_array = words.split(" ") #this creates an array 
puts words_array.sort {|x,y| x.downcase <=> y.downcase} #this sorts the array case insensitive
end

sorting "Have a nice day."
sorting "Fools fall for foolish follies."
sorting "Ruby is a fun language!"