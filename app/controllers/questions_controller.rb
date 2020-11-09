class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @ask =params[:ask]
    if @ask.end_with?("?")
      @silly ="Silly question, get dressed and go to work!"
    elsif @ask == "I am going to work"
      @great ="Great!"
    else
      @go ="I don't care, get dressed and go to work!"
    end
  end
end
