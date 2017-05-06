League.delete_all

league_1 = League.create( name:'Premier League', 
                          image_url:'https://upload.wikimedia.org/wikipedia/en/f/f2/Premier_League_Logo.svg',
                          current_matchday: 1,
                          number_of_matchdays: 38,
                          number_of_teams: 20,
                          number_of_games: 380,
                          api_football_data_id:426)
                          
league_2 = League.create( name:'La Liga',        
                          image_url:'https://upload.wikimedia.org/wikipedia/commons/1/13/LaLiga.svg',
                          current_matchday: 1,
                          number_of_matchdays: 38,
                          number_of_teams: 20,
                          number_of_games: 380,               
                          api_football_data_id:436)

league_3 = League.create( name:'Bundesliga',                                                                          
                          image_url:'https://upload.wikimedia.org/wikipedia/en/d/df/Bundesliga_logo_%282017%29.svg',
                          current_matchday: 1,
                          number_of_matchdays: 38,
                          number_of_teams: 20,
                          number_of_games: 380,
                          api_football_data_id:430)

league_4 = League.create( name:'Serie A',                                                                             
                          image_url:'Serie_A_Logo.svg',   
                          current_matchday: 1,
                          number_of_matchdays: 38,
                          number_of_teams: 20,
                          number_of_games: 380,                                                            
                          api_football_data_id:438)

league_5 = League.create( name:'Ligue 1',                                                                             
                          image_url:'https://upload.wikimedia.org/wikipedia/en/d/dd/Ligue_1_Logo.svg',
                          current_matchday: 1,
                          number_of_matchdays: 38,
                          number_of_teams: 20,
                          number_of_games: 380,           
                          api_football_data_id:434)

league_6 = League.create( name:'Eredivisie',                                                                          
                          image_url:'https://upload.wikimedia.org/wikipedia/en/1/1e/Eredivisie_logo.svg',
                          current_matchday: 1,
                          number_of_matchdays: 38,
                          number_of_teams: 20,
                          number_of_games: 380,         
                          api_football_data_id:433)
 