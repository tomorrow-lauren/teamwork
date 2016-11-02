User.destroy_all
Article.destroy_all
Team.destroy_all
TeamList.destroy_all

users = 100.times do |index|
  User.create!(first_name: Faker::Name.first_name,
                last_name: Faker::Name.last_name,
                username: Faker::Hipster.word + "_" + Faker::Hipster.word,
                password: "password",
                password_confirmation: "password")
end

teams = 100.times do |index|
  Team.create!(team_name: Faker::StarWars.planet,
                description: Faker::StarWars.quote)
end

team_ups = 100.times do |index|
  TeamList.create!(team_id: Team.pluck(:id).sample,
                user_id: User.pluck(:id).sample)
end

articles = 100.times do |index|
  count = TeamList.count
  random_offset = rand(count)
  random_tl = TeamList.offset(random_offset).first
  user_id = random_tl.user_id
  team = random_tl.team_id


  Article.create!(title: Faker::Hipster.sentence,
                content: Faker::Hipster.paragraph(3),
                user_id: user_id,
                team_id: team)
end