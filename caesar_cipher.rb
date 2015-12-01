def caesar_cipher(input, shift)
    word = ""
	input.each_byte do |i|
	    if (i >= 65 && i <= 90)
	        i = i + shift
	        if (i > 90)
	            i = i - 26
	        end
	end
	    if ( i >= 97 && i <= 122)
	        i = i + shift
	        if (i > 122)
	            i = i - 26
	        end
	    end
	    word += i.chr
	end
	return word
end
caesar_cipher("What a string!", 5)