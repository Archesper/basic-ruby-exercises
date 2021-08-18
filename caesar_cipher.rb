require 'pry-byebug'

def is_alpha?(char)
    char.downcase.ord.between?(97, 122)
end

def caesar_cipher(string, shift)
    return string.split('').map do |letter|
        if is_alpha?(letter)
            is_upcase = letter == letter.upcase ? true : false # Remember whether letter was uppercase or not
            new_index = letter.downcase.ord + shift
            until new_index.between?(97, 122) do
                new_index -= 26 # Wrap from a to z
                #binding.pry
            end
            letter = is_upcase ? new_index.chr.upcase : new_index.chr
        else
            letter = letter
        end
    end.join('')
end
 

puts caesar_cipher(ARGV[0], ARGV[1].to_i)