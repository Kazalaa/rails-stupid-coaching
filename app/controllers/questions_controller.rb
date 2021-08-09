class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:answer]
    @answers = ["Great!", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]
    if params[:answer].include?('?')
      @answers = @answers[1]
    elsif params[:answer] == "I am going to work"
      @answers = @answers[0]
    else
      @answers= @answers[2]
    end
  end
end
