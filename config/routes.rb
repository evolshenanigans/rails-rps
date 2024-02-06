Rails.application.routes.draw do
  get("/", { :controller => "game", :action => "rules"})
  get("/rock", { :controller => "game", :action => "play_rock"})
  get("/paper", { :controller => "game", :action => "play_paper"})
  get("/scissors", { :controller => "game", :action => "play_scissors"})
end
