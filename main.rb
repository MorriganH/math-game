require './Player'
require './Turn'

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")
players = [player1, player2]

i = 0
while player1.lives > 0 && player2.lives > 0 do
current_player = players[i % 2]

turn = Turn.new(current_player.name)

turn.ask_question
current_player.wrong_answer unless turn.judge_answer
puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"

i += 1
end

puts "----- GAME OVER -----"
winner = players[players.index {|player| player.lives > 0}]
puts "#{winner.name} wins with a score of #{winner.lives}/3"
puts "Good bye!"