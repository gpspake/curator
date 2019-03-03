# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

posters = Poster.create(
  [
    {  name: "St Paul and the Broken Bones at Levitt Shell",
       description: "Fall Tour 2014",
       notes: "Purchased at show on Sun. Sept. 28 2014 with Kenny, Timmy, and Ben. Paul Janeway came out after the show in a Nirvana shirt and hung out with the crowd",
       width: 18,
       height: 24,
       artists: ["St Paul and the Broken Bones"],
       venue: "Levitt Shell",
       designer: nil,
       printer: nil,
       year: "2014",
       series: nil,
       signed_by: nil,
       picture: nil,
    },
    { name: "Old Crow Medicine Show at Minglewood Hall",
      description: "Fall Tour 2012 - Green Medicine bottle with Wagon Wheel label.",
      notes: "Purchased at show with Ben and Kenny on Nov. 25th 2012 - Memphis, TN @ Minglewood Hall - w/ Chuck Mead & His Grassy Knoll Boys",
      width: 18,
      height: 24,
      artists: ["Old Crow Medicine Show", "Chuck Mead & His Grassy Knoll Boys"],
      venue: "Minglewood Hall",
      designer: nil,
      printer: "Status Serigraph",
      year: "2012",
      series: nil,
      signed_by: ["Ketch Secor", "Gill", "Critter Fuqua", "Chance McCoy", "Kevin Hayes"],
      picture: nil,
    }
  ]
)