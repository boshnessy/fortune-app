class PageController < ApplicationController
  
# The page should return a random fortune. Every time you refresh the page, you’ll get a new fortune. You should make up at least 3 different fortunes.
  def fortune_teller
    fortunes = [
      "You will get a job offer in the next 3 days",
      "You will adopt a puppy",
      "You will come across a large sum of money"]

    selected_fortune = fortunes.sample

    render json: {:fortune => selected_fortune}
  end

  
# The page should return 6 randomly generated numbers between 1 and 60 so as to predict the upcoming lotto numbers.
  def lottery_generator
    lotto = []
    6.times do
      lotto << Random.new.rand(1..60) 
    end

    render json: {:lotto => lotto}
  end
end
