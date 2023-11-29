

date_random = rand(1900..2020)
genre_random = ["action","horreur","comédie","drame"]
rating_user = [1,2,3,4,5]
boolean_array = [true, false]


100.times do |t|
  Movie.create(name: Faker::Movie.title, year: rand(1900..2020), synopsis: Faker::Movie.quote, genre: "#{genre_random.sample}", director: Faker::Name.name, allocine_rating: sprintf("%.1f", rand(6.0)), my_rating: rating_user.sample, already_seen: boolean_array)
end
