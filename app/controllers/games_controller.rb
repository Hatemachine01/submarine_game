class GamesController < ApplicationController

  def play
  end

  def test

    @current_user = User.find_by_id(current_user.id)
    number_submarines = params[:counter1].to_i
      case number_submarines 
        when 2 
          score = Score.new(result: "Winner", destroyed_sub: number_submarines)
          @current_user.scores << score 
          @current_user.games_won += 1 
          @current_user.save
        when 1 
          score = Score.new(result: "Almost", destroyed_sub: number_submarines)
          @current_user.scores << score     
      end
  end
end
