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
    lotto_numbers = []
    6.times do
      lotto_numbers << Random.new.rand(1..60) 
    end

    render json: {:lotto => lotto_numbers}
  end

  
# Every time a user visits/refreshes the page, the page should tell the user the number of visits made to that page so far. NOTE: This is impossible, but you should try your hand at this for a few minutes to discover why it’s impossible.
  def page_counter
    counter = 0 

    render json: {:visits => counter}
  end


# Add a page that returns the lyrics for “99 bottles of beer on the wall”.
  def lyrics
    counter = 99
    song_lyrics = []
    99.times do
      song_lyrics << "#{counter} bottles of beer on the wall"
      counter -= 1
    end
    
    render json: {sing: song_lyrics}
  end

end
