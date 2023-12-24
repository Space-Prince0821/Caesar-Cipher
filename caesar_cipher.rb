def caesar_cipher(text, shifter)
    encrypted_text = ''

    text.each_char do |char|
        # Check if char is letter
        if char.match(/[a-zA-Z]/)
            # Shift char and add to encrypted_text
            encrypted_char = get_ascii(char, shifter)
            encrypted_text += encrypted_char
        else
            # If char not a letter, just append to encrypted_text
            encrypted_text += char
        end
    end

    encrypted_text
end

def get_ascii(char, shift)
    if char == char.upcase
        return ((char.ord - 'A'.ord + shift) % 26 + 'A'.ord).chr
    else
        return ((char.ord - 'a'.ord + shift) % 26 + 'a'.ord).chr
    end
end

input_strings = ENV['INPUT_STRING']
shifter = ENV['SHIFT']

if input_strings.nil? || input_strings.empty? || shifter.nil? || shifter.empty?
    puts "Please provide a string or message to encrypt in environment variable INPUT_STRING"
else
    shifter_num = shifter.to_i
    encrypted_message = caesar_cipher(input_strings, shifter_num)
    puts "Caesar cipher encrypted message: #{encrypted_message}"
end