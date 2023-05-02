require './players.rb'
class Question
  def initialize (player)
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = @player1
  end

  def ask_question
  number1 = rand(1..20)
  number2 = rand(1..20)
   puts "#{@current_player.name}: What does #{number1} plus #{number2} equal?"
   answer = number1 + number2
      
    user_answer = ($stdin.gets.chomp.to_i)
    
    if user_answer == answer
      puts "YES! You are correct" 
    else
      puts "Seriously? No. The correct answer is #{answer}."
      @current_player.lose_life
      puts "Lose one life"
      # p @current_player
      @current_player == @player1 ? @current_player = @player2 : @current_player = @player1
      # p @current_player
    end  
  end
end

new_question = Question.new(@current_player)
new_question.ask_question


