require 'pry'

def SwapII(str)
    alphabet = ("A".."z")
    digits = ("0".."9")
    
    # change case for all letters
    arr = str.scan /./
    
    arr.map! do |unit|
        if alphabet.include?(unit) && unit.upcase == unit
            unit = unit.downcase
        elsif alphabet.include?(unit) && unit.downcase == unit
            unit = unit.upcase
        else
            unit = unit
        end
    end
    
    arr.map

    
    puts arr.join
    
    # if a letter has a number on either side, switch the two numbers
         
end


SwapII("Hello -5LOL6")