require "open-uri"
# Deleting all equipemnts
Equipment.destroy_all

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

puts "starting"
equipments.each do |data|
  file = URI.open(data[:icon])
  equipment = Equipment.new(name: data[:name], category: data[:category])
  equipment.icon.attach(io: file, filename: "#{equipment.name}.png", content_type: "image/png")
  equipment.save!
  puts equipment.name
end

puts "end"
