# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Bet.create status: :win, match_id: 1, user_id: 1
Bet.create status: :tie, match_id: 2, user_id: 2
Bet.create status: :fail, match_id: 3, user_id: 3

Comment.create content: "Comment - 1", image: "", posts_id: 1, user_id: 1
Comment.create content: "Comment - 2", image: "", posts_id: 1, user_id: 2
Comment.create content: "Comment - 3", image: "", posts_id: 1, user_id: 3

Match.create name: "Duc - Phap", description: "Tran chung ket cup C1", start_date: "11/09/2016",
  hour: "10h10", stadium: "My Dinh", season_id: 1
Match.create name: "Chelse - Asenal", description: "Ngoai hang anh", start_date: "10/02/2016",
  hour: "22h10", stadium: "My Dinh2", season_id: 2
Match.create name: "Man city - Liverpol", description: "Cup FA", start_date: "22/09/2016",
  hour: "23h10", stadium: "My Dinh3", season_id: 3

Player.create name: "Player - 1", date_of_birth: "05/12/1992", position: "Thu mon",
  jersey_number: 8, nationality: "Lao", team_id: 1
Player.create name: "Player - 2", date_of_birth: "05/11/1993", position: "Tien dao",
  jersey_number: 18, nationality: "Thailan", team_id: 2
Player.create name: "Player - 3", date_of_birth: "15/10/1988", position: "Hau ve",
  jersey_number: 23, nationality: "Lao", team_id: 3

Reply.create content: "Reply - 1", image: "", comment_id: 1, user_id: 1
Reply.create content: "Reply - 2", image: "", comment_id: 2, user_id: 2
Reply.create content: "Reply - 3", image: "", comment_id: 3, user_id: 3

SeasonTeam.create rank: 1, team_id: 1, season_id: 1
SeasonTeam.create rank: 2, team_id: 2, season_id: 2
SeasonTeam.create rank: 3, team_id: 3, season_id: 3

Season.create name: "WorlCup", description: "WorlCup - 2014", number_of_team: 32, number_of_match: 64
Season.create name: "Cup FA", description: "FA - 2015", number_of_team: 12, number_of_match: 24
Season.create name: "Euro", description: "Euro - 2013", number_of_team: 16, number_of_match: 32

TeamMatch.create goals: 3, points: 11, team_id: 1, match_id: 1
TeamMatch.create goals: 1, points: 15, team_id: 2, match_id: 2
TeamMatch.create goals: 2, points: 10, team_id: 3, match_id: 3

Team.create name: "Duc", logo: "", coach: "Mourinho", country: "Duc"
Team.create name: "Man city", logo: "", coach: "Belgola", country: "Tay ban nha"
Team.create name: "Liverpol", logo: "", coach: "Zidan", country: "Phap"

User.create email: "admin@example.com", password: "12345678", password_confirmation: "12345678", role: :admin
User.create email: "user2@example.com", password: "12345678", password_confirmation: "12345678"
User.create email: "user3@example.com", password: "12345678", password_confirmation: "12345678"
