class QuestionsController < ApplicationController
  def ask
  end

  def answer
    # @ask = params[:question]
    # @answer = logic(@ask)
    @question = params[:user_ask]
    @return = logic(@question)
  end

  private

  def logic(ask)
    if ask == 'I am going to work'
      'Great!'
    elsif ask.include? '?'
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
