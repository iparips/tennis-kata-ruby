class Game

  SCORECARD = {
      '0' => 0,
      '1' => 15,
      '2' => 30,
      '3' => 40,
      '4' => '50'
  }

  def play(points)
    @p1_points_won = points.count { |p| p == 1 }
    @p2_points_won = points.count { |p| p == 2 }
  end

  def score
    # if @p1_points_won >= 3 && @p2_points_won >= 3
    #   score_duce
    # elsif @p1_points_won >= 3 || @p2_points_won >= 3
    #   score_end_game
    # else
    #   mid_game_score
    # end
    0
  end

  private

  def score_duce
    if (@p1_points_won - @p2_points_won).abs > 1
      score_end_game
    elsif (@p1_points_won == @p2_points_won) && (@p1_points_won >= 3)
      ['duce']
    elsif @p1_points_won > @p2_points_won
      ['adv 1']
    elsif @p1_points_won < @p2_points_won
      ['adv 2']
    end
  end

  def score_end_game
    if @p1_points_won > @p2_points_won
      ['won', 'lost']
    elsif @p1_points_won < @p2_points_won
      ['lost', 'won']
    end
  end

  def mid_game_score
    p1_score = SCORECARD[@p1_points_won.to_s]
    p2_score = SCORECARD[@p2_points_won.to_s]
    [p1_score, p2_score]
  end

end
