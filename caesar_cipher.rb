def is_alpha?(char)
    char.downcase.ord.between?(97, 122)
end

def caesar_cipher(string, shift)
    return string.split('').map do |letter|
        if is_alpha?(letter)
            new_index = (letter.ord + shift).between?(97, 122) ? (letter.ord + shift) : (letter.ord + shift - 26) # Subtract 26 to wrap from z to a
            letter = new_index.chr
        else
            letter = letter
        end
    end.join('')
end
 

puts caesar_cipher(ARGV[0], ARGV[1].to_i)