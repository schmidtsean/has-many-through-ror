glass_arr = [true, false]
four_arr = [4, 3, 2, 1, 0]
countries = ["Canada", "USA", "Van", "Back"]
local_arr = ["online", "utah", "vegas", "san diego", "reno"]
years = [1999, 2009, 2019, 2029]
10.times do
  simon = Simon.create(
    glasses: glass_arr.sample,
    four_out_of_five: four_arr.sample,
    country_origin: countries.sample
  )
  4.times do |i|
    user = User.create(
      email: "test#{i}@email.com",
      password: 'password',
      name: Faker::Hacker.verb 
    )
    Dpl.create(
      location: local_arr.sample,
      capacity: Faker::Number.digit,
      built: years.sample,
      user_id: user.id, 
      simon_id: simon.id
    )
  end
end

puts "Data seeded"