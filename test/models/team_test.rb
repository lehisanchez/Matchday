require 'test_helper'

class TeamTest < ActiveSupport::TestCase

  fixtures :teams
  
  def setup
    @team = Team.create(name: "Manchester City", image_url: "Manchester_City_Logo.jpg", code: "MACY", api_football_data_id:65)
  end
  
  def new_team
    Team.new(name: "Everton", image_url: "logo.jpg", code: "EVR", api_football_data_id: 62)
  end
  
  test "team attributes must not be empty" do
    team = Team.new
    assert team.invalid?
    assert team.errors[:name].any?
    assert team.errors[:code].any?
    assert team.errors[:image_url].any?
    assert team.errors[:api_football_data_id].any?
  end
  
  test "team should be unique" do
    team = @team.dup
    assert team.invalid?
    assert team.errors[:name].any?
    assert team.errors[:image_url].any?
    assert team.errors[:api_football_data_id].any?
  end  
  
  test "team must have positive integers" do
    team = new_team
    
    assert team.valid?
    
    team.api_football_data_id = -1
    assert team.invalid?
    assert team.errors[:api_football_data_id].any?

    team.api_football_data_id = 0
    assert team.invalid?
    assert team.errors[:api_football_data_id].any?

    team.api_football_data_id = 62
    assert team.valid?
  end
  
  def team_image(image_url) 
    team = new_team
    team.image_url = image_url
    team
  end
  
  test "image_url" do 
     ok = %w{ logo.gif logo.jpg logo.png logo.svg LOGO.JPG LOGO.Jpg http://a.b.c/x/y/z/logo.gif }
    bad = %w{ logo.doc logo.gif/more logo.gif.more }
    
    ok.each do |image_file|
      assert team_image(image_file).valid?, "#{image_file} shouldn't be invalid"
    end
    
    bad.each do |image_file|
      assert team_image(image_file).invalid?, "#{image_file} shouldn't be valid"
    end
  end
  
end
