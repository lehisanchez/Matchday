require 'test_helper'

class MatchTest < ActiveSupport::TestCase
  
  fixtures :matches
  
  def setup
    @match = Match.create( league: leagues(:premier_league), date:  "2017-05-07 01:04:17", status: "SCHEDULED", matchday: 1, home_team: teams(:liverpool), away_team: teams(:arsenal), home_team_goals: 0, away_team_goals: 0 )
  end
  
  test "match attributes must not be empty" do
    match = Match.new
    assert match.invalid?
    assert match.errors[:league].any?
    assert match.errors[:date].any?
    assert match.errors[:status].any?
    assert match.errors[:matchday].any?
    assert match.errors[:home_team].any?
    assert match.errors[:away_team].any?
    assert match.errors[:home_team_goals].any?
    assert match.errors[:away_team_goals].any?
  end

  test "match must belong to a team" do
    match = matches(:chelsea_v_liverpool)
    assert match.valid?
    
    assert_equal("Chelsea", match.home_team.name)
    assert_equal("Liverpool", match.away_team.name)
    
    match.home_team = nil
    assert match.invalid?
    assert match.errors[:home_team].any?
    
    match.home_team = teams(:chelsea)
    assert match.valid?
    
    match.away_team = nil
    assert match.invalid?
    assert match.errors[:away_team].any?
    
    match.away_team = teams(:liverpool)
    assert match.valid?
  end
  
  test "match must belong to a league" do
    match = matches(:chelsea_v_liverpool)
    assert match.valid?

    assert_equal("Premier League", match.league.name)

    match.league = nil
    assert match.invalid?
    assert match.errors[:league].any?
  end

  test "match must have a matchday" do
    match = matches(:chelsea_v_liverpool)

    match.matchday = -1
    assert match.invalid?
    assert match.errors[:matchday].any?

    match.matchday = 0
    assert match.invalid?
    assert match.errors[:matchday].any?

    match.matchday = nil
    assert match.invalid?
    assert match.errors[:matchday].any?

    match.matchday = 1
    assert match.valid?
  end
  
  test "goals must be equal or greater than 0" do
    match = matches(:chelsea_v_liverpool)
        
    match.home_team_goals = -1
    assert match.invalid?
    assert match.errors[:home_team_goals].any?
    
    match.home_team_goals = 1.5
    assert match.invalid?
    assert match.errors[:home_team_goals].any?

    match.home_team_goals = 0
    assert match.valid?
  
    match.home_team_goals = 1
    assert match.valid?
    
    match.away_team_goals = -1
    assert match.invalid?
    assert match.errors[:away_team_goals].any?
    
    match.away_team_goals = 1.5
    assert match.invalid?
    assert match.errors[:away_team_goals].any?

    match.away_team_goals = 0
    assert match.valid?

    match.away_team_goals = 1
    assert match.valid?
  end
  
  test "matchday must be a positive integer" do
    match = matches(:chelsea_v_liverpool)
        
    match.matchday = -1
    assert match.invalid?
    assert match.errors[:matchday].any?

    match.matchday = 0
    assert match.invalid?

    match.matchday = 1
    assert match.valid?
  end

  test "match must not be a duplicate" do
    match = @match.dup
    assert_not match.valid?
  end
  
end
