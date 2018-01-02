# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "Theo")
User.create(username: "Marianne")
User.create(username: "Paco")
User.create(username: "Vladamir")

Artwork.create(title: "Cows will be your friend if you treat them nicely", image_url: "http://i.imgur.com/ySvyu7T.jpg", artist_id: 1)
Artwork.create(title: "Cows will be your friend if you treat them nicely", image_url: "http://i.imgur.com/ySvyu7T.jpg", artist_id: 2)
Artwork.create(title: "They've claimed the planter as their new playhouse", image_url: "http://i.imgur.com/AJVN2Gy.jpg", artist_id: 1)

ArtworkShare.create(artwork_id: 1, viewer_id: 3)
ArtworkShare.create(artwork_id: 1, viewer_id: 4)
ArtworkShare.create(artwork_id: 1, viewer_id: 5)
ArtworkShare.create(artwork_id: 3, viewer_id: 3)
ArtworkShare.create(artwork_id: 2, viewer_id: 3)
