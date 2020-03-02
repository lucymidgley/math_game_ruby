require "./game.rb"
require "./players.rb"

def play_game
  puts "please enter the name for player 1"
  name_player1 = gets.chomp
  puts "please enter the name for player 2"
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
    puts "----- New Round! -----" 
    end
    puts "Player #{player.name} #{q_and_a[0]}"
    solution = gets.chomp
    if solution.to_i == q_and_a[1] 
      player.add_point 
      puts "CORRECT!"
     else
      puts "INCORRECT!"
     end
    puts "--- Current score: player #{player1.name} #{player1.score} / 3 vs  player #{player2.name} #{player2.score} / 3 ---"
  }
  puts "==== GAME OVER!! ===="
if player1.score == player2.score 
    puts "These players are evenly matched! Player #{player1.name} #{player1.score}/3 and Player #{player2.name} also #{player2.score}/3!" 
else 
  winner = player1.score > player2.score ? player1 : player2
  puts "The winner is #{winner.name} with a score of #{winner.score}/3 !"
end
end

play_game


