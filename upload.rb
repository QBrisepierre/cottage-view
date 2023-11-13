=begin
require "cloudinary"

icons = [
  "animaux",
  "armoire",
  "baignoire",
  "balcon",
  "barbecue",
  "billard",
  "bouilloire-electrique",
  "cafetiere",
  "camera-de-securite",
  "casseroles",
  "chaise-de-bebe",
  "chauffe",
  "cheminee",
  "cintre",
  "cle",
  "climatisation",
  "congelateur",
  "cuisine",
  "cuisiniere",
  "desinfection",
  "detecteur-de-fumee",
  "detecteur-de-gaz",
  "draps",
  "eau-chaude",
  "extincteur",
  "four",
  "gel-douche",
  "grille-pain",
  "hammam",
  "jacuzzi",
  "jouets-pour-enfants",
  "kit-medical",
  "lac",
  "lave-vaisselle",
  "le-fer",
  "lit-de-bebe",
  "livre",
  "machine-a-laver",
  "micro-onde",
  "montagne",
  "musculation",
  "ordinateur",
  "parking",
  "ping-pong",
  "piscine",
  "porte",
  "protection-fenetre",
  "refrigerateur",
  "remontees-mecaniques",
  "sauna",
  "savon-corp",
  "seche-cheveux",
  "seche-linge",
  "sechoir",
  "serviette",
  "shampoo",
  "station-de-charge",
  "table-a-langer",
  "table-a-manger",
  "terrasse",
  "tv",
  "vaisselle",
  "wifi"
]

icons.each do |icon|
  Cloudinary::Uploader.upload("cottageview_icon/#{icon}.png", folder: "icons")
end
i = 1
while i != 45
  Cloudinary::Uploader.upload("cottages/#{i}.jpeg", folder: "cottages")
  i += 1
end
=end