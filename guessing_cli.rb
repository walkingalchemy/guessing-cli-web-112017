require 'pry'

# Code your solution here!
def run_guessing_game
  input = ""
  while input
    puts "Guess a number between 1 and 6."
    computer_guess = rand(1..6)
    input = gets.chomp
    if input.downcase == "exit"
      puts "Goodbye!"
      break
    elsif input.to_i == computer_guess
      # binding.pry
      puts "You guessed the correct number!"
    else
      puts "The computer guessed #{computer_guess}."
    end
  end
end
# run_guessing_game
