# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
kongur = Horse.create(name: "Kongur", sex: "gelding", age: 21, imageUrl: "www.horsepic.horse")
angel = Horse.create(name: "Angel", sex: "mare", age: 12, imageUrl: "www.angelpic.horse")

ride1 = Ride.create(horse_id: 1, day: "4/23/2022", exercise: "ride", tack: "English", walk: 15, trot: 4, canter: 0, notes: "No further notes")
ride2 = Ride.create(horse_id: 1, day: "4/25/2022", exercise: "ride", tack: "Western", walk: 15, trot: 4, canter: 3, notes: "No further notes")
ride3 = Ride.create(horse_id: 1, day: "4/27/2022", exercise: "lunge", tack: "bareback", walk: 15, trot: 10, canter: 6, notes: "No further notes")

ride4 = Ride.create(horse_id: 2, day: "4/23/2022", exercise: "ride", tack: "bareback", walk: 15, trot: 10, canter: 6, notes: "No further notes")
ride5 = Ride.create(horse_id: 2, day: "4/24/2022", exercise: "ride", tack: "English", walk: 15, trot: 10, canter: 6, notes: "No further notes")
ride6 = Ride.create(horse_id: 2, day: "4/27/2022", exercise: "lunge", tack: "English", walk: 15, trot: 10, canter: 6, notes: "No further notes")