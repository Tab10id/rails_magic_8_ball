class MagicController < ApplicationController
  def index
    @magic_ball_answers =
      MagicBallAnswer.
      order(created_at: :desc).
      limit(10)
  end
  
  def new
    @magic_ball_answer = MagicBallAnswer.new
  end
  
  def create
    @magic_ball_answer = MagicBallAnswer.new(answer_params)

    if @magic_ball_answer.save
      redirect_to home_path
    else
      render :new
    end
  end
  
  private
  
  def answer_params
    params.require(:magic_ball_answer).permit(:question)
  end
end
