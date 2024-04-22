class ZebraController < ApplicationController
  def giraffe
    @random_move = ["rock", "paper", "scissors"].sample
    if @random_move == "rock"
      @outcome = "tied"
    elsif @random_move == "paper"
      @outcome = "lost"
    else 
      @outcome = "won"
    end
    render({ :template => "game_templates/play_rock" })
  end

  def elephant
    @random_move = ["rock", "paper", "scissors"].sample
    if @random_move == "paper"
      @outcome = "tied"
    elsif @random_move == "rock"
      @outcome = "won"
    else 
      @outcome = "lost"
    end
    render({ :template => "game_templates/play_paper"})
  end

  def lion
    @random_move = ["rock", "paper", "scissors"].sample
    if @random_move == "scissors"
      @outcome = "tied"
    elsif @random_move == "rock"
      @outcome = "lost"
    else 
      @outcome = "won"
    end
    render({ :template => "game_templates/play_scissors"})
  end

  def rules
    render({ :template => "game_templates/rules"})
  end
end
