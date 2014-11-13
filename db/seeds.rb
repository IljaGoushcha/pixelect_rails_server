ImageSet.delete_all
Image.delete_all
Like.delete_all
Comment.delete_all

@image_set1 = ImageSet.create(voting_criteria: "Who has better rims", total_likes: 0, user_id: 1)
@image_set2 = ImageSet.create(voting_criteria: "Who is THE redneck", total_likes: 0, user_id: 2)
@image_set3 = ImageSet.create(voting_criteria: "Who needs to shave the most?", total_likes: 0, user_id: 3)

@image1 = Image.create(file_name: "pimp_mobile_1", image_file: "empty", image_url: "https://s3.amazonaws.com/pixelect-ig/uploads/d9e54f00-7bcb-4673-adce-bd2535b63b94", flag: 0, image_set_id: 1)
@image2 = Image.create(file_name: "pimp_mobile_2", image_file: "empty", image_url: "https://s3.amazonaws.com/pixelect-ig/uploads/b620526d-e923-4a82-b8e2-0430e3eac61c", flag: 0, image_set_id: 1)
@image3 = Image.create(file_name: "pimp_mobile_3", image_file: "empty", image_url: "https://s3.amazonaws.com/pixelect-ig/uploads/15937328-83be-4560-8284-474a54902e38", flag: 0, image_set_id: 1)
@image4 = Image.create(file_name: "redneck_1", image_file: "empty", image_url: "https://s3.amazonaws.com/pixelect-ig/uploads/b92f2179-077e-4275-afe1-95c10a37d767", flag: 0, image_set_id: 2)
@image5 = Image.create(file_name: "redneck_2", image_file: "empty", image_url: "https://s3.amazonaws.com/pixelect-ig/uploads/7af3c8bf-c6f9-4a5e-b4aa-d2d6968e70e6", flag: 0, image_set_id: 2)
@image6 = Image.create(file_name: "redneck_3", image_file: "empty", image_url: "https://s3.amazonaws.com/pixelect-ig/uploads/2d5d2e93-6f21-41c4-a7c2-307c37192b78", flag: 0, image_set_id: 2)
@image7 = Image.create(file_name: "body_hair_1", image_file: "empty", image_url: "https://s3.amazonaws.com/pixelect-ig/uploads/350849d8-c1e0-476b-bd79-74a3d95fbb93", flag: 0, image_set_id: 3)
@image8 = Image.create(file_name: "body_hair_2", image_file: "empty", image_url: "https://s3.amazonaws.com/pixelect-ig/uploads/cfed9579-d1a3-4da9-8262-5a4ae36269e1", flag: 0, image_set_id: 3)
@image9 = Image.create(file_name: "body_hair_3", image_file: "empty", image_url: "https://s3.amazonaws.com/pixelect-ig/uploads/a861df65-b726-4e24-8111-753d33c0f153", flag: 0, image_set_id: 3)


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
