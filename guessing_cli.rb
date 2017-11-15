require 'pry'

# Code your solution here!
def run_guessing_game
  prng = Random.new
  puts "Guess a number between 1 and 6."
  input = ""
  while input
    input = gets.chomp
    computer_guess = prng.rand(6)+1
    if input == "exit"
      puts "Goodbye!"
      break
    else
      if input.to_i == computer_guess
        binding.pry
        puts "You guessed the correct number!"
      else
        puts "The computer guessed #{computer_guess}."
      end
    end
  end
end
run_guessing_game
