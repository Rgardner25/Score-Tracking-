require 'rspec'

class Scoreboard
  attr_reader :score

  def initialize(team)
    @team = team
    @score = score_builder
  end

  def score_builder
    {
      @team => {
        1 => 0,
        2 => 0,
        3 => 0,
        4 => 0,
        5 => 0,
        6 => 0,
        7 => 0,
        8 => 0,
        9 => 0
      }
    }
  end

  def generate_total
    @score[@team].values.inject(&:+)
  end

  def add_run inning:
    @score[@team][inning] += 1
  end
end
