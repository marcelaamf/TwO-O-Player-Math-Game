class Game 
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = @player1
  end

 attr_accessor :player1, :player2, :current_player

  def start_match
    while true
      puts "----NEW TURN----"
      answer = ask_question
      user_answer = ($stdin.gets.chomp.to_i)

      if user_answer == answer
        puts "YES! You are correct" 
      else
        puts "Seriously? No. The correct answer is #{answer}."
        current_player.lose_life
      end
      
      puts " P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
      switch_current_player
      
      if player1.lives == 0 || player2.lives == 0
        winner
        return false
      end
    end  
  end

  def ask_question
    number1 = rand(1..20)
    number2 = rand(1..20)
    puts "#{current_player.name}: What does #{number1} plus #{number2} equal?"
    number1 + number2     
  end

  def winner
    player1.lives == 0 ? winner = player2 : winner = player1
    puts "#{winner.name} wins with a score of #{winner.lives}/3"
  end

  def switch_current_player
    @current_player == @player1 ? @current_player = @player2 : @current_player = @player1
  end
end


