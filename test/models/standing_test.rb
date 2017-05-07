require 'test_helper'

class StandingTest < ActiveSupport::TestCase

  fixtures :standings
  
  test "standing attributes must not be empty" do
    standing = Standing.new
    assert standing.invalid?
    assert standing.errors[:matchday].any?
    assert standing.errors[:league_id].any?
    assert standing.errors[:team_id].any?
    assert standing.errors[:games_played].any?
    assert standing.errors[:points].any?
    assert standing.errors[:goals].any?
    assert standing.errors[:goals_against].any?
    assert standing.errors[:goal_difference].any?
    assert standing.errors[:wins].any?
    assert standing.errors[:draws].any?
    assert standing.errors[:losses].any?
    assert standing.errors[:home_goals].any?
    assert standing.errors[:home_goals_against].any?
    assert standing.errors[:home_wins].any?
    assert standing.errors[:home_draws].any?
    assert standing.errors[:home_losses].any?
    assert standing.errors[:away_goals].any?
    assert standing.errors[:away_goals_against].any?
    assert standing.errors[:away_wins].any?
    assert standing.errors[:away_draws].any?
    assert standing.errors[:away_losses].any?
  end
  
  test "standing must belong to a team" do
    standing = standings(:matchday_1)
    assert standing.valid?
    
    assert_equal("Chelsea", standing.team.name)
    
    standing.team = nil
    assert standing.invalid?
    assert standing.errors[:team].any?
  end
  
  test "standing must belong to a league" do
    standing = standings(:matchday_1)
    assert standing.valid?
    
    assert_equal("Premier League", standing.league.name)
    
    standing.league = nil
    assert standing.invalid?
    assert standing.errors[:league].any?
  end
  
  test "standing must have a matchday" do 
    standing = standings(:matchday_1)
    
    standing.matchday = -1
    assert standing.invalid?
    assert standing.errors[:matchday].any?
    
    standing.matchday = 0
    assert standing.invalid?
    assert standing.errors[:matchday].any?
    
    standing.matchday = nil
    assert standing.invalid?
    assert standing.errors[:matchday].any?
    
    standing.matchday = 1    
    assert standing.valid?
  end
  
  test "standing must not be a duplicate" do
    standing_1 = standings(:matchday_1)
    standing_2 = standings(:matchday_2)
    
    assert standing_2.valid?
  
    standing_2.matchday = 1
    
    assert standing_2.invalid?
    assert standing_2.errors[:matchday].any?
  end
  
end
