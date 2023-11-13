require "open-uri"
require 'faker'
require "cloudinary"

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
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/i41a7zjrmaftumlpedeu"
  },
  {
    name: "Shampooing",
    category: category[0],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/rdmkzoczn6jxvwt61n23"
  },
  {
    name: "Produits de nettoyage",
    category: category[0],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/ocknu9aps3pb1nmyzuye"
  },
  {
    name: "Savon pour le corps",
    category: category[0],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/fhm4v7utncq3dz7d8cce"
  },
  {
    name: "Eau chaud",
    category: category[0],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/tuujrq8xs1itp0o2zwvg"
  },
  {
    name: "Gel douche",
    category: category[0],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/x9pmwebfjuc3rlpv6yfe"
  },
  {
    name: "Baignoire",
    category: category[0],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/yam5im5llblqt8sls7rc"
  },
  {
    name: "Équipements de base", # (Serviettes, draps, savon et papier toilette)
    category: category[1],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/pwevr6ol9gsoca5fdy8k"
  },
  {
    name: "Draps",
    category: category[1],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/gbkugupcdkhhnrpee7x3"
  },
  {
    name: "Armoire",
    category: category[1],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/m5tnjmumj9lau0o1krw7"
  },
  {
    name: "Cintres",
    category: category[1],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/efjrdg6wa0odubhn0nxb"
  },
  {
    name: "Lave-linge",
    category: category[1],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/yh9w3biinj4dewhhvcm6"
  },
  {
    name: "Sèche-linge",
    category: category[1],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/pxucjly573bvkpjewxri"
  },
  {
    name: "Fer à repasser",
    category: category[1],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/thaex7mwjaoygitccmqj"
  },
  {
    name: "Étendoir à linge",
    category: category[1],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/fnhfzhseizq4wr4dmjsc"
  },
  {
    name: "Télévision",
    category: category[2],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/nderomb5xmkzvoaedqu4"
  },
  {
    name: "Salle de sport",
    category: category[2],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/l5jet7ysxgznc9cpq9df"
  },
  {
    name: "Table de ping pong",
    category: category[2],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/woy9swjvjkho0c8hsxvp"
  },
  {
    name: "Billard",
    category: category[2],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/vylp3m4yjxkh1qreoot1"
  },
  {
    name: "Livres",
    category: category[2],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/agbdubfwkcnsj0xf4avg"
  },
  {
    name: "Piscine",
    category: category[2],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/acwvjd3v9qvcrijf0jvx"
  },
  {
    name: "Jacuzzi",
    category: category[2],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/ntnc1pcvypk3gbrljvsk"
  },
  {
    name: "Sauna",
    category: category[2],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/bsulifgavjy0qa4rikly"
  },
  {
    name: "hammam",
    category: category[2],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/vo5aynitw01bkic706jq"
  },
  {
    name: "Lit pour bébé",
    category: category[3],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/wmo2yv8wtllrymph8rcz"
  },
  {
    name: "Chaise haute",
    category: category[3],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/jteldqhntezvqbw1bhmd"
  },
  {
    name: "Livres et jouets pour enfants",
    category: category[3],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/m05poeqz9xkpwlqgffoj"
  },
  {
    name: "Table à langer",
    category: category[3],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/qv6drsdcwoxvtpfi6kvp"
  },
  {
    name: "Protections sur les fenêtres",
    category: category[3],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/f0vwlyaxmgktjorazzq3"
  },
  {
    name: "Chauffage",
    category: category[4],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/s3dxzfgdaqafeojfioyz"
  },
  {
    name: "Climatisation",
    category: category[4],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/mlyigte3kzt673cxjbmh"
  },
  {
    name: "Cheminée",
    category: category[4],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/rbevfdtbnwvevtfm62qz"
  },
  {
    name: "Détecteur de fumée",
    category: category[5],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/nhy2ukstktci3blugfif"
  },
  {
    name: "Extincteur",
    category: category[5],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/vu91ar6q83wmuzwzrpdq"
  },
  {
    name: "Caméras de surveillance",
    category: category[5],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/yszqahbuecddhofq1esl"
  },
  {
    name: "Détecteur de monoxyde de carbone",
    category: category[5],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/fouiucmfwe0rnmskee9r"
  },
  {
    name: "Kit de premiers secours",
    category: category[5],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/zdcyaknzp0pxw0pgsgg5"
  },
  {
    name: "Wifi",
    category: category[6],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/krwt4883e7z4wyt55ufk"
  },
  {
    name: "Ordinateur",
    category: category[6],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/puzork5vd27z5lab5lgn"
  },
  {
    name: "Cuisine",
    category: category[7],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/tzhaorsjdk3pl9ik8t1j"
  },
  {
    name: "Réfrigérateur",
    category: category[7],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/gluvnkxjg6vmcle2wiw4"
  },
  {
    name: "Congélateur",
    category: category[7],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/u3tukbth41gtulycxkuz"
  },
  {
    name: "Cuisinière",
    category: category[7],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/nurtdqlyrboftboyhihq"
  },
  {
    name: "Four",
    category: category[7],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/vhfqovob3nczavf7js59"
  },
  {
    name: "Cafetière",
    category: category[7],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/fauunqpdkiymwafzxzyb"
  },
  {
    name: "Micro-ondes",
    category: category[7],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/xy7a1elmpvwumqutppgx"
  },
  {
    name: "Équipements de cuisine de base", # (Casseroles et poêles, huile, sel et poivre)
    category: category[7],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/bawwqkqltgkhijfqlzj2"
  },
  {
    name: "Vaisselle et couverts",
    category: category[7],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/k5n01uubyzyqmbqoqb01"
  },
  {
    name: "Bouilloire électrique",
    category: category[7],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/jjkvujlzmc3ijp7ss9nq"
  },
  {
    name: "Grille-pain",
    category: category[7],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/nrzxki6wioxlcq8srsnx"
  },
  {
    name: "Table à manger",
    category: category[7],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/k5wzuleuhujxwulloax5"
  },
  {
    name: "Entrée privée",
    category: category[8],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/xzjqlzpbvvxmvndvhkaa"
  },
  {
    name: "Accès au piste de ski",
    category: category[8],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/zzhqfagd82vqi7psipzc"
  },
  {
    name: "Vue sur la montagne",
    category: category[8],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/tejgd1pfcrbmeqlu44p2"
  },
  {
    name: "Vue sur le lac",
    category: category[8],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/oxq7yjmbfpbcjwpeavk4"
  },
  {
    name: "Patio ou balcon",
    category: category[9],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/rgqhqtwbscohqeqfznlz"
  },
  {
    name: "Mobilier d'extérieur",
    category: category[9],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/qcxswxqywg6rlrqg3hqv"
  },
  {
    name: "Barbecue",
    category: category[9],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/jlmtg5db5qhaitcaxqw9"
  },
  {
    name: "Parking gratuit sur place",
    category: category[10],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/aa9zec5jlxy5b85pijot"
  },
  {
    name: "Station de recharge pour véhicules électriques",
    category: category[10],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/i5olurrtbgivxy65x62i"
  },
  {
    name: "Clés remises par l'hôte",
    category: category[11],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/nvr0h1oijzrz0rl6jiqr"
  },
  {
    name: "Animaux acceptés",
    category: category[11],
    icon: "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/icons/i274xrxt1cxtsdjekszw"
  }
]

# Creating first User
puts "Creating User"
user_photo = "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/cottages/ldxzq7ukelxkpchap7eu.jpg"
file = URI.open(user_photo)
user = User.new(email: "l@l.com", first_name: "Quentin", last_name: "Brisepierre", birthday_date: "1999-11-20", password: "hPKH92P9+")
user.profile_photo.attache(io: file, filename: "#{user.last_name}.png", content_type: "image/png")
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

# Title of cottage
title_cottages = [
  "Chalet de montagne avec vue panoramique",
  "Cocon alpin pour une escapade romantique",
  "Chalet familial près des pistes de ski",
  #"Chalet rustique au cœur de la nature",
  #"Retraite tranquille en chalet de montagne",
  #"Luxe et détente dans un chalet privé",
  #"Chalet moderne avec jacuzzi en plein air",
  #"Séjour chaleureux dans un chalet en bois",
  #"Chalet avec accès au lac cristallin",
  #"Expérience montagnarde dans un chalet typique",
  #"Chalet isolé pour un séjour paisible",
  #"Chalet design avec vue imprenable",
  #"Séjour en famille dans un chalet spacieux",
  #"Évasion en chalet de luxe en forêt",
  #"Détente totale dans un chalet bien-être",
  #"Chalet de charme pour une escapade authentique"
]

  # Images principal for cottage
  exteriors = [
      "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/cottages/toscxob8wmpzsznxr9o2",
      "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/cottages/b5kbyzvdohjpzprftgts",
      "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/cottages/kwthrqanjg0j3cpcgyim",
      #"https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/cottages/z3d35tutwv4xepw8edoh",
      #"https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/cottages/qzhbmd7wbfyxr6tmhgny",
      #"https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/cottages/hshwg267swe2x8gqr6jq",
      #"https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/cottages/glzv7wjk277gu1gayzcj",
      #"https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/cottages/p6shhfrpc3vbbo6ppg6e",
      #"https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/cottages/ppgvrbyiynsqylbf3kql",
      #"https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/cottages/uqvnluwqowaaamsrm1cm",
      #"https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/cottages/nbcg2geaesv6mbi6dkgk",
      #"https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/cottages/mgptgdbbgznsdqiz2ecs",
      #"https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/cottages/bh0uvtts3k3prtiacdpb",
      #"https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/cottages/p6ddrjzzcxizxniir13r",
      #"https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/cottages/u2xkpeh4hnwpspqbe9fr",
      #"https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/cottages/rp7arqet8pknruwjovsq"
  ]
# Interior images for cottage
  interiors = [
    "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/cottages/ekgmwjucycp67jcdfhq2",
    "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/cottages/zbkxvqudemhbsczeerot",
    "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/cottages/ffzvon3sn32lyrgfldxk",
    "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/cottages/mmlkw7kp87h9wymrg8zx",
    "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/cottages/zn9djdsczhrxxvyzbo7v",
    "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/cottages/qj1j4xupfoaizxb55e69",
    "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/cottages/yzczq5gwdnbudmrjje8c",
    "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/cottages/mfcnxathhilopt4icwcu",
    "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/cottages/trwpd8d9jet98szark8l",
    "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/cottages/irmokvqql6eauq6zjbbo.jpg",
    "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/cottages/nzs9hh9k0pcw4wxozkzo.jpg",
    "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/cottages/owviroxedzifi48qpf8f.jpg",
    "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/cottages/lkjlrl0hvso6p1ameevo.jpg",
    "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/cottages/sef2dc1yrd5mxiy79de3.jpg",
    "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/cottages/ue2gvr438if7vcxkcix9.jpg",
    "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/cottages/fdej3nwnmgsrnjmizwix.jpg",
    "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/cottages/csxyxzpxb5dl8snc6ubv.jpg",
    "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/cottages/towf5qtkkz6ysb3rsftp.jpg",
    "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/cottages/rn7w7st3wpvpvkebnf0a.jpg",
    "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/cottages/vgzxmtmu7nhoktibz8bj.jpg",
    "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/cottages/noasv0j6ddajmiwyfbyy.jpg",
    "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/cottages/mqlu76qwplkhmij9wutb.jpg",
    "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/cottages/fwmjgdsamcqeyg538kue.jpg",
    "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/cottages/wsycyx8o8kq9vplsfzt6.jpg",
    "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/cottages/fqrxp5qzehlcvfnch0v3.jpg",
    "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/cottages/ctv6tshns0ttiiwkpqkl.jpg",
    "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/cottages/ygefkffyb6uxdoysk34a.jpg",
    "https://res.cloudinary.com/falconium/image/upload/f_auto,q_auto/v1/cottages/vyjtvlkpan9hjc0m4nyr.jpg"
  ]


exteriors.each_with_index do |image, index|
  cottage = Cottage.new(
    name: title_cottages[index],
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

