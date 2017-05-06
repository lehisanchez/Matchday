League.delete_all

League.create( name:'Premier League', 
               image_url:'https://upload.wikimedia.org/wikipedia/en/f/f2/Premier_League_Logo.svg',
               current_matchday: 1,
               number_of_matchdays: 38,
               number_of_teams: 20,
               number_of_games: 380,
               api_football_data_id:426)
               
League.create( name:'La Liga',        
               image_url:'https://upload.wikimedia.org/wikipedia/commons/1/13/LaLiga.svg',
               current_matchday: 1,
               number_of_matchdays: 38,
               number_of_teams: 20,
               number_of_games: 380,               
               api_football_data_id:436)

League.create( name:'Bundesliga',                                                                          
               image_url:'https://upload.wikimedia.org/wikipedia/en/d/df/Bundesliga_logo_%282017%29.svg',
               current_matchday: 1,
               number_of_matchdays: 38,
               number_of_teams: 20,
               number_of_games: 380,
               api_football_data_id:430)

League.create( name:'Serie A',                                                                             
               image_url:'Serie_A_Logo.svg',   
               current_matchday: 1,
               number_of_matchdays: 38,
               number_of_teams: 20,
               number_of_games: 380,                                                            
               api_football_data_id:438)

League.create( name:'Ligue 1',                                                                             
               image_url:'https://upload.wikimedia.org/wikipedia/en/d/dd/Ligue_1_Logo.svg',
               current_matchday: 1,
               number_of_matchdays: 38,
               number_of_teams: 20,
               number_of_games: 380,           
               api_football_data_id:434)

League.create( name:'Eredivisie',                                                                          
               image_url:'https://upload.wikimedia.org/wikipedia/en/1/1e/Eredivisie_logo.svg',
               current_matchday: 1,
               number_of_matchdays: 38,
               number_of_teams: 20,
               number_of_games: 380,         
               api_football_data_id:433)
               

Team.delete_all

# ENGLISH PREMIER LEAGUE
Team.create(name: 'Hull City FC',             code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/a/a9/Hull_City_AFC.svg',                   api_football_data_id:322)
Team.create(name: 'Leicester City FC',        code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/en/6/63/Leicester02.png',                     api_football_data_id:338)
Team.create(name: 'Southampton FC',           code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/c/c9/FC_Southampton.svg',                  api_football_data_id:340)
Team.create(name: 'Watford FC',               code: 'xxx', image_url: 'https://upload.wikimedia.org/wikipedia/en/e/e2/Watford.svg',                        api_football_data_id:346)
Team.create(name: 'Middlesbrough FC',         code: 'xxx', image_url: 'https://upload.wikimedia.org/wikipedia/en/2/2c/Middlesbrough_FC_crest.svg',         api_football_data_id:343)
Team.create(name: 'Stoke City FC',            code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/a/a3/Stoke_City.svg',                      api_football_data_id:70)
Team.create(name: 'Everton FC',               code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/f/f9/Everton_FC.svg',                      api_football_data_id:62)
Team.create(name: 'Tottenham Hotspur FC',     code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/b/b4/Tottenham_Hotspur.svg',               api_football_data_id:73)
Team.create(name: 'Crystal Palace FC',        code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/b/bf/Crystal_Palace_F.C._logo_(2013).png', api_football_data_id:354)
Team.create(name: 'West Bromwich Albion FC',  code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/8/8b/West_Bromwich_Albion.svg',            api_football_data_id:74)
Team.create(name: 'Burnley FC',               code: 'xxx', image_url: 'https://upload.wikimedia.org/wikipedia/en/0/02/Burnley_FC_badge.png',               api_football_data_id:328)
Team.create(name: 'Swansea City FC',          code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/a/ab/Swansea_City_Logo.svg',               api_football_data_id:72)
Team.create(name: 'Manchester City FC',       code: 'xxx', image_url: 'https://upload.wikimedia.org/wikipedia/en/e/eb/Manchester_City_FC_badge.svg',       api_football_data_id:65)
Team.create(name: 'Sunderland AFC',           code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/6/60/AFC_Sunderland.svg',                  api_football_data_id:71)
Team.create(name: 'AFC Bournemouth',          code: 'xxx', image_url: 'https://upload.wikimedia.org/wikipedia/de/4/41/Afc_bournemouth.svg',                api_football_data_id:1044)
Team.create(name: 'Manchester United FC',     code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/d/da/Manchester_United_FC.svg',            api_football_data_id:66)
Team.create(name: 'Arsenal FC',               code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/en/5/53/Arsenal_FC.svg',                      api_football_data_id:57)
Team.create(name: 'Liverpool FC',             code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/0/0a/FC_Liverpool.svg',                    api_football_data_id:64)
Team.create(name: 'Chelsea FC',               code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/5/5c/Chelsea_crest.svg',                   api_football_data_id:61)
Team.create(name: 'West Ham United FC',       code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/e/e0/West_Ham_United_FC.svg',              api_football_data_id:563)

# LA LIGA
Team.create(name: 'Málaga CF',                code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/e/e8/FC_Málaga.svg',                     api_football_data_id:84)
Team.create(name: 'CA Osasuna',               code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/c/ca/Atletico_Osasuna.svg',              api_football_data_id:79)
Team.create(name: 'RC Deportivo La Coruna',   code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/en/4/4e/RC_Deportivo_La_Coruña_logo.svg',   api_football_data_id:560)
Team.create(name: 'SD Eibar',                 code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/en/7/75/SD_Eibar_logo.svg',                 api_football_data_id:278)
Team.create(name: 'FC Barcelona',             code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/a/aa/Fc_barcelona.svg',                  api_football_data_id:81)
Team.create(name: 'Real Betis',               code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/4/43/Real_Betis.svg',                    api_football_data_id:90)
Team.create(name: 'Granada CF',               code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/d/d3/Granada_CF.svg',                    api_football_data_id:83)
Team.create(name: 'Villarreal CF',            code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/7/70/Villarreal_CF_logo.svg',            api_football_data_id:94)
Team.create(name: 'Sevilla FC',               code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/en/8/86/Sevilla_cf_200px.png',              api_football_data_id:559)
Team.create(name: 'RCD Espanyol',             code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/a/a7/RCD_Espanyol_De_Barcelona.svg',     api_football_data_id:80)
Team.create(name: 'Sporting Gijón',           code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/4/48/Real_Sporting_de_Gijon.svg',        api_football_data_id:96)
Team.create(name: 'Athletic Club',            code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/7/7f/Athletic_Club_Bilbao.svg',          api_football_data_id:77)
Team.create(name: 'Real Sociedad de Fútbol',  code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/5/55/Real_Sociedad_San_Sebastián.svg',   api_football_data_id:92)
Team.create(name: 'Real Madrid CF',           code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/3/3f/Real_Madrid_Logo.svg',              api_football_data_id:86)
Team.create(name: 'Club Atlético de Madrid',  code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/c/c1/Atletico_Madrid_logo.svg',          api_football_data_id:78)
Team.create(name: 'Deportivo Alavés',         code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/en/2/2e/Deportivo_Alaves_logo.svg',         api_football_data_id:263)
Team.create(name: 'RC Celta de Vigo',         code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/0/0c/Celta_Vigo.svg',                    api_football_data_id:558)
Team.create(name: 'CD Leganes',               code: 'xxx', image_url: 'https://upload.wikimedia.org/wikipedia/en/0/02/Club_Deportivo_Legan%C3%A9s.png',  api_football_data_id:745)
Team.create(name: 'Valencia CF',              code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/7/75/FC_Valencia.svg',                   api_football_data_id:95)
Team.create(name: 'UD Las Palmas',            code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/en/2/20/UD_Las_Palmas_logo.svg',            api_football_data_id:275)

# BUNDESLIGA
Team.create(name: 'FC Bayern München',      code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/commons/c/c5/Logo_FC_Bayern_München.svg',         api_football_data_id:5)
Team.create(name: 'Werder Bremen',          code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/commons/b/be/SV-Werder-Bremen-Logo.svg',          api_football_data_id:12)
Team.create(name: 'FC Augsburg',            code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/b/b5/Logo_FC_Augsburg.svg',                    api_football_data_id:16)
Team.create(name: 'VfL Wolfsburg',          code: 'xxx', image_url: 'https://upload.wikimedia.org/wikipedia/commons/f/f3/Logo-VfL-Wolfsburg.svg',            api_football_data_id:11)
Team.create(name: 'Borussia Dortmund',      code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/commons/6/67/Borussia_Dortmund_logo.svg',         api_football_data_id:4)
Team.create(name: '1. FSV Mainz 05',        code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/0/0b/FSV_Mainz_05_Logo.svg',                   api_football_data_id:15)
Team.create(name: 'Eintracht Frankfurt',    code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/commons/0/04/Eintracht_Frankfurt_Logo.svg',       api_football_data_id:19)
Team.create(name: 'FC Schalke 04',          code: 'xxx', image_url: 'https://upload.wikimedia.org/wikipedia/commons/6/6d/FC_Schalke_04_Logo.svg',            api_football_data_id:6)
Team.create(name: 'Hamburger SV',           code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/commons/6/66/HSV-Logo.svg',                       api_football_data_id:7)
Team.create(name: 'FC Ingolstadt 04',       code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/5/55/FC-Ingolstadt_logo.svg',                  api_football_data_id:31)
Team.create(name: '1. FC Köln',             code: 'xxx', image_url: 'https://upload.wikimedia.org/wikipedia/en/5/53/FC_Cologne_logo.svg',                    api_football_data_id:1)
Team.create(name: 'SV Darmstadt 98',        code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/8/87/Svdarmstadt98.svg',                       api_football_data_id:55)
Team.create(name: 'Bor. Mönchengladbach',   code: 'xxx', image_url: 'https://upload.wikimedia.org/wikipedia/commons/8/81/Borussia_Mönchengladbach_logo.svg', api_football_data_id:18)
Team.create(name: 'Bayer Leverkusen',       code: 'xxx', image_url: 'https://upload.wikimedia.org/wikipedia/en/5/59/Bayer_04_Leverkusen_logo.svg',           api_football_data_id:3)
Team.create(name: 'Hertha BSC',             code: 'xxx', image_url: 'https://upload.wikimedia.org/wikipedia/de/3/38/Hertha_BSC_Logo.svg',                    api_football_data_id:9)
Team.create(name: 'SC Freiburg',            code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/f/f1/SC-Freiburg_Logo-neu.svg',                api_football_data_id:17)
Team.create(name: 'TSG 1899 Hoffenheim',    code: 'xxx', image_url: 'https://upload.wikimedia.org/wikipedia/commons/e/e7/Logo_TSG_Hoffenheim.svg',           api_football_data_id:2)
Team.create(name: 'Red Bull Leipzig',       code: 'xxx', image_url: 'https://upload.wikimedia.org/wikipedia/en/0/04/RB_Leipzig_2014_logo.svg',               api_football_data_id:721)

# SERIE A
Team.create(name: 'AS Roma',                  code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/3/32/AS_Rom.svg',                                  api_football_data_id:100)
Team.create(name: 'Udinese Calcio',           code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/b/b1/Udinese_Calcio.svg',                          api_football_data_id:115)
Team.create(name: 'Juventus Turin',           code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/d/d2/Juventus_Turin.svg',                          api_football_data_id:109)
Team.create(name: 'ACF Fiorentina',           code: 'xxx', image_url: 'https://upload.wikimedia.org/wikipedia/en/b/ba/ACF_Fiorentina_2.svg',                       api_football_data_id:99)
Team.create(name: 'AC Milan',                 code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/9/9e/AC_Mailand_Logo.svg',                         api_football_data_id:98)
Team.create(name: 'Torino FC',                code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/2/2e/Torino_FC_Logo.svg',                          api_football_data_id:586)
Team.create(name: 'AC Chievo Verona',         code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/3/3f/AC_Chievo_Verona.svg',                        api_football_data_id:106)
Team.create(name: 'FC Internazionale Milano', code: 'xxx', image_url: 'https://upload.wikimedia.org/wikipedia/it/7/7e/Logo_FC_Internazionale_Milano_2014.png',     api_football_data_id:108)
Team.create(name: 'Empoli FC',                code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/4/42/Logo_FC_Empoli.svg',                          api_football_data_id:445)
Team.create(name: 'UC Sampdoria',             code: 'xxx', image_url: 'https://upload.wikimedia.org/wikipedia/fr/b/bd/Logo_Sampdoria.svg',                         api_football_data_id:584)
Team.create(name: 'Genoa CFC',                code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/7/76/Genoa_CFC.svg',                               api_football_data_id:107)
Team.create(name: 'Cagliari Calcio',          code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/3/3d/Cagliari_Calcio.svg',                         api_football_data_id:104)
Team.create(name: 'Bologna FC',               code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/9/92/FC_Bologna.svg',                              api_football_data_id:103)
Team.create(name: 'FC Crotone',               code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/a/ab/FC_Crotone.svg',                              api_football_data_id:472)
Team.create(name: 'US Cittá di Palermo',      code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/7/7f/US_Palermo.svg',                              api_football_data_id:114)
Team.create(name: 'US Sassuolo Calcio',       code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/a/a3/US_Sassuolo_Calcio.svg',                      api_football_data_id:471)
Team.create(name: 'Pescara Calcio',           code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/f/ff/Pescara_Calcio.svg',                          api_football_data_id:585)
Team.create(name: 'SSC Napoli',               code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/commons/2/28/S.S.C._Napoli_logo.svg',                 api_football_data_id:113)
Team.create(name: 'Atalanta BC',              code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/2/28/Atalanta_BC.svg',                             api_football_data_id:102)
Team.create(name: 'SS Lazio',                 code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/thumb/4/47/Lazio_Rom.svg/500px-Lazio_Rom.svg.png', api_football_data_id:110)

# LIGUE 1
Team.create(name: 'SC Bastia',                code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/6/69/SC_Bastia.svg',                               api_football_data_id:536)
Team.create(name: 'Paris Saint-Germain',      code: 'xxx', image_url: 'https://upload.wikimedia.org/wikipedia/fr/0/03/Logo_Paris_Saint-Germain_Football_Club.svg', api_football_data_id:524)
Team.create(name: 'AS Monaco FC',             code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/3/3c/AS_Monaco.svg',                               api_football_data_id:548)
Team.create(name: 'EA Guingamp',              code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/a/ae/EA_Guingamp_Logo.svg',                        api_football_data_id:538)
Team.create(name: 'FC Girondins de Bordeaux', code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/e/ea/Girondins_Bordeaux_Logo.svg',                 api_football_data_id:526)
Team.create(name: 'AS Saint-Étienne',         code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/b/b1/AS_Saint-Etienne_(aktuell).svg',              api_football_data_id:527)
Team.create(name: 'SM Caen',                  code: 'xxx', image_url: 'https://upload.wikimedia.org/wikipedia/fr/7/79/LogoSmc2013.png',                            api_football_data_id:514)
Team.create(name: 'FC Lorient',               code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/c/c4/FC_Lorient_neu.png',                          api_football_data_id:525)
Team.create(name: 'Dijon FCO',                code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/e/e1/FCO_Dijon.svg',                               api_football_data_id:528)
Team.create(name: 'FC Nantes',                code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/5/50/FC_Nantes_(seit_2008).svg',                   api_football_data_id:543)
Team.create(name: 'FC Metz',                  code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/b/ba/FC_Metz_Logo.svg',                            api_football_data_id:545)
Team.create(name: 'OSC Lille',                code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/0/08/LOSC_Lille_Crest_2012.png',                   api_football_data_id:521)
Team.create(name: 'Montpellier Hérault SC',   code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/3/35/HSC_Montpellier_Logo.svg',                    api_football_data_id:518)
Team.create(name: 'Angers SCO',               code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/0/0f/SCO_Angers.svg',                              api_football_data_id:532)
Team.create(name: 'AS Nancy',                 code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/8/8f/AS_Nancy_Logo.svg',                           api_football_data_id:520)
Team.create(name: 'Olympique Lyonnais',       code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/f/f1/Olympique_Lyon.svg',                          api_football_data_id:523)
Team.create(name: 'OGC Nice',                 code: 'xxx', image_url: 'https://upload.wikimedia.org/wikipedia/fr/0/03/OGC_Nice_Logo.png',                          api_football_data_id:522)
Team.create(name: 'Stade Rennais FC',         code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/b/b6/Stade_Rennais_Football_Club.svg',             api_football_data_id:529)
Team.create(name: 'Olympique de Marseille',   code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/2/27/Olympique_Marseille_Logo.svg',                api_football_data_id:516)
Team.create(name: 'Toulouse FC',              code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/0/0a/FC_Toulouse_Logo.svg',                        api_football_data_id:511)


# EREDIVISIE
Team.create(name: 'NEC Nijmegen',             code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/3/34/NEC_Nijmegen.svg',                  api_football_data_id:667)
Team.create(name: 'PEC Zwolle',               code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/2/28/PEC_Zwolle_2012.svg',               api_football_data_id:684)
Team.create(name: 'ADO Den Haag',             code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/4/45/ADO_Den_Haag.svg',                  api_football_data_id:680)
Team.create(name: 'Go Ahead Eagles Deventer', code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/e/ea/Go_Ahead_Eagles.svg',               api_football_data_id:718)
Team.create(name: 'FC Twente Enschede',       code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/6/6a/FC_Twente_Enschede_(ab_2006).svg',  api_football_data_id:666)
Team.create(name: 'Excelsior',                code: 'xxx', image_url: 'https://upload.wikimedia.org/wikipedia/en/f/f5/SBV_Excelsior_logo.png',           api_football_data_id:670)
Team.create(name: 'FC Utrecht',               code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/4/48/FC_Utrecht.svg',                    api_football_data_id:676)
Team.create(name: 'PSV Eindhoven',            code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/0/05/PSV_Eindhoven.svg',                 api_football_data_id:674)
Team.create(name: 'Willem II Tilburg',        code: 'xxx', image_url: 'https://upload.wikimedia.org/wikipedia/de/7/7c/Willem_II_Tilburg.svg',            api_football_data_id:672)
Team.create(name: 'Vitesse Arnhem',           code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/4/41/Vitesse_Arnheim.svg',               api_football_data_id:679)
Team.create(name: 'FC Groningen',             code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/e/ef/FC_Groningen.svg',                  api_football_data_id:677)
Team.create(name: 'Feyenoord Rotterdam',      code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/2/24/Logo_Feyenoord_Rotterdam.svg',      api_football_data_id:675)
Team.create(name: 'AZ Alkmaar',               code: 'xxx', image_url: 'https://upload.wikimedia.org/wikipedia/commons/e/e0/AZ_Alkmaar.svg',              api_football_data_id:682)
Team.create(name: 'SC Heerenveen',            code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/e/e7/SC_Heerenveen.svg',                 api_football_data_id:673)
Team.create(name: 'Sparta Rotterdam',         code: 'xxx', image_url: 'https://upload.wikimedia.org/wikipedia/en/5/53/Sparta_Rotterdam.png',             api_football_data_id:1085)
Team.create(name: 'Ajax Amsterdam',           code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/7/79/Ajax_Amsterdam.svg',                api_football_data_id:678)
Team.create(name: 'Roda JC Kerkrade',         code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/3/36/Roda_JC_Kerkrade_(2011).svg',       api_football_data_id:665)
Team.create(name: 'Heracles Almelo',          code: 'xxx', image_url: 'http://upload.wikimedia.org/wikipedia/de/d/d8/Heracles_Almelo.svg',               api_football_data_id:671)