require "./puzzle"
require "./player"

class Match
  attr_accessor :lives
  @player1_score = 0
  @player2_score = 0
  @@puzzle = Puzzle.new(1, 20)  # accessible to all
  @total_lives = 0

  def initialize(lives)
    @total_lives = lives
    @player1 = Player.new(lives, "Player 1: ")
    puts "\n"
    @player2 = Player.new(lives, "Player 2: ")
  end
  
  def play
    welcome_message = "Welcome to the TwO-O-Player Math Game! Each of you have #{@total_lives} lives. #{@player1.name} goes first."
    puts "\n", "="* welcome_message.length, welcome_message

    round = 1
    while @player1.life > 0 && @player2.life > 0 do
      round.even? ? turn(@player1) : turn(@player2)
      round += 1
    end

    if round.even? 
      puts "\n#{@player1.name} wins with a score of #{@player1.life}/#{@total_lives}"
    else
      puts "\n#{@player2.name} wins with a score of #{@player2.life}/#{@total_lives}"
    end

    puts "\n----- GAME OVER -----\n\nGood bye!"

  end
  
  def turn(player)
    puts "\n----- NEW TURN -----"
    question = @@puzzle.generate

    puts "#{player.name}: What does #{question} equal?"
    answer = gets.chomp

    if @@puzzle.right_answer?(question, answer)
      puts "YES! You are correct!"
    else
      puts "Seriously? No!"
      player.take_life
    end

    puts "#{@player1.name}: #{@player1.life}/#{@total_lives} vs #{@player2.name}: #{@player2.life}/#{@total_lives}"
  end

  def winner(round)

  end
end
