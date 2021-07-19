class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:answer]

    if @answer.downcase == 'i am going to work'
      return @message = 'Great!'
    end

    if @answer.end_with?('?')
      @message = 'Silly question, get dressed and go to work!'
    else
      @message = 'I don\'t care, get dressed and go to work!'
    end
  end
end
