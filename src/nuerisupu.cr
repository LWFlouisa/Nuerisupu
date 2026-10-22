def encrire(input)
  print input
end

def encrireln(input)
  puts input
end

#################################################################################
#                              Clothing Categorization                          #
#################################################################################
def bow_color(c)
  "Le colour de la archette est #{c}."
end

def bow_shape(s)
  "Le shape de la archette est #{s}."
end

def bow_size(w)
  "Le taille de la archette est #{w}."
end

def hairbows(color, shape, size)
  if color.nil? || shape.nil? || size.nil?
    puts "Error: Color, Shape, or Size has not been defined."
  else
    new_color = bow_color(color)
    new_shape = bow_shape(shape)
    new_size  = bow_size(size)

    print [new_color, new_shape, new_color]
  end

  encrireln(" ")
end

def c_color(s)
  "Le colour de la corsette est #{s}."
end

def c_shape(s)
  "Le shape de la corsette est #{s}."
end

def c_size(w)
  "Le taille de la corsette est #{w}."
end

def corsets(color, shape, size)
  if color.nil? || shape.nil? || size.nil?
    puts "Error: Color, Shape, and Size has not been defined."
  else
    new_color = c_color(color)
    new_shape = c_shape(shape)
    new_size  = c_size(size)

    print [new_color, new_size, new_color]
  end

  encrireln(" ")
end

def s_color(s)
  "Le colour de le jupe est #{s}."
end

def s_shape(s)
  "Le shape de le jupe est #{s}."
end

def s_size(w)
  "Le taille de le jupe est #{w}."
end

def skirts(color, shape, size)
  if color.nil? || shape.nil? || size.nil?
    puts "Error: Color, Shape, and Size has not been defined."
  else
    new_color = s_color(color)
    new_shape = s_shape(shape)
    new_size  = s_size(size)

    print [new_color, new_size, new_size]
  end

  encrireln(" ")
end

def st_color(s)
  "Le colour de le bas est #{s}."
end

def st_shape(s)
  "Le shape de le bas est #{s}."
end

def st_size(w)
  "Le taille de le bas est #{w}."
end

def stockings(color, shape, size)
  if color.nil? || shape.nil? || size.nil?
    puts "Error: Color, Shape, and Size has not been defined."
  else
    new_color = st_color(color)
    new_shape = st_shape(shape)
    new_size  = st_size(size)

    print [new_color, new_size, new_size]
  end

  encrireln(" ")
end

def sa_color(s)
  "Le colour de le sabots de bois est #{s}."
end

def sa_shape(s)
  "Le shape de le sabots de bois  est #{s}."
end

def sa_size(w)
  "Le taille de le sabots de bois  est #{w}."
end

def clogs(color, shape, size)
  if color.nil? || shape.nil? || size.nil?
    puts "Error: Color, Shape, and Size has not been defined."
  else
    new_color = sa_color(color)
    new_shape = sa_shape(shape)
    new_size  = sa_size(size)

    print [new_color, new_size, new_size]
  end

  encrireln(" ")
end

#################################################################################
#                            Deso Yokesavonos Ilepoheto                         #
#################################################################################
def soap_color(color)
  "Cette savon est #{color}. "
end

def soap_scent(scent)
  "C'est aussi un parfum de #{scent}. "
end

def soap_oil(ov)
  "Le huile est #{ov}."
end

def soap_regions(color, scent, oil_variety)
  if color.nil? || scent.nil? || oil_variety.nil?
    puts "Error: Color, Shape, or Oil Variety has not been defined."
  else
    new_color = soap_color(color)
    new_scent = soap_scent(scent)
    new_oil   = soap_oil(oil_variety)

    print [new_color, new_scent, new_oil]
  end

  encrireln(" ")
end

def chicken_gender(g)
  "Le poulet est un #{g}."
end

def chicken_size(s)
  "C'est aussi le taille #{s}."
end

def chicken_weight(w)
  "Et finis, c'est poids est #{w}."
end

def chicken_breed(gender, size, weight)
  if gender.nil? || size.nil? || weight.nil?
    puts "Error: Gender, Shape, or Size has not been defined."
  else
    new_gender = chicken_gender(gender)
    new_size   = chicken_size(size)
    new_weight = chicken_weight(weight)

    print [new_gender, new_size, new_weight]
  end

  encrireln(" ")
end

def gemstone_variety(v)
  "Le variete de gemme est #{v}."
end

def gemstone_size(s)
  "Le taille de gemme est #{s}."
end

def gemstone_weight(w)
  "Le poids de gemme est #{w}."
end

def feed_chicken(variety, size, weight)
  if variety.nil? || size.nil? || weight.nil?
    puts "Error: Color, Shape, or Size has not been defined."
  else
    new_variety = gemstone_variety(variety)
    new_size    = gemstone_size(size)
    new_weight  = gemstone_weight(weight)

    print [new_variety, new_size, new_weight]
  end

  encrireln(" ")
end

def roche_variety(v)
  "Le variete de roche est #{v}."
end

def roche_shape(s)
  "Le shape de roche est #{s}."
end

def roche_size(s)
  "Le taille de roche est #{s}."
end

def roche_weight(w)
  "Le poids de roche est #{w}."
end

def stone_type(variety, shape, size, weight)
  if variety.nil? || shape.nil? || size.nil? || weight.nil?
    puts "Error: Variety, Shape, Size, or Weight has not been defined."
  else
    new_variety = roche_variety(variety)
    new_shape   = roche_shape(shape)
    new_size    = roche_size(size)
    new_weight  = roche_weight(weight)

    print [new_variety, new_shape, new_size, new_weight]
  end

  encrireln(" ")
end

def cat_variety(v)
  "Le variete de le chat est #{v}."
end

def cat_color(s)
  "Le shape de le chat est #{s}."
end

def cat_size(s)
  "Le taille de le chat est #{s}."
end

def cat_weight(w)
  "Le poids de le chat est #{w}."
end

def cat_variety(species, color, size, weight)
  if species.nil? || color.nil? || size.nil? || weight.nil?
    "Error: Species, Color, Size, or Weight has not been defined."
  else
    new_variety = cat_variety(variety)
    new_color   = cat_color(color)
    new_size    = cat_size(size)
    new_weight  = cat_weight(weight)

    print [new_variety, new_color, new_size, new_weight]
  end

  encrireln(" ")
end

def designate_c_item(selected_item)
  encrire(selected_item)
  encrire(" is cursed by the dispenser ")
end

def designate_p_item(selected_item)
  encrire(selected_item)
  encrire(" is vender by ")
end

def designate_dispenser(selected_dispenser)
  encrireln(selected_dispenser)
end

def cursed_status(item, dispenser)
  if item.nil? || dispenser.nil?
    "Error: Item or Dispenser has not been defined."
  else
    designate_c_item(item)
    designate_dispenser(dispenser)
  end
end

def purchase_status(item, dispenser)
  if item.nil? || dispenser.nil?
    "Error: Item or Dispenser has not been defined."
  else
    designate_p_item(item)
    designate_dispenser(dispenser)
  end
end

#################################################################################
#                                     REPL                                      #
#################################################################################
# This is for prototyping the scripting language as its developing, while being #
# phased out for the reading from a script.                                     #
#################################################################################
def repl
  system("clear")

  puts "Welcome to Nuerisupu."

  loop do
    print " >>> "; dispatcher = gets.not_nil!.chomp

    dispatcher = dispatcher.tr "(", ""
    dispatcher = dispatcher.tr ")", ""
    dispatcher = dispatcher.tr %Q("), %Q()
    dispatcher = dispatcher.split(" ")

    if    dispatcher[0] == "arc"
      hairbows(dispatcher[1], dispatcher[2], dispatcher[3])
    elsif dispatcher[0] == "cor"
      corsets(dispatcher[1], dispatcher[2], dispatcher[3])
    elsif dispatcher[0] == "jup"
      skirts(dispatcher[1], dispatcher[2], dispatcher[3])
    elsif dispatcher[0] == "bas"
      stockings(dispatcher[1], dispatcher[2], dispatcher[3])
    elsif dispatcher[0] == "sab"
      clogs(dispatcher[1], dispatcher[2], dispatcher[3])
    elsif dispatcher[0] == "srg"
      soap_regions(dispatcher[1], dispatcher[2], dispatcher[3])
    elsif dispatcher[0] == "pol"
      chicken_breed(dispatcher[1], dispatcher[2], dispatcher[3])
    elsif dispatcher[0] == "pom"
      feed_chicken(dispatcher[1], dispatcher[2], dispatcher[3])
    elsif dispatcher[0] == "rty"
      stone_type(dispatcher[1], dispatcher[2], dispatcher[3], dispatcher[4])
    elsif dispatcher[0] == "cus"
      puts cursed_status(dispatcher[1], dispatcher[2])
    elsif dispatcher[0] == "ach"
      puts purchase_status(dispatcher[1], dispatcher[2])
    elsif dispatcher[0] == "vio"
      system("clear")
    elsif dispatcher[0] == "ext"
      abort
    else
      puts "Error: Non fonction nom."
    end
  end
end

repl
