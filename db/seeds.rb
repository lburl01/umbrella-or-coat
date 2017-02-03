# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{name: 'Lori', email: 'lori@example.com', password_digest: 'password'},
                     {name: 'Ellis', email: 'ellis@example.com', password_digest: 'password'}])

zip_codes = ZipCode.create([{user_id: 1, zip_code: 28227, default_zip: true},
                            {user_id: 2, zip_code: 27617, default_zip: false},
                            {user_id: 1, zip_code: 27617, default_zip: false}])

temp_preferences = TempPreference.create(user_id: 1, coat_min: 50)
