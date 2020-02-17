class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @coach_answer = -> () do
      return 'great!' if params[:question].include?('work')
      return 'Silly question, get dressed and go to work!.' if params[:question].include?('?')
      return 'I dont care, get dressed and go to work!'
    end.call
  end
end
