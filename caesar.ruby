=begin
    take two arguments: input string, shift int    
    
=end

def caesar(input, shift = 1)
    alphabet_lower = ("a".."z").to_a
    alphabet_upper = ("A".."Z").to_a
    input_arr = input.split("")
    output = ""
    input_arr.each do |character|
        if !(/[a-zA-Z]/.match(character)) then 
            output += character
        else
            if /[a-z]/.match(character) then
                output += alphabet_lower[(alphabet_lower.find_index(character) + shift) % 26]
            else
                output += alphabet_upper[(alphabet_upper.find_index(character) + shift) % 26]
            end
        end
        
    end
    p output
end

#overflow wraps
caesar("a",26)
#non-letters ignored
caesar("test 1 .9. a", 2)
#shift defaults to 1 provided no input
caesar("abc")
