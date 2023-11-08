require "open-uri"
require 'faker'

# Deleting all equipemnts
Equipment.destroy_all

# Deleting all CottageEquipment
CottageEquipment.destroy_all

# Deleting all Cottage
Cottage.destroy_all

# Creating all Equipments we need
category = ["Salle de bain", "Chambre et linge", "Divertissement", "Famille", "Chauffage et climatisation",
"Sécurité à la maison", "Internet et bureau", "Cuisine et salle à manger", "Caractéristiques de l'emplacement",
"Extérieur", "Parking et installations", "Services"]
## Category :
equipments = [
  {
    name: "Sèche-cheveux",
    category: category[0],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/lwxwjj9cazdvdiq1hg4b"
  },
  {
    name: "Shampooing",
    category: category[0],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/hrhmlgsjdqnjjfnh636n"
  },
  {
    name: "Produits de nettoyage",
    category: category[0],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/moiinsqakqaf6xozf4pv"
  },
  {
    name: "Savon pour le corps",
    category: category[0],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/kwisbgc5tt6rdsryaz1t"
  },
  {
    name: "Eau chaud",
    category: category[0],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/w5kknquegqnwzl2w8xrm"
  },
  {
    name: "Gel douche",
    category: category[0],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/wgsklws3b4deswuntvgl"
  },
  {
    name: "Baignoire",
    category: category[0],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/zpcnxyhyiafofbvhusov"
  },
  {
    name: "Équipements de base", # (Serviettes, draps, savon et papier toilette)
    category: category[1],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/vnorrqhwzfxlbogidxgg"
  },
  {
    name: "Draps",
    category: category[1],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/tlzmqxcayq9re4ft4t1p"
  },
  {
    name: "Armoire",
    category: category[1],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/ry2ymxpkaaskj4cglgsc"
  },
  {
    name: "Cintres",
    category: category[1],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/knrk1yjbx41bs9surzd7"
  },
  {
    name: "Lave-linge",
    category: category[1],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/wdjslopm5tqce4sztkol"
  },
  {
    name: "Sèche-linge",
    category: category[1],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/mwgdzzle5jd8p2qpxqcg"
  },
  {
    name: "Fer à repasser",
    category: category[1],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/cdlvy81wdemxa4e2gm3t"
  },
  {
    name: "Étendoir à linge",
    category: category[1],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/sorxxbgk0m7o2wylheqt"
  },
  {
    name: "Télévision",
    category: category[2],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/ax26t1bvhljbtov0sn9p"
  },
  {
    name: "Salle de sport",
    category: category[2],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/xhnni9fe7ija9qiyeapu"
  },
  {
    name: "Table de ping pong",
    category: category[2],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/eyjrsheojdnrfbf4ym2q"
  },
  {
    name: "Billard",
    category: category[2],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/on4snhkf3jsubmf5awvs"
  },
  {
    name: "Livres",
    category: category[2],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/cnojdiibwzqozixgcmao"
  },
  {
    name: "Piscine",
    category: category[2],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/fgrenkkpbrqkctbrwt5u"
  },
  {
    name: "Jacuzzi",
    category: category[2],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/legigq32zz1j1fu3co8i"
  },
  {
    name: "Sauna",
    category: category[2],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/c4dnyqhcvhinuxin64nw"
  },
  {
    name: "hammam",
    category: category[2],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/ugnqv3znzr2mimt3mfaj"
  },
  {
    name: "Lit pour bébé",
    category: category[3],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/njlbtxhqtpa6zlpgvhur"
  },
  {
    name: "Chaise haute",
    category: category[3],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/nrbmt9flro5vnmwtg3yw"
  },
  {
    name: "Livres et jouets pour enfants",
    category: category[3],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/pqoxhbo82pb5xw9mrsb7"
  },
  {
    name: "Table à langer",
    category: category[3],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/l3ovbuyv9nk826isnzfr"
  },
  {
    name: "Protections sur les fenêtres",
    category: category[3],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/gdn3fpmlq2pzlwml2j1i"
  },
  {
    name: "Chauffage",
    category: category[4],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/wmmtnjtfsnwprfvxt17u"
  },
  {
    name: "Climatisation",
    category: category[4],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/egcrfgeacxkyjmyigqqb"
  },
  {
    name: "Cheminée",
    category: category[4],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/nwfwnr8a4hw1qdesqydy"
  },
  {
    name: "Détecteur de fumée",
    category: category[5],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/qbq4hwptka1ctcbclccm"
  },
  {
    name: "Extincteur",
    category: category[5],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/pfec4zgnn0qn99dw55jc"
  },
  {
    name: "Caméras de surveillance",
    category: category[5],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/xamgtxpdh045wmbtoia9"
  },
  {
    name: "Détecteur de monoxyde de carbone",
    category: category[5],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/ep8fjrkzbdxxcdxqnzx8"
  },
  {
    name: "Kit de premiers secours",
    category: category[5],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/btwfqfnquiirhle6odsp"
  },
  {
    name: "Wifi",
    category: category[6],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/opnc2ucjqxu3koudyw5k"
  },
  {
    name: "Ordinateur",
    category: category[6],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/jkvanb3wn1w03odmcfil"
  },
  {
    name: "Cuisine",
    category: category[7],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/ijckevt129v4epzormuk"
  },
  {
    name: "Réfrigérateur",
    category: category[7],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/tfohdycw5at0tcfgigjk"
  },
  {
    name: "Congélateur",
    category: category[7],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/lsallnrtkvr0dowx4kde"
  },
  {
    name: "Cuisinière",
    category: category[7],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/de3ih2wqnjf4hlf8kkt2"
  },
  {
    name: "Four",
    category: category[7],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/webxnphvquddwwchbi7d"
  },
  {
    name: "Cafetière",
    category: category[7],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/lx7o3weipjv4ytyofmxk"
  },
  {
    name: "Micro-ondes",
    category: category[7],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/f34ltc80saiwaodxctzb"
  },
  {
    name: "Équipements de cuisine de base", # (Casseroles et poêles, huile, sel et poivre)
    category: category[7],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/nohhi3rrdidzrxnxlyzh"
  },
  {
    name: "Vaisselle et couverts",
    category: category[7],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/oott1nzqeygl1wtws1m6"
  },
  {
    name: "Bouilloire électrique",
    category: category[7],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/rme3w8xokwvldmbvpp9a"
  },
  {
    name: "Grille-pain",
    category: category[7],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/ppulenitrzmdvu9mkc0p"
  },
  {
    name: "Table à manger",
    category: category[7],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/p2nniwwcadg9ywbdrxfz"
  },
  {
    name: "Entrée privée",
    category: category[8],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/lswbto7ax5whdflt81jn"
  },
  {
    name: "Accès au piste de ski",
    category: category[8],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/jtaknkp6e24vmx8smkg1"
  },
  {
    name: "Vue sur la montagne",
    category: category[8],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/nscztffufh4mhdr3sld6"
  },
  {
    name: "Vue sur le lac",
    category: category[8],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/vo1nl8wynbumejkafjmo"
  },
  {
    name: "Patio ou balcon",
    category: category[9],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/mp9fzapu9k9ojwggdqlt"
  },
  {
    name: "Mobilier d'extérieur",
    category: category[9],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/wodzansuwfkdpp9ipopj"
  },
  {
    name: "Barbecue",
    category: category[9],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/xlsh0ikmbakr0qeudjgk"
  },
  {
    name: "Parking gratuit sur place",
    category: category[10],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/lxyttz3lgbpvtmx5gjwo"
  },
  {
    name: "Station de recharge pour véhicules électriques",
    category: category[10],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/hgeicbu6puos8lrxmfnb"
  },
  {
    name: "Clés remises par l'hôte",
    category: category[11],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/vnqcl1fsbd3ibq0ujhch"
  },
  {
    name: "Animaux acceptés",
    category: category[11],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/tdd5ocodlf8z6f4udpkx"
  }
]

# Creating first User
puts "Creating User"
user = User.new(email: "l@l.com", first_name: "Quentin", last_name: "Brisepierre", birthday_date: "1999-11-20", password: "hPKH92P9+")
user.save
puts "user: #{user.last_name} was created whit id #{user.id}"

# Creating equipment
puts "starting cottage equipment"
equipments.each do |data|
  file = URI.open(data[:icon])
  equipment = Equipment.new(name: data[:name], category: data[:category])
  equipment.icon.attach(io: file, filename: "#{equipment.name}.png", content_type: "image/png")
  equipment.save!
  puts "Equipment: #{equipment.name} was created"
end
puts "end cottage equipment"

# Creating cottage
puts "Creating Cottage"

# Recup all equipments
equipements = Equipment.all

# Photos exterior cottage
exteriors = [
    "https://images.pexels.com/photos/147411/italy-mountains-dawn-daybreak-147411.jpeg",
    "https://images.pexels.com/photos/65225/boat-house-cottage-waters-lake-65225.jpeg",
    "https://images.pexels.com/photos/434549/pexels-photo-434549.jpeg",
    "https://images.pexels.com/photos/371404/pexels-photo-371404.jpeg",
    "https://images.pexels.com/photos/7061662/pexels-photo-7061662.jpeg",
    "https://images.pexels.com/photos/7031406/pexels-photo-7031406.jpeg",
    "https://images.pexels.com/photos/5875866/pexels-photo-5875866.jpeg",
    "https://images.pexels.com/photos/4969837/pexels-photo-4969837.jpeg",
    "https://images.pexels.com/photos/9211816/pexels-photo-9211816.jpeg",
    "https://images.pexels.com/photos/4947737/pexels-photo-4947737.jpeg",
    "https://images.pexels.com/photos/7163610/pexels-photo-7163610.jpeg",
    "https://images.pexels.com/photos/4558574/pexels-photo-4558574.jpeg",
    "https://images.pexels.com/photos/7174109/pexels-photo-7174109.jpeg",
    "https://images.pexels.com/photos/5764100/pexels-photo-5764100.jpeg",
    "https://images.pexels.com/photos/6032280/pexels-photo-6032280.jpeg",
    "https://images.pexels.com/photos/17968541/pexels-photo-17968541/free-photo-of-maisons-village-maison-blanc.jpeg"
  ]

  # Photos interior cottage
  interiors = [
  "https://images.pexels.com/photos/4906249/pexels-photo-4906249.jpeg",
  "https://images.pexels.com/photos/6775268/pexels-photo-6775268.jpeg",
  "https://images.pexels.com/photos/4906407/pexels-photo-4906407.jpeg",
  "https://images.pexels.com/photos/4825713/pexels-photo-4825713.jpeg",
  "https://images.pexels.com/photos/3951742/pexels-photo-3951742.jpeg",
  "https://images.pexels.com/photos/3932957/pexels-photo-3932957.jpeg",
  "https://images.pexels.com/photos/4940808/pexels-photo-4940808.jpeg",
  "https://images.pexels.com/photos/5998041/pexels-photo-5998041.jpeg",
  "https://images.pexels.com/photos/6032416/pexels-photo-6032416.jpeg",
  "https://images.pexels.com/photos/4906243/pexels-photo-4906243.jpeg",
  "https://images.pexels.com/photos/5824497/pexels-photo-5824497.jpeg",
  "https://images.pexels.com/photos/9220873/pexels-photo-9220873.jpeg",
  "https://images.pexels.com/photos/5824493/pexels-photo-5824493.jpeg",
  "https://images.pexels.com/photos/5824499/pexels-photo-5824499.jpeg",
  "https://images.pexels.com/photos/7061663/pexels-photo-7061663.jpeg",
  "https://images.pexels.com/photos/5490199/pexels-photo-5490199.jpeg",
  "https://images.pexels.com/photos/6370036/pexels-photo-6370036.jpeg",
  "https://images.pexels.com/photos/4947139/pexels-photo-4947139.jpeg",
  "https://images.pexels.com/photos/5824495/pexels-photo-5824495.jpeg",
  "https://images.pexels.com/photos/3951743/pexels-photo-3951743.jpeg",
  "https://images.pexels.com/photos/5490204/pexels-photo-5490204.jpeg",
  "https://images.pexels.com/photos/4947749/pexels-photo-4947749.jpeg",
  "https://images.pexels.com/photos/9220877/pexels-photo-9220877.jpeg",
  "https://images.pexels.com/photos/5824513/pexels-photo-5824513.jpeg",
  "https://images.pexels.com/photos/9220882/pexels-photo-9220882.jpeg",
  "https://images.pexels.com/photos/5824877/pexels-photo-5824877.jpeg",
  "https://images.pexels.com/photos/5490203/pexels-photo-5490203.jpeg",
  "https://images.pexels.com/photos/16747776/pexels-photo-16747776/free-photo-of-dans-une-maison-suedoise.jpeg"
]

# Boucle for creating 50 cottage
for image in exteriors do
  cottage = Cottage.new(
    name: Faker::Book.title,
    description: Faker::Lorem.paragraph_by_chars,
    total_bedroom: rand(1..10),
    total_bed: rand(1..5),
    total_bathroom: rand(1..5),
    total_occupancy: rand(1..10),
    address: Faker::Address.full_address,
    price: rand(50..400),
    user_id: user.id
    )

  # Save the Cottage
  cottage.save

  # Adding some photos to cottage
  # Adding exterior photo at first
  file = URI.open(image)
  cottage.photos.attach(io: file, filename: "#{cottage.name}.png", content_type: "image/png")

  # Adding 4 interiors photos
  # Select 4 unique photos interior
  select_interior = interiors.shuffle.pop(4)
  select_interior.each do |interior|
    file = URI.open(interior)
    cottage.photos.attach(io: file, filename: "#{cottage.id + interiors.index(interior) + 1}.png", content_type: "image/png")
    cottage.save
  end

  # Select 10 unique equipments to add in cottage
  select_equipments = equipements.shuffle.pop(10)

  # Add equipments tp cottage by CottageEquipment
  select_equipments.each do |equip|
    cottage_equip = CottageEquipment.new(cottage_id: cottage.id, equipment_id: equip.id)
    cottage_equip.save
  end

  # Confirm save the Cottage
  cottage.save
  puts "Creating Cottage: [#{cottage.id}] name: #{cottage.name} photos?: #{cottage.photos.attached?} / equipments?: [#{cottage.equipments.count}]"
end
puts "end cottage"
