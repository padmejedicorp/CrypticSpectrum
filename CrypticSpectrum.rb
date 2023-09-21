class CrypticSpectrum
  def initialize
    @message = "Gur frperg vf n fgnoyr fcnpr."
    @attempts = 0
  end

  def play
    puts "Welcome to CrypticSpectrum!"
    puts "Can you decode the cryptic message?"

    loop do
      display_message
      print "Enter your guess: "
      guess = gets.chomp

      if decode(guess)
        puts "Congratulations! You've decoded the message."
        break
      else
        puts "Sorry, that's not correct. Keep trying."
        @attempts += 1
      end
    end

    puts "You solved the message in #{@attempts + 1} attempts!"
  end

  private

  def display_message
    decoded_message = decode(@message)
    puts "Cryptic Message: #{@message}"
    puts "Decoded Message: #{decoded_message}"
  end

  def decode(input)
    decoded_message = input.tr("a-zA-Z", "n-za-mN-ZA-M")
    decoded_message.downcase == "the secret is a hidden space."
  end
end

# Start the game
game = CrypticSpectrum.new
game.play
