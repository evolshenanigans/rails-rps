class GameController < ApplicationController
  def play_rock
    @user_choice = 'rock'
    @computer_choice = ["rock", "paper", "scissors"].sample
    @result = determine_winner(@user_choice, @computer_choice)
    render({ :template => "game_templates/play_rock" })
  end

  def play_paper
    @user_choice = 'paper'
    @computer_choice = ["rock", "paper", "scissors"].sample
    @result = determine_winner(@user_choice, @computer_choice)
    render({ :template => "game_templates/play_paper" })
  end

  def play_scissors
    @user_choice = 'scissors'
    @computer_choice = ["rock", "paper", "scissors"].sample
    @result = determine_winner(@user_choice, @computer_choice)
    render({ :template => "game_templates/play_scissors" })
  end

  def rules
    render({ :template => "game_templates/rules" })
  end

  private

  def determine_winner(player_choice, computer_choice)
    outcomes = {
      'rock' => 'scissors',
      'scissors' => 'paper',
      'paper' => 'rock'
    }

    if player_choice == computer_choice
      'We tied!'
    elsif outcomes[player_choice] == computer_choice
      'We won!'
    else
      'We lose!'
    end
  end
end
