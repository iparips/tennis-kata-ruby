class Game

  SCORECARD = {
      '0' => 0,
      '1' => 15,
      '2' => 30,
      '3' => 40,
      '4' => 'won'
  }

  def play(points)
    @p1_points_won = points.count { |p| p == 1 }
    @p2_points_won = points.count { |p| p == 2 }
  end

  def score
    if ((@p1_points_won == @p2_points_won) && (@p1_points_won >= 3) )
      ['duce']
    else
      score_end_game
    end
  end

  private

  def score_end_game
    p1_score = SCORECARD[@p1_points_won.to_s]
    p2_score = SCORECARD[@p2_points_won.to_s]
    p2_score = 'lost' if p1_score == 'won'
    p1_score = 'lost' if p2_score == 'won'
    [p1_score, p2_score]
  end


end
