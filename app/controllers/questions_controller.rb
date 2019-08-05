class QuestionsController < ApplicationController
  def ask
    # @ask = params[:ask_type]
    # @answers = ANSWERS.select { |id, a| a[:ask] == @ask }
  end

  def answer
    @question = params[:question]
    @answer =
      if @question == 'I am going to work'
        'Great!'
      elsif @question.end_with?('?')
        'Silly question, get dressed and go to work!'
      else
        "I don't care, get dressed and go to work!"
      end
  end
end
