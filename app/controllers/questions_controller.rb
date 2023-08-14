class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @input = params[:question]
    @output = '??'
    # check value of question
    # if question is I am going to work, return great!
    # if can i eat?, Silly question, get dressed and go to work!.
    # if else, I don't care, get dressed and go to work!
    if @input == 'am going to work'
      @output = 'great!'
    elsif @input == 'can i eat?'
      @output = 'silly question, get dressed and go to work'
    else
      @output = "I don't care, get dressed and go to work!"
    end
  end
end
