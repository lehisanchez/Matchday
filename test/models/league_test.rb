require 'test_helper'

class LeagueTest < ActiveSupport::TestCase

  fixtures :leagues
  
  def new_league
    League.new( name:                  "Champions League",
                image_url:             "logo.jpg",
                current_matchday:      1,
                number_of_matchdays:   38,
                number_of_teams:       20,
                number_of_games:       380,
                api_football_data_id:  440)
  end
  
  test "league attributes must not be empty" do
    league = League.new
    assert league.invalid?
    assert league.errors[:name].any?
    assert league.errors[:image_url].any?
    assert league.errors[:current_matchday].any?
    assert league.errors[:number_of_matchdays].any?
    assert league.errors[:number_of_teams].any?
    assert league.errors[:number_of_games].any?
    assert league.errors[:api_football_data_id].any?
  end
  
  test "league is not valid without unique attributes" do
    league = new_league
                         
    assert league.valid?
    
    league.name = leagues(:premier_league).name
    assert league.invalid?
    league.errors[:name].any?
    
    league.name = "Champions League"
    assert league.valid?
    
    league.image_url = leagues(:premier_league).image_url
    assert league.invalid?
    league.errors[:image_url].any?
    
    league.image_url = "logo.jpg"
    assert league.valid?
    
    league.api_football_data_id = leagues(:premier_league).api_football_data_id
    assert league.invalid?
    league.errors[:api_football_data_id].any?
    
    league.api_football_data_id = 440
    assert league.valid?
  end  
  
  test "league is not valid without a positive data" do
    league = new_league
    
    assert league.valid?
    
    league.current_matchday = -1
    assert league.invalid?
    league.errors[:current_matchday].any?

    league.current_matchday = 0
    assert league.invalid?
    league.errors[:current_matchday].any?

    league.current_matchday = 1
    assert league.valid?
    
    league.number_of_matchdays = -1
    assert league.invalid?
    league.errors[:number_of_matchdays].any?

    league.number_of_matchdays = 0
    assert league.invalid?
    league.errors[:number_of_matchdays].any?

    league.number_of_matchdays = 38
    assert league.valid?
    
    league.api_football_data_id = -1
    assert league.invalid?
    league.errors[:api_football_data_id].any?

    league.api_football_data_id = 0
    assert league.invalid?
    league.errors[:api_football_data_id].any?

    league.api_football_data_id = 440
    assert league.valid?
  end
  
  def league_image(image_url) 
    league = new_league
    league.image_url = image_url
    league
  end
  
  test "image_url" do 
     ok = %w{ logo.gif logo.jpg logo.png logo.svg LOGO.JPG LOGO.Jpg http://a.b.c/x/y/z/logo.gif }
    bad = %w{ logo.doc logo.gif/more logo.gif.more }
    
    ok.each do |image_file|
      assert league_image(image_file).valid?, "#{image_file} shouldn't be invalid"
    end
    
    bad.each do |image_file|
      assert league_image(image_file).invalid?, "#{image_file} shouldn't be valid"
    end
  end
  
end
