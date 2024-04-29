
class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:questions]
    if  @question ==  "I am going to work"
      @answer = 'Great!'
    elsif @question.include? "?"
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
# use raise to the controller to see which params are coming from the previous page, you can use this to
# check those available at that moment for us to use (and use logic to produce the answer(s))
# use @ question- whenever want to view
