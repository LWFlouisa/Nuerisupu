macro define_gender(gender_name, word_name, content)
  module {{gender_name}}
    def self.{{word_name}}
	  {{content}}
	end
  end
end

macro define_method(method_name, content)
  def {{method_name}}
    {{content}}
  end
end

macro recursive_method(recursive_method_name, regular_content, recursive_content)
  def {{recursive_method_name}}
    {{regular_content}}
	
	# File.open("hello_test.rb", "w") { |f| f.puts %Q(puts "Hello World") }
	{{recursive_content}}
  end
end

# recursive_method greeter(npc, player, outfile), "#{npc}: Hello, #{player}.", File.open("#{outfile}.awa", "w") { |f|
#   f.puts %Q(#{npc} #{player})
# }

#######################################################################
#                         General Outfit                              #
#######################################################################
# The design aesthetic for women in this time period gravitates to    #
# giant hairbows ( like the Alsatian ), corsettes, white stockings,   #
# and whole foot wooden shoes.                                        #
#                                                                     #
# In Lhacurimosa its represented as clothes gradually wearing out,    #
# not being easily replaced when they're damaged. Suggested something #
# more suited for dungeon crawling.                                   #
#######################################################################
define_method           aruxetos(a, b), %Q(Cette archette #{a} est de #{b}.)
define_method      coresetosunos(a, b), %Q(Cette corsette #{a} est de #{b}.)
define_method jupecabinemotonese(a, b), %Q(Cette jupe de les chiennes #{a} est de #{b}.)
define_method          basumoton(a, b), %Q(Anos basumotonos #{a} est de #{b}.)
define_method    basumotonerudos(a, b), %Q(Anos basumotonerudos #{a} est de #{b}.)
define_method       sfabotarokos(a, b), %Q(Anos sfabotarokos de #{a} est de #{b}.)

## Recursive Garments
def hairbow(a, b, hairbow_output)
  "#{a} is wearing #{b} on her head."

  File.open("#{hairbow_output}.awa", "w") {
    f.puts "#{a} #{b} #{hairbow_output}"
  }
end

def cabin_skirt(a, b, skirt_output)
  "#{a} is wearing #{b} on her bottom."

  File.open("#{skirt_output}.awa", "w") {
    f.puts "#{a} #{b} #{skirt_output}"
  }
end

def wool_stockings(a, b, stocking_output)
  "#{a} is wearing #{b} on her feet."

  File.open("#{stocking_output}.awa", "w") {
    f.puts "#{a} #{b} #{stocking_output}"
  }
end

def black_stockings(a, b, bstocking_output)
  "#{a} is wearing #{b} on her feet."

  File.open("#{bstocking_output}.awa", "w") {
    f.puts "#{a} #{b} #{bstocking_output}"
  }
end

def wooden_sabots(a, b, sabot_output)
  "#{a} is wearing #{b} on her feet."

  File.open("#{sabot_output}.awa", "w") {
    f.puts "#{a} #{b} #{sabot_output}"
  }
end

#######################################################################
#                       Gameplay Elements                             #
#######################################################################
# This DSL gravitates to fairy tale like stories close to places like #
# like dead civilizations near black holes. With the dying remnants   #
# of the last surviving romance language related to French and the    #
# Japanese language, with "Uncle Jack" a generic term for deceptively #
# cheerful bedtime material.                                          #
#                                                                     #
# The main characters are often people executed when the story began  #
# with everything else leading up to this point, suggesting a         #
# a deeper connection in being guillotined in places situated close   #
# to the epicenter of a black hole.                                   #
#######################################################################
define_method   ehonerudos(a, b), %Q(Anos ehonerudos #{a} est de #{b}.)          # Black Hole Expanse
define_method esvasvohudos(a, b), %Q(#{a} tombe en anos esvasvohudos a #{b}.)    # Executioners scaffold
define_method      ojijaku(a, b), %Q(Anos ojijaku #{a} est cette payes de #{b}.) # Oncle Hanzi as a generic label for fairy tales.

#######################################################################
#                             Biomes                                  #
#######################################################################
# The parallel bootstrapper seemed to suggest that my constructed     #
# language naturally graviates either to Gobi desert like lands, or   #
# even snowy permafrost lands.                                        #
#                                                                     #
# More specifically it be situated in a dry lake bed in a jungle      #
# close to a desert similar to the Gobi desert where the sands are    #
# almost black in color.                                              #
#######################################################################
## Common Biomes
define_method etigerunerudos(a, b), %Q(#{a} est en le paye de anos etigerunerudos en #{b}.) # Gobi desert like landscape.
define_method ehinebehanecos(a, b), %Q(#{a} est en le paye de anos ehinebehanecos en #{b}.) # White lion lands of snow
define_method     ehocucehos(a, b), %Q(#{a} est en le paye de anu ehocucehos en #{b}.)      # Dry lake bed
define_method       ebaxetos(a, b), %Q(#{a} est en le paye de anos ebaxetos en #{b}.)       # Jungle biome

## Rare Biomes
define_method egirafucerocodihu(a, b), %Q(#{a} est en le paye de anu egirafucerocodihu en #{b}.) # Apple Tree Forest
define_method    egunogiyotinos(a, b), %Q(#{a} est en le paye de anos egunogiyotinos en #{b}.)   # Savannah Biomes.

#######################################################################
#                          Peaceful Mobs                              #
#######################################################################
# The most common peaceful mobs are giraffs, elephants, and villagers #
# loosely based on white and black Algerians.                         #
#######################################################################
define_method     egirafu(a, b), %Q(#{a} est en un anu egirafu en #{b}.)     # A is a giraff in B.
define_method ehepehanutu(a, b), %Q(#{a} est en un anu ehepehanutu en #{b}.) # A is a elephant in B.
define_method nerudospeda(a, b), %Q(#{a} est en un anu nerudospeda de #{b}.) # A is a black footed person in B.
define_method   perachinu(a, b), %Q(#{a} est en un anu perachinu en #{b}.)   # A is a fish in B.
define_method     motonos(a, b), %Q(#{a} est en un anos motonos en #{b}.) # A is a sheep in B.

#######################################################################
#                          Ambiguous Mobs                             #
#######################################################################
# These mobs are relatively rare in the context of French colonialism #
# historically, and tended to happen more in American French colonies #
# like Haiti and Guyanna if someone is mixed. However every now and   #
# then you will encounter red headed girls, with paler skin.          #
#######################################################################
define_method erudutete(a, b), %Q(#{a} est en un ana erudutete de #{b}.) # A is an red head of B.
define_method     lupos(a, b), %Q(#{a} est en un anos lupos en #{b}.)    # A is a wolf in B.
define_method   sorisos(a, b), %Q(#{a} est en un anos sorisos en #{b}.) # A is an mouse in B.
define_method   poletos(a, b), %Q(#{a} est en un anos poletos en #{b}.) # A is an chicken in B.

#######################################################################
#                       Encountered Monsters                          #
#######################################################################
define_method ehine(a, b), %Q(#{a} est un anos ehine pour #{b}.)                    # Lion nationality
define_method etigeru(a, b), %Q(#{a} est un anos etigeru pour #{b}.)                # Tiger nationality
define_method ecerocodihu(a, b), %Q(#{a} est en un anu ecerocodihu en #{b}.)        # A is a crocodile in B.
define_method ebaxetonerudos(a, b), %Q(#{a} est en un anos ebaxetonerudos en #{b}.) # A is a black uniformed bayonette wielder in B.

## Specific Dungeon Crawling
define_method gobehinos(a, b), %Q(#{a} est en un anos gobehinos en #{b}.) # A is a gobelin in B.