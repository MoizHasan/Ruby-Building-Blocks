def substrings(text, dictionary)
	hash = Hash.new
	text = text.downcase
	dictionary.each do |key|
    if text.include? key
	            hash[key] = text.scan(key).count
		end
	end
	hash
end
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)