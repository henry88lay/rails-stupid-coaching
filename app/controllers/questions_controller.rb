class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @answer = params[:answer]
    if @answer.end_with? "?" || nil
      @response = 'Silly question, get dress and go to work!'
    elsif @answer == "I am going to work right now!"
      @response = "Great!"
    else
      @response = "I don't care, get dressed and go to work!"
    end
  end
end
