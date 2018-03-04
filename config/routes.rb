Rails.application.routes.draw do
  get '/fortune' => 'page#fortune_teller'
  get '/lottery' => 'page#lottery_generator'
  get '/page' => 'page#page_counter'
  get '/song' => 'page#lyrics'
end
