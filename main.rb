require "./game.rb"
require "./players.rb"
require 'colorize'

def play_game
  puts "please enter the name for player 1".green
  name_player1 = gets.chomp
  puts "please enter the name for player 2".green
  name_player2 = gets.chomp
  puts "Lets play!"
  player1 = Player.new(name_player1)
  player2 = Player.new(name_player2)
  players = [player1, player2]
  game = Game.new
  (0..5).each{|n|
    player_num = n % 2
    player = players[player_num]
    val1 = game.gen_num
    val2 = game.gen_num
    q_and_a = game.ask_question(val1, val2)
    if n % 2 == 0 
    puts "----- New Round! -----".blue 
    end
    puts "Player #{player.name} #{q_and_a[0]}"
    solution = gets.chomp
    if solution.to_i == q_and_a[1] 
      player.add_point 
      puts "CORRECT!".green
     else
      puts "INCORRECT!".red
     end
    puts "--- Current score: player #{player1.name} #{player1.score} / 3 vs  player #{player2.name} #{player2.score} / 3 ---".yellow
  }
  puts "==== GAME OVER!! ====".red
if player1.score == player2.score 
    puts "These players are evenly matched! Player #{player1.name} #{player1.score}/3 and Player #{player2.name} also #{player2.score}/3!".bold.blue 
else 
  winner = player1.score > player2.score ? player1 : player2
  puts "The winner is #{winner.name} with a score of #{winner.score}/3 !".bold.blue
end
end

play_game


