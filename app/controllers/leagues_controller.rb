class LeaguesController < ApplicationController
  before_action :set_league, only: [:show, :update, :destroy]
  
  def index
    @leagues = League.order(:name)
  end
  
  def show
    @matchday = params[:matchday] || @league.current_matchday
  end
  
  def create
    @league = League.new(league_params)
    @league.save
  end
  
  def update
    @league.update(league_params)
  end
  
  def destroy
    @league.destroy
  end
  
  def fetch
    
    require 'faraday'
    require 'json'
    
    leagues = League.all

    leagues.each do |league|
      current_matchday = fetch_current_matchday(league.api_football_data_id)
      if league.current_matchday < current_matchday
        league.current_matchday = current_matchday
        league.save
      end
    end
    
  end
  
  private

    def set_league
      @league = League.find(params[:id])
    end

    def league_params
      params.require(:league).permit( :name, 
                                      :image_url, 
                                      :current_matchday, 
                                      :number_of_matchdays, 
                                      :number_of_teams, 
                                      :number_of_games, 
                                      :api_football_data_id)
    end
    
    def fetch_current_matchday(league)
      conn = Faraday.new( :url => 'http://api.football-data.org', :headers => {'X-Auth-Token' => '477318a08771434e9e7bdd986cb2d368'})
      response = conn.get "/v1/competitions/#{league}"
      results = JSON.parse response.body
      results['currentMatchday']
    end
  
end
