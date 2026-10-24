#############################################################################################################
#                                               Obelisk DSL                                                 #
#                                    Data Recycling And Memory Management                                   #
#############################################################################################################
# Focus on preserving knowledge through burial urns inside of obelisks. This started out as an esolang, and #
# gradually became more useful for real world problems, such as the issue of catestrophic forgetting in     #
# AI models.                                                                                                #
#############################################################################################################
module Obelisk
  class DataRecycling
    #################################################################################################################
    #                                                Memoricimetiere                                                #
    #################################################################################################################
    def self.obelisk(old_data)
      old_graveyard = File.read_lines("mce/urn.txt").shuffle
      size_limit    = old_graveyard.size.to_i
      index = 0

      File.open("memoricimetiere/urn.txt", "w") { |f|
        f.puts old_data
      
        size_limit.times do
          f.puts old_graveyard[index]
          
          index = index + 1
        end
      }
    end

    def self.obelisk_shell(old_data)
      old_graveyard = File.read_lines("mce/surn.txt").shuffle
      size_limit    = old_graveyard.size.to_i
      index = 0

      File.open("memoricimetiere/surn.txt", "w") { |f|
        f.puts old_data
      
        size_limit.times do
          f.puts old_graveyard[index]
          
          index = index + 1
        end
      }
    end

    def self.obelisk_repl(old_data)
      old_graveyard = File.read_lines("mce/aurn.txt").shuffle
      size_limit    = old_graveyard.size.to_i
      index = 0

      File.open("memoricimetiere/aurn.txt", "w") { |f|
        f.puts old_data
      
        size_limit.times do
          f.puts old_graveyard[index]
          
          index = index + 1
        end
      }
    end

    def self.three_plot_burial(father, mother, child)
      buried_fathers  = File.read_lines("mce/family/father.txt").uniq.sort
      buried_mothers  = File.read_lines("mce/family/mother.txt").uniq.sort
      buried_children = File.read_lines("mce/family/child.txt").uniq.sort

      File.open("mce/family/father.txt", "w") { |f|
        f.puts father
        f.puts buried_fathers
      }
  
      File.open("mce/family/mother.txt", "w") { |f|
        f.puts mother
        f.puts buried_mothers
      }
  
      File.open("mce/family/child.txt", "w") { |f|
        f.puts child
        f.puts buried_children
      }
    end

    def self.four_plot_burial(father, mother, brother, sister)
      buried_fathers  = File.read_lines("mce/family/father.txt").uniq.sort
      buried_mothers  = File.read_lines("mce/family/mother.txt").uniq.sort
      buried_brothers = File.read_lines("mce/family/brother.txt").uniq.sort
      buried_sisters  = File.read_lines("mce/family/sister.txt").uniq.sort

      File.open("mce/family/father.txt", "w") { |f|
        f.puts father
        f.puts buried_fathers
      }
  
      File.open("mce/family/mother.txt", "w") { |f|
        f.puts mother
        f.puts buried_mothers
      }
  
      File.open("mce/family/brother.txt", "w") { |f|
        f.puts brother
        f.puts buried_brothers
      }

      File.open("mce/family/sister.txt", "w") { |f|
        f.puts sister
        f.puts buried_sisters
      }
    end

    def self.scatter_ashes
      old_graveyard = File.read_lines("mce/urn.txt").uniq.sort.shuffle
      size_limit    = old_graveyard.size.to_i
      index         = 0
  
      size_limit.times do
        puts old_graveyard[index]
  
        index = index + 1
      end
    end

    def self.scatter_shells
      old_graveyard = File.read_lines("mce/surn.txt").uniq.sort.shuffle
      size_limit    = old_graveyard.size.to_i
      index         = 0
  
      size_limit.times do
        system("#{old_graveyard[index]}")
  
        index = index + 1
      end
    end

    def self.scatter_three_ashes
      old_fathers  = File.read_lines("mce/family/father.txt").uniq.sort.shuffle
      old_mothers  = File.read_lines("mce/family/mother.txt").uniq.sort.shuffle
      old_children = File.read_lines("mce/family/child.txt").uniq.sort.shuffle

      size_limit    = old_fathers.size.to_i
      index         = 0
  
      ## Scatters fathers ashes in the wind.
      size_limit.times do
        puts old_fathers[index]
  
        index = index + 1
      end
  
      ## Scatters mothers ashes in the wind
      size_limit    = old_mothers.size.to_i
      index         = 0
  
      size_limit.times do
        puts old_mothers[index]
  
        index = index + 1
      end

      ## Scatters childrens ashes in the wind.
      size_limit    = old_children.size.to_i
      index         = 0
  
      size_limit.times do
        puts old_children[index]
  
        index = index + 1
      end
    end

    def self.scatter_four_ashes
      old_fathers  = File.read_lines("mce/family/father.txt").uniq.sort.shuffle
      old_mothers  = File.read_lines("mce/family/mother.txt").uniq.sort.shuffle
      old_brothers = File.read_lines("mce/family/brother.txt").uniq.sort
      old_sister   = File.read_lines("mce/family/sister.txt").uniq.sort

      size_limit    = old_fathers.size.to_i
      index         = 0
  
      ## Scatters fathers ashes in the wind.
      size_limit.times do
        puts old_fathers[index]
  
        index = index + 1
      end
  
      ## Scatters mothers ashes in the wind
      size_limit    = old_mothers.size.to_i
      index         = 0
  
      size_limit.times do
        puts old_mothers[index]
  
        index = index + 1
      end

      ## Scatters brothers ashes in the wind.
      size_limit    = old_brothers.size.to_i
      index         = 0
  
      size_limit.times do
        puts old_brothers[index]
  
        index = index + 1
      end

      ## Scatters sisters ashes in the wind.
      size_limit    = old_sister.size.to_i
      index         = 0
  
      size_limit.times do
        puts old_sister[index]
  
        index = index + 1
      end
    end

    def self.yonagumi(current_year, specific_event)
      age_of_yonagumi = 11000.0
  
      age_percent = age_of_yonagumi - current_year
  
      " For a point of comparison: Yonagumi is #{age_percent} years old as of #{current_year}."

      Obelisk::DataRecycling.obelisk("For a point of comparison: Yonagumi is #{age_percent} years old as of #{current_year}.")
      Obelisk::DataRecycling.scatter_ashes
    end

    def self.age_comparison(current_year, age_historical, specific_event)
      years_ago = current_year - age_historical
  
      print "The current year is #{current_year}, #{specific_event} is #{years_ago} years ago."
      puts Obelisk::DataRecycling.yonagumi(2026.0, "#{specific_event}")
      
      Obelisk::DataRecycling.obelisk("The current year is #{current_year}, #{specific_event} is #{years_ago} years ago.")
    end
  end
end

#############################################################################################################
#                                  Masculine Honorific Organized Directives                                 #
#############################################################################################################
module Samu
  module Cemotu
    class Objet
      def self.fruit(nom_de_fruit)
        nom_de_fruit
      end

      def self.legume(nom_de_legume)
        nom_de_legume
      end

      def self.viande(nom_de_viande)
        nom_de_viande
      end

      def self.chaussure(nom_de_chaussure)
        nom_de_chaussure
      end
    end

    class Sujet
      def self.moi(acteur)
        "#{acteur}_moi"
      end

      def self.toi(acteur)
        "#{acteur}_toi"
      end

      def self.ils(acteur)
        "#{acteur}_ils"
      end

      def self.elles(acteur)
        "#{acteur}_elles"
      end

      def self.noi(acteur)
        "#{acteur}_noi"
      end
    end
  end

  module Numotu
    class Phrase
      def self.express(objet, sujet, verbe)
        "#{objet.downcase}_#{sujet.downcase}_#{verbe.downcase}"
      end
    end
  end

  module LType
    class List
      def self.assert(cemotu, numotu)
        list_name = [ cemotu, numotu ]

        " :#{list_name[0]} #{list_name[1]}"
      end
    end
  end
end

module Hikasu
  module Cemotu
    class Objet
      def self.fruit(nom_de_fruit)
        nom_de_fruit
      end

      def self.legume(nom_de_legume)
        nom_de_legume
      end

      def self.viande(nom_de_viande)
        nom_de_viande
      end

      def self.chaussure(nom_de_chaussure)
        nom_de_chaussure
      end
    end

    class Sujet
      def self.moi(acteur)
        "#{acteur}_moi"
      end

      def self.toi(acteur)
        "#{acteur}_toi"
      end

      def self.ils(acteur)
        "#{acteur}_ils"
      end

      def self.elles(acteur)
        "#{acteur}_elles"
      end

      def self.noi(acteur)
        "#{acteur}_noi"
      end
    end
  end

  module Numotu
    class Phrase
      def self.express(objet, sujet, verbe)
        "#{objet.downcase}_#{sujet.downcase}_#{verbe.downcase}"
      end
    end
  end

  module LType
    class List
      def self.assert(cemotu, numotu)
        list_name = [ cemotu, numotu ]

        " :#{list_name[0]} #{list_name[1]}"
      end
    end
  end
end

module Sanu
  module Cemotu
    class Objet
      def self.fruit(nom_de_fruit)
        nom_de_fruit
      end

      def self.legume(nom_de_legume)
        nom_de_legume
      end

      def self.viande(nom_de_viande)
        nom_de_viande
      end

      def self.chaussure(nom_de_chaussure)
        nom_de_chaussure
      end
    end

    class Sujet
      def self.moi(acteur)
        "#{acteur}_moi"
      end

      def self.toi(acteur)
        "#{acteur}_toi"
      end

      def self.ils(acteur)
        "#{acteur}_ils"
      end

      def self.elles(acteur)
        "#{acteur}_elles"
      end

      def self.noi(acteur)
        "#{acteur}_noi"
      end
    end
  end

  module Numotu
    class Phrase
      def self.express(objet, sujet, verbe)
        "#{objet.downcase}_#{sujet.downcase}_#{verbe.downcase}"
      end
    end
  end

  module LType
    class List
      def self.assert(cemotu, numotu)
        list_name = [ cemotu, numotu ]

        " :#{list_name[0]} #{list_name[1]}"
      end
    end
  end
end

module Chanu
  module Cemotu
    class Objet
      def self.fruit(nom_de_fruit)
        nom_de_fruit
      end

      def self.legume(nom_de_legume)
        nom_de_legume
      end

      def self.viande(nom_de_viande)
        nom_de_viande
      end

      def self.chaussure(nom_de_chaussure)
        nom_de_chaussure
      end
    end

    class Sujet
      def self.moi(directive)
        "#{directive}_moi"
      end

      def self.toi(directive)
        "#{directive}_toi"
      end

      def self.ils(directive)
        "#{directive}_ils"
      end

      def self.elles(directive)
        "#{directive}_elles"
      end

      def self.noi(directive)
        "#{directive}_noi"
      end
    end
  end

  module Numotu
    class Phrase
      def self.express(objet, sujet, verbe)
        "#{objet.downcase}_#{sujet.downcase}_#{verbe.downcase}"
      end
    end
  end

  module LType
    class List
      def self.assert(cemotu, numotu)
        list_name = [ cemotu, numotu ]

        " :#{list_name[0]} #{list_name[1]}"
      end
    end
  end
end

#############################################################################################################
#                                      Feminine Honorific Organized Directives                              #
#############################################################################################################
module Sama
  module Cemota
    class Objet
      def self.fruit(nom_de_fruit)
        nom_de_fruit
      end

      def self.legume(nom_de_legume)
        nom_de_legume
      end

      def self.viande(nom_de_viande)
        nom_de_viande
      end

      def self.chaussure(nom_de_chaussure)
        nom_de_chaussure
      end
    end

    class Sujet
      def self.moi(acteur)
        "#{acteur}_moi"
      end

      def self.toi(acteur)
        "#{acteur}_toi"
      end

      def self.ils(acteur)
        "#{acteur}_ils"
      end

      def self.elles(acteur)
        "#{acteur}_elles"
      end

      def self.noi(acteur)
        "#{acteur}_noi"
      end
    end
  end

  module Numota
    class Phrase
      def self.express(objet, sujet, verbe)
        "#{objet.downcase}_#{sujet.downcase}_#{verbe.downcase}"
      end
    end
  end

  module LType
    class List
      def self.assert(cemotu, numotu)
        list_name = [ cemotu, numotu ]

        " :#{list_name[0]} #{list_name[1]}"
      end
    end
  end
end

module Hikasa
  module Cemota
    class Objet
      def self.fruit(nom_de_fruit)
        nom_de_fruit
      end

      def self.legume(nom_de_legume)
        nom_de_legume
      end

      def self.viande(nom_de_viande)
        nom_de_viande
      end

      def self.chaussure(nom_de_chaussure)
        nom_de_chaussure
      end
    end

    class Sujet
      def self.moi(acteur)
        "#{acteur}_moi"
      end

      def self.toi(acteur)
        "#{acteur}_toi"
      end

      def self.ils(acteur)
        "#{acteur}_ils"
      end

      def self.elles(acteur)
        "#{acteur}_elles"
      end

      def self.noi(acteur)
        "#{acteur}_noi"
      end
    end
  end

  module Numota
    class Phrase
      def self.express(objet, sujet, verbe)
        "#{objet.downcase}_#{sujet.downcase}_#{verbe.downcase}"
      end
    end
  end

  module LType
    class List
      def self.assert(cemotu, numotu)
        list_name = [ cemotu, numotu ]

        " :#{list_name[0]} #{list_name[1]}"
      end
    end
  end
end

module Sana
  module Cemota
    class Objet
      def self.fruit(nom_de_fruit)
        nom_de_fruit
      end

      def self.legume(nom_de_legume)
        nom_de_legume
      end

      def self.viande(nom_de_viande)
        nom_de_viande
      end

      def self.chaussure(nom_de_chaussure)
        nom_de_chaussure
      end
    end

    class Sujet
      def self.moi(acteur)
        "#{acteur}_moi"
      end

      def self.toi(acteur)
        "#{acteur}_toi"
      end

      def self.ils(acteur)
        "#{acteur}_ils"
      end

      def self.elles(acteur)
        "#{acteur}_elles"
      end

      def self.noi(acteur)
        "#{acteur}_noi"
      end
    end
  end

  module Numota
    class Phrase
      def self.express(objet, sujet, verbe)
        "#{objet.downcase}_#{sujet.downcase}_#{verbe.downcase}"
      end
    end
  end

  module LType
    class List
      def self.assert(cemotu, numotu)
        list_name = [ cemotu, numotu ]

        " :#{list_name[0]} #{list_name[1]}"
      end
    end
  end
end

module Chana
  module Cemota
    class Objet
      def self.fruit(nom_de_fruit)
        nom_de_fruit
      end

      def self.legume(nom_de_legume)
        nom_de_legume
      end

      def self.viande(nom_de_viande)
        nom_de_viande
      end

      def self.chaussure(nom_de_chaussure)
        nom_de_chaussure
      end
    end

    class Sujet
      def self.moi(acteur)
        "#{acteur}_moi"
      end

      def self.toi(acteur)
        "#{acteur}_toi"
      end

      def self.ils(acteur)
        "#{acteur}_ils"
      end

      def self.elles(acteur)
        "#{acteur}_elles"
      end

      def self.noi(acteur)
        "#{acteur}_noi"
      end
    end
  end

  module Numota
    class Phrase
      def self.express(objet, sujet, verbe)
        "#{objet.downcase}_#{sujet.downcase}_#{verbe.downcase}"
      end
    end
  end

  module LType
    class List
      def self.assert(cemotu, numotu)
        list_name = [ cemotu, numotu ]

        " :#{list_name[0]} #{list_name[1]}"
      end
    end
  end
end

#############################################################################################################
#                                      Machine Honorific Organized Directives                               #
#############################################################################################################
module Samos
  module Cemotos
    class Objet
      def self.fruit(nom_de_fruit)
        nom_de_fruit
      end

      def self.legume(nom_de_legume)
        nom_de_legume
      end

      def self.viande(nom_de_viande)
        nom_de_viande
      end

      def self.chaussure(nom_de_chaussure)
        nom_de_chaussure
      end
    end

    class Sujet
      def self.moi(acteur)
        "#{acteur}_moi"
      end

      def self.toi(acteur)
        "#{acteur}_toi"
      end

      def self.ils(acteur)
        "#{acteur}_ils"
      end

      def self.elles(acteur)
        "#{acteur}_elles"
      end

      def self.noi(acteur)
        "#{acteur}_noi"
      end
    end
  end

  module Numotos
    class Phrase
      def self.express(objet, sujet, verbe)
        "#{objet.downcase}_#{sujet.downcase}_#{verbe.downcase}"
      end
    end
  end

  module LType
    class List
      def self.assert(cemotu, numotu)
        list_name = [ cemotu, numotu ]

        " :#{list_name[0]} #{list_name[1]}"
      end
    end
  end
end

module Hikasos
  module Cemota
    class Objet
      def self.fruit(nom_de_fruit)
        nom_de_fruit
      end

      def self.legume(nom_de_legume)
        nom_de_legume
      end

      def self.viande(nom_de_viande)
        nom_de_viande
      end

      def self.chaussure(nom_de_chaussure)
        nom_de_chaussure
      end
    end

    class Sujet
      def self.moi(acteur)
        "#{acteur}_moi"
      end

      def self.toi(acteur)
        "#{acteur}_toi"
      end

      def self.ils(acteur)
        "#{acteur}_ils"
      end

      def self.elles(acteur)
        "#{acteur}_elles"
      end

      def self.noi(acteur)
        "#{acteur}_noi"
      end
    end
  end

  module Numotos
    class Phrase
      def self.express(objet, sujet, verbe)
        "#{objet.downcase}_#{sujet.downcase}_#{verbe.downcase}"
      end
    end
  end

  module LType
    class List
      def self.assert(cemotu, numotu)
        list_name = [ cemotu, numotu ]

        " :#{list_name[0]} #{list_name[1]}"
      end
    end
  end
end

module Sanos
  module Cemotos
    class Objet
      def self.fruit(nom_de_fruit)
        nom_de_fruit
      end

      def self.legume(nom_de_legume)
        nom_de_legume
      end

      def self.viande(nom_de_viande)
        nom_de_viande
      end

      def self.chaussure(nom_de_chaussure)
        nom_de_chaussure
      end
    end

    class Sujet
      def self.moi(acteur)
        "#{acteur}_moi"
      end

      def self.toi(acteur)
        "#{acteur}_toi"
      end

      def self.ils(acteur)
        "#{acteur}_ils"
      end

      def self.elles(acteur)
        "#{acteur}_elles"
      end

      def self.noi(acteur)
        "#{acteur}_noi"
      end
    end
  end

  module Numotos
    class Phrase
      def self.express(objet, sujet, verbe)
        "#{objet.downcase}_#{sujet.downcase}_#{verbe.downcase}"
      end
    end
  end

  module LType
    class List
      def self.assert(cemotu, numotu)
        list_name = [ cemotu, numotu ]

        " :#{list_name[0]} #{list_name[1]}"
      end
    end
  end
end

module Chanos
  module Cemota
    class Objet
      def self.fruit(nom_de_fruit)
        nom_de_fruit
      end

      def self.legume(nom_de_legume)
        nom_de_legume
      end

      def self.viande(nom_de_viande)
        nom_de_viande
      end

      def self.chaussure(nom_de_chaussure)
        nom_de_chaussure
      end
    end

    class Sujet
      def self.moi(acteur)
        "#{acteur}_moi"
      end

      def self.toi(acteur)
        "#{acteur}_toi"
      end

      def self.ils(acteur)
        "#{acteur}_ils"
      end

      def self.elles(acteur)
        "#{acteur}_elles"
      end

      def self.noi(acteur)
        "#{acteur}_noi"
      end
    end
  end

  module Numotos
    class Phrase
      def self.express(objet, sujet, verbe)
        "#{objet.downcase}_#{sujet.downcase}_#{verbe.downcase}"
      end
    end
  end

  module LType
    class List
      def self.assert(cemotu, numotu)
        list_name = [ cemotu, numotu ]

        " :#{list_name[0]} #{list_name[1]}"
      end
    end
  end
end

#################################################################################
#                                Predict Tethering                              #
#################################################################################
def gallows(*args)
  scaffold_height, scaffold_width, scaffold_depth,
  rope_length,     rope_width,     rope_tensil     = args

  def scaffold_metrics(sh, sw, sd)
    [[[sh, sh, sh], [sh, sh, sw], [sh, sh, sd]],
     [[sw, sw, sh], [sw, sw, sw], [sw, sw, sd]],
     [[sd, sd, sh], [sd, sd, sw], [sd, sd, sd]]]
  end

  def rope_metrics(rl, rw, rt)
    [[[rl, rl, rl], [rl, rl, rw], [rl, rl, rt]],
     [[rw, rw, rl], [rw, rw, rw], [rw, rw, rt]],
     [[rd, rd, rl], [rd, rd, rw], [rd, rd, rt]]]
  end

  ## Checks if scaffold inputs are valid.
  if scaffold_height.nil?
    puts "Error: There is no scaffold height information."

    abort
  end

  if scaffold_width.nil?
    puts "Error: There is no scaffold weight information."

    abort
  end

  if scaffold_depth.nil?
    puts "Error: There is no scaffold depth information."

    abort
  end

  ## Checks if rope inputs are valid.
  if rope_length.nil?
    puts "Error: There is no rope length information."

    abort
  end

  if rope_width.nil?
    puts "Error: There is no rope width information."

    abort
  end

  if rope_tensil.nil?
    puts "Error: There is no rope tensil strength information."

    abort
  end

  scaffold_trivia = scaffold_metrics(scaffold_height, scaffold_width, scaffold_depth)
  rope_trivia     = rope_metrics(rope_length, rope_width, rope_tensil)

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]

  ## Preselectors
  nrow_options = [-1, -2, -3]
  ncol_options = [-1, -2, -3]
  narr_options = [-1, -2, -3]

  nrow = nrow_options.sample
  ncol = ncol_options.sample
  narr = narr_options.sample

  cur_row = row_options[nrow]
  cur_col = col_options[ncol]
  cur_arr = arr_options[narr]

  current_scaffolding = scaffold_trivia[cur_row][cur_col][cur_arr]
  current_tether      = rope_trivia[cur_row][cur_col][cur_arr]

  [current_scaffolding, current_tether]
end

#################################################################################
#                             Predict Disconnection                             #
#################################################################################
def guillotine(*args)
  scaffold_height,     scaffold_width, scaffold_depth,
  guillotine_height, guillotine_depth, blade_sharpness = args

  def scaffold_metrics(sh, sw, sd)
    [[[sh, sh, sh], [sh, sh, sw], [sh, sh, sd]],
     [[sw, sw, sh], [sw, sw, sw], [sw, sw, sd]],
     [[sd, sd, sh], [sd, sd, sw], [sd, sd, sd]]]
  end

  def gprowess(gh, gd, gs)
    [[[gh, gh, gh], [gh, gh, gd], [gh, gh, gs]],
     [[gw, gw, gh], [gw, gw, gd], [gw, gw, gs]],
     [[gs, gs, gh], [gs, gs, gd], [gs, gs, gs]]]
  end

  ## Checks if scaffold inputs are valid.
  if scaffold_height.nil?
    puts "Error: There is no scaffold height information."

    abort
  end

  if scaffold_width.nil?
    puts "Error: There is no scaffold weight information."

    abort
  end

  if scaffold_depth.nil?
    puts "Error: There is no scaffold depth information."

    abort
  end

  ## Checks if rope inputs are valid.
  if guillotine_height.nil?
    puts "Error: There is no guillotine height information."

    abort
  end

  if guillotine_depth.nil?
    puts "Error: There is no guillotine depth information."

    abort
  end

  if blade_sharpness.nil?
    puts "Error: There is no guillotine blade sharpness information."

    abort
  end

  scaffold_trivia   = scaffold_metrics(scaffold_height, scaffold_width, scaffold_depth)
  guillotine_trivia = gprowess(guillotine_height, guillotine_depth, blade_sharpness)

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]

  ## Preselectors
  nrow_options = [-1, -2, -3]
  ncol_options = [-1, -2, -3]
  narr_options = [-1, -2, -3]

  nrow = nrow_options.sample
  ncol = ncol_options.sample
  narr = narr_options.sample

  cur_row = row_options[nrow]
  cur_col = col_options[ncol]
  cur_arr = arr_options[narr]

  current_scaffolding   = scaffold_trivia[cur_row][cur_col][cur_arr]
  current_disconnection = rope_trivia[cur_row][cur_col][cur_arr]

  [current_scaffolding, current_disconnection]
end

#################################################################################
#                           Counterfactual Prediction                           #
#################################################################################
def probability(prob)
  rand(prob)
end

def counterfact_selection(*args)
  a1, a2, b1, b2, c1, c2 = args

  a = a1, a2
  b = b1, b2
  c = c1, c2

  counter_factuals = [
    [[a[0], a[0], a[0]],
     [a[0], a[0], b[0]],
     [a[0], a[0], c[0]]],

    [[b[0], b[0], a[0]],
     [b[0], b[0], b[0]],
     [b[0], b[0], c[0]]],

    [[c[0], c[0], a[0]],
     [c[0], c[0], b[0]],
     [c[0], c[0], c[0]]],
  ], [
    [[a[1], a[1], a[1]],
     [a[1], a[1], b[1]],
     [a[1], a[1], c[1]]],

    [[b[1], b[1], a[1]],
     [b[1], b[1], b[1]],
     [b[1], b[1], c[1]]],

    [[c[1], c[1], a[1]],
     [c[1], c[1], b[1]],
     [c[1], c[1], c[1]]],
  ]

  cf_symbol      = counter_factuals[0]
  cf_description = counter_factuals[1]

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]

  ## Preselectors
  nrow_options = [-1, -2, -3]
  ncol_options = [-1, -2, -3]
  narr_options = [-1, -2, -3]

  nrow = nrow_options.sample
  ncol = ncol_options.sample
  narr = narr_options.sample

  cur_row = row_options[nrow]
  cur_col = col_options[ncol]
  cur_arr = arr_options[narr]

  predict_symbol      = cf_symbol[cur_row][cur_col][cur_arr]
  predict_description = cf_description[cur_row][cur_col][cur_arr]
  predict_score       = -0.9 * rand(-0.99)

  current_information = [predict_symbol, predict_description, predict_score]

  # Predict counterfactual symbol
  File.write("data/statistics/symbol/current_label.txt",                 predict_symbol)

  # Predict counterfactual score
  File.write("data/statistics/probability/current_probability.txt", predict_score)

  # Assign information as counterfactual label
  File.write("data/statistics/label/current_information.txt",            current_information)

  # Create counterfactual description
  File.write("data/statistics/description/current_description.txt",      predict_description)

  [predict_symbol, predict_description, predict_score]
end

def negative_counterfact_selection(*args)
  a1, a2, b1, b2, c1, c2 = args

  a = a1, a2
  b = b1, b2
  c = c1, c2

  counter_factuals = [
    [[a[0], a[0], a[0]],
     [a[0], a[0], b[0]],
     [a[0], a[0], c[0]]],

    [[b[0], b[0], a[0]],
     [b[0], b[0], b[0]],
     [b[0], b[0], c[0]]],

    [[c[0], c[0], a[0]],
     [c[0], c[0], b[0]],
     [c[0], c[0], c[0]]],
  ], [
    [[a[1], a[1], a[1]],
     [a[1], a[1], b[1]],
     [a[1], a[1], c[1]]],

    [[b[1], b[1], a[1]],
     [b[1], b[1], b[1]],
     [b[1], b[1], c[1]]],

    [[c[1], c[1], a[1]],
     [c[1], c[1], b[1]],
     [c[1], c[1], c[1]]],
  ]

  cf_symbol      = counter_factuals[0]
  cf_description = counter_factuals[1]

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]

  ## Preselectors
  nrow_options = [-1, -2, -3]
  ncol_options = [-1, -2, -3]
  narr_options = [-1, -2, -3]

  nrow = nrow_options.sample
  ncol = ncol_options.sample
  narr = narr_options.sample

  cur_row = row_options[nrow]
  cur_col = col_options[ncol]
  cur_arr = arr_options[narr]

  predict_symbol      = cf_symbol[cur_row][cur_col][cur_arr]
  predict_description = cf_description[cur_row][cur_col][cur_arr]
  predict_score       = nprobability(0.99)

  current_information = [predict_symbol, predict_description, predict_score]

  # Predict counterfactual symbol
  File.write("data/statistics/symbol/current_label.txt",                 predict_symbol)

  # Predict counterfactual score
  File.write("data/statistics/probability/current_probability.txt", predict_score)

  # Assign information as counterfactual label
  File.write("data/statistics/label/current_information.txt",            current_information)

  # Create counterfactual description
  File.write("data/statistics/description/current_description.txt",      predict_description)

  [predict_symbol, predict_description, predict_score]
end

def loss
  current_probability = File.read("data/statistics/probability/current_probability.txt").to_f
  current_information = File.read("data/statistics/label/current_information.txt")

  if current_probability > 0.999999999999999999
    current_probability = 0.9 / current_probability
  end
  
  case current_probability
  when 0.003921569000000000..0.287225000000000000
    "Im confident it is not [ #{current_information} ] as its only #{current_probability}."
  when 0.287225000000000001..0.522225000000000000
    "Im less unconfident it is not [ #{current_information} ] as its only #{current_probability}."
  when 0.522225000000000001..0.756112500000000000
    "Im almost sure it is [ #{current_information} ] because it has #{current_probability}."
  when 0.756112500000000001..0.999999999999999999
    "Im sure it is [ #{current_information} ] after all it has #{current_probability}."

  else
    "The probability is either to low or to large, so I cant determine exactly."
  end
  
  current_probability    = current_probability * 0.95
  
  File.write("data/statistics/probability/current_probability.txt", "#{current_probability}")
  File.write("data/statistics/label/current_information.txt",       current_information)
end

def gain
  current_probability = File.read("data/statistics/probability/current_probability.txt").to_f
  current_information = File.read("data/statistics/label/current_information.txt")

  if current_probability > 0.999999999999999999
    current_probability = 0.9 / current_probability
  end
  
  case current_probability
  when 0.003921569000000000..0.287225000000000000
    "Im confident it is not [ #{current_information} ] as its only #{current_probability}."
  when 0.287225000000000001..0.522225000000000000
    "Im less unconfident it is not [ #{current_information} ] as its only #{current_probability}."
  when 0.522225000000000001..0.756112500000000000
    "Im almost sure it is [ #{current_information} ] because it has #{current_probability}."
  when 0.756112500000000001..0.999999999999999999
    "Im sure it is [ #{current_information} ] after all it has #{current_probability}."

  else
    "The probability is either to low or to large, so I cant determine exactly."
  end
  
  current_probability    = current_probability + 0.15
  
  File.write("data/statistics/probability/current_probability.txt", "#{current_probability}")
  File.write("data/statistics/label/current_information.txt",       current_information)
end

def dynamic_guillotine_allocation
  l1_reasses = "level one reasses"
  l2_reasses = "level two reasses"
  l3_reasses = "level tre reasses"
  l4_reasses = "level fro reasses"

  reward_model = [
    [[l1_reasses, l1_reasses, l1_reasses, l1_reasses],
     [l1_reasses, l1_reasses, l1_reasses, l2_reasses],
     [l1_reasses, l1_reasses, l1_reasses, l3_reasses],
     [l1_reasses, l1_reasses, l1_reasses, l4_reasses]],
   
    [[l2_reasses, l2_reasses, l2_reasses, l1_reasses],
     [l2_reasses, l2_reasses, l2_reasses, l2_reasses],
     [l2_reasses, l2_reasses, l2_reasses, l3_reasses],
     [l2_reasses, l2_reasses, l2_reasses, l4_reasses]],
   
    [[l3_reasses, l3_reasses, l3_reasses, l1_reasses],
     [l3_reasses, l3_reasses, l3_reasses, l2_reasses],
     [l3_reasses, l3_reasses, l3_reasses, l3_reasses],
     [l3_reasses, l3_reasses, l3_reasses, l4_reasses]],
   
    [[l4_reasses, l4_reasses, l4_reasses, l1_reasses],
     [l4_reasses, l4_reasses, l4_reasses, l2_reasses],
     [l4_reasses, l4_reasses, l4_reasses, l3_reasses],
     [l4_reasses, l4_reasses, l4_reasses, l4_reasses]],
  ]

  row_options = [0, 1, 2, 3]
  col_options = [0, 1, 2, 3]
  arr_options = [0, 1, 2, 3]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample

  current_reward_structure = reward_model[cur_row][cur_col][cur_arr]

  if    current_reward_structure == l1_reasses; loss
  elsif current_reward_structure == l2_reasses; 2.times do loss end
  elsif current_reward_structure == l3_reasses; 3.times do loss end
  elsif current_reward_structure == l4_reasses; 4.times do loss end
  else
    loss
  end
end

def dynamic_reward_allocation
  l1_reasses = "level one reasses"
  l2_reasses = "level two reasses"
  l3_reasses = "level tre reasses"
  l4_reasses = "level fro reasses"

  reward_model = [
    [[l1_reasses, l1_reasses, l1_reasses, l1_reasses],
     [l1_reasses, l1_reasses, l1_reasses, l2_reasses],
     [l1_reasses, l1_reasses, l1_reasses, l3_reasses],
     [l1_reasses, l1_reasses, l1_reasses, l4_reasses]],
   
    [[l2_reasses, l2_reasses, l2_reasses, l1_reasses],
     [l2_reasses, l2_reasses, l2_reasses, l2_reasses],
     [l2_reasses, l2_reasses, l2_reasses, l3_reasses],
     [l2_reasses, l2_reasses, l2_reasses, l4_reasses]],
   
    [[l3_reasses, l3_reasses, l3_reasses, l1_reasses],
     [l3_reasses, l3_reasses, l3_reasses, l2_reasses],
     [l3_reasses, l3_reasses, l3_reasses, l3_reasses],
     [l3_reasses, l3_reasses, l3_reasses, l4_reasses]],
   
    [[l4_reasses, l4_reasses, l4_reasses, l1_reasses],
     [l4_reasses, l4_reasses, l4_reasses, l2_reasses],
     [l4_reasses, l4_reasses, l4_reasses, l3_reasses],
     [l4_reasses, l4_reasses, l4_reasses, l4_reasses]],
  ]

  row_options = [0, 1, 2, 3]
  col_options = [0, 1, 2, 3]
  arr_options = [0, 1, 2, 3]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample

  current_reward_structure = reward_model[cur_row][cur_col][cur_arr]

  if    current_reward_structure == l1_reasses; gain
  elsif current_reward_structure == l2_reasses; 2.times do gain end
  elsif current_reward_structure == l3_reasses; 3.times do gain end
  elsif current_reward_structure == l4_reasses; 4.times do gain end
  else
    gain
  end
end

def dynamic_mode_switcher
  modes = [
    [["deposit", "deposit"], ["deposit", "extract"]],
    [["extract", "deposit"], ["extract", "extract"]],
  ]
  
  row_options = [0, 1]
  col_options = [0, 1]
  arr_options = [0, 1]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample

  current_mode = modes[cur_row][cur_col][cur_arr]

  if    current_mode == "deposit"; dynamic_reward_allocation
  elsif current_mode == "extract"; dynamic_guillotine_allocation
  else
    dynamic_guillotine_allocation
  end
end

#################################################################################
#                              Meaning Collissions                              #
#################################################################################
# lasokanon - Asokanonu - Lassus used to tie people to canons; more generally   #
# used to refer to a general law and standard that tethers concepts to          #
# disproportionate outcomes.                                                    #
#################################################################################
def calculate_circumference(radius)
  pi            = 3.14
  diameter      = 2 * radius
  circumference = pi * diameter

  [pi, radius, circumference]
end

def calculate_depth(circumference, specified_length)
  circumference * specified_length
end

def asoka(*args)
  canon_circumference, canon_depth, canon_power,
  established_canon, counterfactual = args

  def canon_actuelle(cradius, cdepth, catk)
    [cradius, cdepth, catk]
  end

  def cnarrative(established_canon, counterfactual)
    [established_canon, counterfactual]
  end

  [canon_actuelle(canon_circumference, canon_depth, canon_power), cnarrative(established_canon, counterfactual)]
end

#################################################################################
#                         Japanese Negative Constraints                         #
#################################################################################
def encrire(input)
  print input
end

def encrireln(input)
  puts input
end

def nai(fact_one, fact_two)
  encrireln("Nai [ #{fact_one} ] anata [ #{fact_two} ], ")

  [fact_one, fact_two]
end

def shikasa(fact_three)
  encrireln("shikashi #{fact_three}")

  fact_three
end

#################################################################################
#                             Japanese Ternary Labels                           #
#################################################################################
## Japanese Contrastive
def sore(a, b)
  "Sora wa #{a} #{b}"
  
  sore = [ a, b ]
  
  File.open("data/japanese/positive/sore_a.txt", "a") { |f|
    f.puts sore[0]
  }

  File.open("data/japanese/positive/sore_b.txt", "a") { |f|
    f.puts sore[1]
  }
end

def shikashi(a, b)
  "Shikashi wa #{a} #{b}"
  
  shikashi = [ a, b ]

  File.open("data/japanese/positive/shikashi_a.txt", "a") { |f|
    f.puts shikashi[0]
  }

  File.open("data/japanese/positive/shikashi_b.txt", "a") { |f|
    f.puts shikashi[1]
  }
end

def matawa(a, b, c, d)
  "Matawa sora #{a} ni wa #{b} naishi #{c}, shikashi wa #{c}."

  matawa_nest = [ b, c ]
  matawa_est  = d

  File.open("data/japanese/positive/matawa_nest_a.txt", "a") { |f|
    f.puts matawa_nest[0]
  }

  File.open("data/japanese/positive/matawa_nest_b.txt", "a") { |f|
    f.puts matawa_nest[1]
  }
  
  File.open("data/japanese/positive/matawa_est.txt", "a") { |f|
    f.puts shikashi
  }
end

## Hanten-Ronri
def nisore(a, b)
  "Sono gyaku sora wa #{a} #{b}"
  
  nisore = [ a, b ]

  File.open("data/japanese/negative/nisore_a.txt", "a") { |f|
    f.puts nisore[0]
  }

  File.open("data/japanese/negative/nisore_b.txt", "a") { |f|
    f.puts nisore[1]
  }
end

def nishikashi(a, b)
  "Sono gyaku shikashi wa #{a} #{b}."

  nishikashi = [ a, b ]

  File.open("data/japanese/negative/matawa_nest_a.txt", "a") { |f|
    f.puts nishikashi[0]
  }

  File.open("data/japanese/negative/matawa_nest_b.txt", "a") { |f|
    f.puts nishikashi[1]
  }
end

def nimatawa(a, b, c, d)
  "Sono gyaku matawa sora #{a} wa #{b} naishi #{c}, shikashi wa #{d}"

  nimatawa_nest = [ b, c ]
  nimatawa_est  = d

  File.open("data/japanese/negative/nimatawa_nest_a.txt", "a") { |f|
    f.puts nimatawa_nest[0]
  }

  File.open("data/japanese/negative/nimatawa_nest_b.txt", "a") { |f|
    f.puts nimatawa_nest[1]
  }
  
  File.open("data/japanese/negative/nimatawa_est.txt", "a") { |f|
    f.puts nimatawa_est
  }
end

def soflo(assertion, upper_boundary)    
  bot_name = %Q(BIANCA)

  sore_kosan = Proc.new { | x, interval |
    x > interval ? %Q(#{bot_name}: #{x} has crossed the upper boundary.) : %Q(#{bot_name}: #{x} has not crossed the upper boundary.)
  }

  puts sore_kosan.call(assertion, upper_boundary)
end

## Shikashi float
def shiflo(assertion, lower_boundary)
  bot_name = %Q(BIANCA)

  shikashi_kosan = Proc.new { | x, interval |
    x < interval ? %Q(#{bot_name}: #{x} has crossed the limit below the lower boundary.) : %Q(#{bot_name}: #{x} has not crossed the limit below the lower boundary.)
  }

  puts shikashi_kosan.call(assertion, lower_boundary)
end

## Matawa float
def maflo(assertion, upper_boundary, lower_boundary)
  bot_name = %Q(BIANCA)

  matawa_kosan = Proc.new { | x, first_interval, second_interval |
    x > first_interval && x < second_interval ? %Q(#{bot_name}: #{x} is floating between boundary conditions #{first_interval} and #{second_interval}.) : %Q(#{bot_name}: #{x} is not floating between boundary conditions #{first_interval} and #{second_interval}.)
  }

  puts matawa_kosan.call(assertion, upper_boundary, lower_boundary)
end

#################################################################################
#                           French Negative Constraints                         #
#################################################################################
def ne(first_noun, second_noun)
  puts "Non #{first_noun} ou #{second_noun}, "

  [first_noun, second_noun]
end

def mais(third_noun)
  puts "mais cest #{third_noun}."

  third_noun
end

#################################################################################
#                             French Ternary Negation                           #
#################################################################################
def cint(assertion, upper_boundary)    
  bot_name = %Q(BIANCA)

  cette_nombre = Proc.new { | x, interval |
    x > interval ? %Q(#{bot_name}: #{x} has crossed the upper boundary.) : %Q(#{bot_name}: #{x} has not crossed the upper boundary.)
  }

  puts cette_nombre.call(assertion, upper_boundary)
end

def mint(assertion, lower_boundary)
  bot_name = %Q(BIANCA)

  maisette_nombre = Proc.new { | x, interval |
    x < interval ? %Q(#{bot_name}: #{x} has crossed the limit below the lower boundary.) : %Q(#{bot_name}: #{x} has not crossed the limit below the lower boundary.)
  }

  puts maisette_nombre.call(assertion, lower_boundary)
end

def sint(assertion, upper_boundary, lower_boundary)
  bot_name = %Q(BIANCA)

  sinon_nombre = Proc.new { | x, first_interval, second_interval |
    x > first_interval && x < second_interval ? %Q(#{bot_name}: #{x} is floating between boundary conditions #{first_interval} and #{second_interval}.) : %Q(#{bot_name}: #{x} is not floating between boundary conditions #{first_interval} and #{second_interval}.)
  }

  puts sinon_nombre.call(assertion, upper_boundary, lower_boundary)
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
  if color.nil? or shape.nil? or size.nil?
    puts "Error: Color, Shape, or Size has not been defined."
  else
    new_color = bow_color(color)
    new_shape = bow_shape(shape)
    new_size  = bow_size(size)

    print [new_color, new_shape, new_size]

    new_color = new_color.downcase.tr ".", ""
    new_color = new_color.downcase.tr " ", "_"

    new_shape = new_shape.downcase.tr ".", ""
    new_shape = new_shape.downcase.tr " ", "_"

    new_size = new_size.downcase.tr ".", ""
    new_size = new_size.downcase.tr " ", "_"

    File.open("scripts/hairbow_trivia.awa", "w") { |f|
      f.puts %Q{(cfs :color #{new_color} :shape #{new_shape} :size #{new_size})}
    }
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
  if color.nil? or shape.nil? or size.nil?
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
  if color.nil? or shape.nil? or size.nil?
    puts "Error: Color, Shape, and Size has not been defined."
  else
    new_color = s_color(color)
    new_shape = s_shape(shape)
    new_size  = s_size(size)

    print [new_color, new_size, new_weight]
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
  if color.nil? or shape.nil? or size.nil?
    puts "Error: Color, Shape, and Size has not been defined."
  else
    new_color = st_color(color)
    new_shape = st_shape(shape)
    new_size  = st_size(size)

    print [new_color, new_size, new_weight]
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
  if color.nil? or shape.nil? or size.nil?
    puts "Error: Color, Shape, and Size has not been defined."
  else
    new_color = sa_color(color)
    new_shape = sa_shape(shape)
    new_size  = sa_size(size)

    print [new_color, new_size, new_weight]
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
  if color.nil? or scent.nil? or oil_variety.nil?
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
  if gender.nil? or size.nil? or weight.nil?
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
  if variety.nil? or size.nil? or weight.nil?
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
  if variety.nil? or shape.nil? or size.nil? or weight.nil?
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
  if species.nil? or color.nil? or size.nil? or weight.nil?
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
  if item.nil? or dispenser.nil?
    "Error: Item or Dispenser has not been defined."
  else
    designate_item(item)
    designate_dispenser(dispenser)
  end
end

def purchase_status(item, dispenser)
  if item.nil? or dispenser.nil?
    "Error: Item or Dispenser has not been defined."
  else
    designate_item(item)
    designate_dispenser(dispenser)
  end
end

#################################################################################
#                               Coordinate Actions                              #
#################################################################################
def cstate(*kwargs, perform_action)
  player_actions = kwargs

  player_actions[0][perform_action]
end

def caction(a, b, c)
  actions = [
    [[a, a, a],
     [a, a, b],
     [a, a, c]],

    [[b, b, a],
     [b, b, b],
     [b, b, c]],

    [[c, c, a],
     [c, c, b],
     [c, c, c]],
  ]

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample

  next_action = actions[cur_row][cur_col][cur_arr]

  current_action  = cstate({
    a => b,
    b => c,
    c => a,
  }, next_action)

  current_action
end

#################################################################################
#                                  From Script                                  #
#################################################################################
def from_script
  file_name = ARGV[0]

  read_file = File.readlines(file_name)

  total_lines = read_file.size.to_i
  index       = 0

  if total_lines > 0
    total_lines.times do
      current_line = read_file[index]
  
      current_line = current_line.tr ")", ""  
      current_line = current_line.tr "(", ""
      current_line = current_line.tr %q("), %q()

      tokens       = current_line.split(/ /)
      total_tokens = tokens.size.to_i
      token_index  = 0
    
      ## The actual tokens you'll be parsing.
      parsed_tokens = [] #of String
    
      if total_tokens > 0

        total_tokens.times do
          current_token = tokens[token_index]
 
          parsed_tokens = parsed_tokens.push(current_token)
    
          token_index = token_index + 1
        end
        
        ###################################################################################################
        #                                         Document Parsing                                        #
        ###################################################################################################  
        if    parsed_tokens[0] == "arc"
          hairbows(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3])
        elsif parsed_tokens[0] == "cor"
          corsets(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3])
        elsif parsed_tokens[0] == "jup"
          skirts(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3])
        elsif parsed_tokens[0] == "bas"
          stocking(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3])
        elsif parsed_tokens[0] == "sab"
          clogs(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3])
        elsif parsed_tokens[0] == "srg"
          soap_region(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3])
        elsif parsed_tokens[0] == "pol"
          chicken_breed(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3])
        elsif parsed_tokens[0] == "pom"
          feed_chicken(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3])
        elsif parsed_tokens[0] == "rty"
          stone_type(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3], parsed_tokens[4])
        elsif parsed_tokens[0] == "cus"
          puts curse_status(parsed_tokens[1], parsed_tokens[2])
        elsif parsed_tokens[0] == "ach"
          puts purchase_status(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3], parsed_tokens[4])
        elsif parsed_tokens[0] == "cin"
          cint(parsed_tokens[1].to_i, parsed_tokens[2].to_i)
        elsif parsed_tokens[0] == "min"
          mint(parsed_tokens[1].to_i, parsed_tokens[2].to_i)
        elsif parsed_tokens[0] == "sin"
          sint(parsed_tokens[1].to_i, parsed_tokens[2].to_i)
        elsif parsed_tokens[0] == "ne"
          ne(parsed_tokens[1], parsed_tokens[2])
        elsif parsed_tokens[0] == "mais"
          mais(parsed_tokens[1], parsed_tokens[2])
        elsif parsed_tokens[0] == "cfs"
          print counterfact_selection(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3], parsed_tokens[4], parsed_tokens[5], parsed_tokens[6])
          puts " "
        elsif parsed_tokens[0] == "nfs"
          print counterfact_selection(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3], parsed_tokens[4], parsed_tokens[5], parsed_tokens[6])
          puts " "
        elsif parsed_tokens[0] == "dms"
          search_limit = parsed_tokens[1].to_i

          search_limit.times do
            dynamic_mode_switcher
          end

          current_probability = File.read("data/statistics/probability/current_probability.txt").to_f
          current_information = File.read("data/statistics/label/current_information.txt")

          puts "#{current_probability} #{current_information}"
        elsif parsed_tokens[0] == "asoka"
          get_radius           = parsed_tokens[0].to_i
          circumference_values = calculate_circumference(get_radius)

          canon_power       = parsed_tokens[1].to_i
          established_canon = parsed_tokens[2]
          counterfactual    = parsed_tokens[3]

          encrire(asoka(circumference_values[2], calculate_depth(circumference_values[2], 6), canon_power, established_canon, counterfactual))
          encrireln(" ")
        elsif parsed_tokens[0] == "cact"
          encrireln(caction(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3]))
        elsif parsed_tokens[0] == "vio"
          system("clear")
        elsif parsed_tokens[0] == "ext"
          abort
        else
          current_token = tokens[token_index]
        
          puts current_token
        end
  
        index = index + 1
      end
    end
  else
    current_line = read_file[index]
   
    puts current_line
  end
end

#################################################################################
#                                     REPL                                      #
#################################################################################
# This is for prototyping the scripting language as its developing, while being #
# phased out for the reading from a script.                                     #
#################################################################################
def repl
  loop do
    print " >>> "; dispatcher = gets.chomp

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
      stocking(dispatcher[1], dispatcher[2], dispatcher[3])
    elsif dispatcher[0] == "sab"
      clogs(dispatcher[1], dispatcher[2], dispatcher[3])
    elsif dispatcher[0] == "srg"
      soap_region(dispatcher[1], dispatcher[2], dispatcher[3])
    elsif dispatcher[0] == "pol"
      chicken_breed(dispatcher[1], dispatcher[2], dispatcher[3])
    elsif dispatcher[0] == "pom"
      feed_chicken(dispatcher[1], dispatcher[2], dispatcher[3])
    elsif dispatcher[0] == "rty"
      stone_type(dispenser[1], dispatcher[2], dispatcher[3], dispatcher[4])
    elsif dispatcher[0] == "cus"
      puts curse_status(dispatcher[1], dispatcher[2])
    elsif dispatcher[0] == "ach"
      puts purchase_status(dispatcher[1], dispatcher[2], dispatcher[3], dispatcher[4])
    elsif parsed_tokens[0] == "cin"
      cint(dispatcher[1].to_i, dispatcher[2].to_i)
    elsif parsed_tokens[0] == "min"
      mint(dispatcher[1].to_i, dispatcher[2].to_i)
    elsif parsed_tokens[0] == "sin"
      sint(dispatcher[1].to_i, dispatcher[2].to_i)
    elsif dispatcher[0] == "ne"
      ne(dispatcher[1], dispatcher[2])
    elsif dispatcher[0] == "mais"
      mais(dispatcher[1], dispatcher[2])
    elsif dispatcher[0] == "cfs"
      print counterfact_selection(dispatcher[1], dispatcher[2], dispatcher[3], dispatcher[4], dispatcher[5], dispatcher[6])
      puts " "
    elsif dispatcher[0] == "nfs"
      print negative_counterfact_selection(dispatcher[1], dispatcher[2], dispatcher[3], dispatcher[4], dispatcher[5], dispatcher[6])
      puts " "
    elsif dispatcher[0] == "dms"
      search_limit = dispatcher[1].to_i
    
      search_limit.times do
        dynamic_mode_switcher
      end

      current_probability = File.read("data/statistics/probability/current_probability.txt").to_f
      current_information = File.read("data/statistics/label/current_information.txt")

      puts "#{current_probability} #{current_information}"
    elsif dispatcher[0] == "asoka"
      get_radius           = dispatcher[0].to_i
      circumference_values = calculate_circumference(get_radius)

      canon_power       = dispatcher[1].to_i
      established_canon = dispatcher[2]
      counterfactual    = dispatcher[3]

      encrire(asoka(circumference_values[2], calculate_depth(circumference_values[2], 6), canon_power, established_canon, counterfactual))
      encrireln(" ")
    elsif parsed_tokens[0] == "cact"
      encrireln(caction(dispatcher[1], dispatcher[2], dispatcher[3]))
    elsif dispatcher[0] == "vio"
      system("clear")
    elsif dispatcher[0] == "ext"
      abort
    else
      puts "Error: Non fonction nom."
    end
  end
end
