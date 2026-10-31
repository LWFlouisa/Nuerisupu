#############################################################################################################
#                                                Global Variables                                           #
#############################################################################################################
# This is to renable a feature that was removed from Crystal without my consent on the Crystal development. #
# I need a Ruby that can compile, not your personal style guide.                                            #
#############################################################################################################
class GState
  macro define_method(name, content)
    def {{name}}
      {{content}}
    end
  end

  define_method gvar(varname, varcontent), File.open(varname, "w") { |f|
    f.puts varcontent
  }

  def av(varname, varcontent, increment)
    increment = increment.to_i

    varcontent = varcontent + increment

    File.open("data/globals/#{varname}.txt", "w") { |f|
      f.puts varcontent
    }
  end

  def sv(varname, varcontent, increment)
    increment = increment.to_i

    varcontent = varcontent + increment

    File.open("data/globals/#{varname}.txt", "w") { |f|
      f.puts varcontent
    }
  end

  def mv(varname, varcontent, increment)
    increment = increment.to_i

    varcontent = varcontent * increment

    File.open("data/globals/#{varname}.txt", "w") { |f|
      f.puts varcontent
    }
  end

  def dv(varname, varcontent, increment)
    increment = increment.to_i

    varcontent = varcontent - increment

    File.open("data/globals/#{varname}.txt", "w") { |f|
      f.puts varcontent
    }
  end

  def ev(varname, varcontent, increment)
    increment = increment.to_i

    varcontent = varcontent ** increment

    File.open("data/globals/#{varname}.txt", "w") { |f|
      f.puts varcontent
    }
  end
end

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

      File.open("mce/urn.txt", "w") { |f|
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

      File.open("mce/surn.txt", "w") { |f|
        f.puts old_data
      
        size_limit.times do
          f.puts old_graveyard[index]
          
          index = index + 1
        end
      }
    end

    def self.obelisk_script(old_data)
      old_graveyard = File.read_lines("mce/aurn.txt").shuffle
      size_limit    = old_graveyard.size.to_i
      index = 0

      File.open("mce/aurn.txt", "w") { |f|
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
      old_fathers  = File.read_lines(%Q(mce/family/father.txt)).uniq.sort.shuffle
      old_mothers  = File.read_lines(%Q(mce/family/mother.txt)).uniq.sort.shuffle
      old_children = File.read_lines(%Q(mce/family/child.txt)).uniq.sort.shuffle

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
      old_fathers  = File.read_lines(%Q(mce/family/father.txt)).uniq.sort.shuffle
      old_mothers  = File.rearead_linesdlines(%Q(mce/family/mother.txt)).uniq.sort.shuffle
      old_brothers = File.read_lines(%Q(mce/family/brother.txt)).uniq.sort
      old_sister   = File.read_lines(%Q(mce/family/sister.txt)).uniq.sort

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
  
      %Q( For a point of comparison: Yonagumi is #{age_percent} years old as of #{current_year}.)

      Obelisk::DataRecycling.obelisk(%Q(For a point of comparison: Yonagumi is #{age_percent} years old as of #{current_year}.))
      Obelisk::DataRecycling.scatter_ashes
    end

    def self.age_comparison(current_year, age_historical, specific_event)
      years_ago = current_year - age_historical
  
      print %Q(The current year is #{current_year}, #{specific_event} is #{years_ago} years ago.)
      puts Obelisk::DataRecycling.yonagumi(2026.0, %Q(#{specific_event}))
      
      Obelisk::DataRecycling.obelisk(%Q(The current year is #{current_year}, #{specific_event} is #{years_ago} years ago.))
    end
  end

  module NeuroSymbolic
    class BasicML
      #######################################################################################
      #                         Genetic Reinforcement Naive Bayes                           #
      #######################################################################################
      def self.generate_bounded_probability
        assumed_percentage = "0."

        alpha = ["c", "d", "e", "f", "g", "a", "b"]
  
        a = alpha.sample
        b = alpha.sample
        c = alpha.sample
        d = alpha.sample
        e = alpha.sample
        f = alpha.sample
        g = alpha.sample
  
        "#{assumed_percentage}#{c}#{d}#{e}#{f}#{g}#{a}#{b}"
      end

      def self.convert_to_piano_to_percent(fake_percent)
        # if number is 0.eaaaaf, convert to real percent
        real_percent = fake_percent.tr ".cdefgab", ".0123456"
        real_percent = real_percent.to_f

        real_percent
      end

      def self.slogprob(lowest_probability, highest_probability)
        logarithm = lowest_probability / highest_probability
  
        logarithm
      end

      def self.get_statistics(a1, a2, b1, b2, c1, c2)
        a = [ a1, a2 ]
        b = [ b1, b2 ]
        c = [ c1, c2 ]

        matrix = [[
          [[a[0], a[0]], [a[0], b[0]], [a[0], c[0]]],
          [[b[0], a[0]], [b[0], b[0]], [b[0], c[0]]],
          [[c[0], a[0]], [c[0], b[0]], [c[0], c[0]]],
        ], [
          [[a[1], a[1]], [a[1], b[1]], [a[1], c[1]]],
          [[b[1], a[1]], [b[1], b[1]], [b[1], c[1]]],
          [[c[1], a[1]], [c[1], b[1]], [c[1], c[1]]],
        ], [
          [[0.50, 0.50], [0.50, 0.50], [0.50, 0.50]],
          [[0.50, 0.50], [0.50, 0.50], [0.50, 0.50]],
          [[0.50, 0.50], [0.50, 0.50], [0.50, 0.50]],
        ]]

        label_type       = matrix[0]
        definition_type  = matrix[1]
        probability_type = matrix[2]
  
        row_probability = 0.33
        col_probability = 0.33
  
        graph_selection = row_probability * col_probability

        row_options = [0, 1, 2]
        col_options = [0, 1, 2]
        arr_options = [0, 1]

        cur_row = row_options.sample
        cur_col = col_options.sample
        cur_arr = arr_options.sample
  
        current_label       = label_type[cur_row][cur_col][cur_arr]
        current_definition  = definition_type[cur_row][cur_col][cur_arr]
  
        base_probability = probability_type[cur_row][cur_col][cur_arr].to_i
  
        current_probability = base_probability + graph_selection
  
        current_probability = current_probability + current_probability
        current_information = "#{current_label} #{current_definition}"
  
        puts "[ #{current_label} #{current_definition} ]"
  
        #File.write("data/statistics/probability/current_probability.txt", "#{current_probability}")
        #File.write("data/statistics/label/current_information.txt",       current_information)

        File.write("data/statistics/probability/current_probability.txt", "#{current_probability}")
        File.write("data/statistics/label/current_information.txt",            current_information)
        File.write("data/statistics/description/current_description.txt",      current_definition)
        File.write("data/statistics/symbol/current_label.txt",                 current_label)
      end

      def self.gain
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

      def self.loss
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

      def self.dynamic_reward_allocation
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

        if    current_reward_structure == l1_reasses;            Obelisk::NeuroSymbolic::BasicML.gain
        elsif current_reward_structure == l2_reasses; 2.times do Obelisk::NeuroSymbolic::BasicML.gain end
        elsif current_reward_structure == l3_reasses; 3.times do Obelisk::NeuroSymbolic::BasicML.gain end
        elsif current_reward_structure == l4_reasses; 4.times do Obelisk::NeuroSymbolic::BasicML.gain end
        else
          Obelisk::NeuroSymbolic::BasicML.gain
        end
      end

      def self.dynamic_guillotine_allocation
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

        if    current_reward_structure == l1_reasses; Obelisk::NeuroSymbolic::BasicML.loss
        elsif current_reward_structure == l2_reasses; 2.times do Obelisk::NeuroSymbolic::BasicML.loss end
        elsif current_reward_structure == l3_reasses; 3.times do Obelisk::NeuroSymbolic::BasicML.loss end
        elsif current_reward_structure == l4_reasses; 4.times do Obelisk::NeuroSymbolic::BasicML.loss end
        else
          Obelisk::NeuroSymbolic::BasicML.loss
        end
      end

      def self.dynamic_mode_switcher
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

        if    current_mode == "deposit"; Obelisk::NeuroSymbolic::BasicML.dynamic_reward_allocation
        elsif current_mode == "extract"; Obelisk::NeuroSymbolic::BasicML.dynamic_guillotine_allocation
        else
          Obelisk::NeuroSymbolic::BasicML.dynamic_guillotine_allocation
        end
      end

      def self.get_edge_cases(a1, a2, b1, b2, c1, c2, d1, d2, e1, e2, f1, f2)
        a = [ a1, a2 ]
        b = [ b1, b2 ]
        c = [ c1, c2 ]
        d = [ d1, d2 ]
        e = [ e1, e2 ]
        f = [ f1, f2 ]

        edges_cases = [[
          [ a[0], e[0], b[0], d[0], f[0], c[0] ],
          [ e[0], b[0], d[0], f[0], c[0], a[0] ],
          [ b[0], d[0], f[0], c[0], a[0], e[0] ],
          [ d[0], f[0], c[0], a[0], e[0], b[0] ],
          [ f[0], c[0], a[0], b[0], d[0], e[0] ],
          [ c[0], a[0], e[0], b[0], d[0], f[0] ],
        ], [
          [ a[1], e[1], b[1], d[1], f[1], c[1] ],
          [ e[1], b[1], d[1], f[1], c[1], a[1] ],
          [ b[1], d[1], f[1], c[1], a[1], e[1] ],
          [ d[1], f[1], c[1], a[1], e[1], b[1] ],
          [ f[1], c[1], a[1], b[1], d[1], e[1] ],
          [ c[1], a[1], e[1], b[1], d[1], f[1] ],
        ]]
  
        symbols      = edges_cases[0]
        descriptions = edges_cases[1]

        row_options = [0, 1, 2, 3, 4, 5]
        col_options = [0, 1, 2, 3, 4, 5]
  
        cur_row = row_options.sample
        cur_col = col_options.sample
  
        first_symbol      = symbols[cur_row][cur_col] #[cur_arr]
        first_description = descriptions[cur_row][cur_col] #[cur_arr]

        cur_row = row_options.sample
        cur_col = col_options.sample
  
        second_symbol      = symbols[cur_row][cur_col] #[cur_arr]
        second_description = descriptions[cur_row][cur_col] #[cur_arr]

        cur_row = row_options.sample
        cur_col = col_options.sample
  
        third_symbol      = symbols[cur_row][cur_col] #[cur_arr]
        third_description = descriptions[cur_row][cur_col] #[cur_arr]
  
        2.times do
          Obelisk::NeuroSymbolic::BasicML.get_statistics(first_symbol,  first_description,
                                                         second_symbol, second_description,
                                                         third_symbol,  third_description)
                   
          Obelisk::NeuroSymbolic::BasicML.dynamic_mode_switcher
        end
      end

      def self.hyper_statistics(a1, a2, b1, b2, c1, c2)
        a = [ a1, a2 ]
        b = [ b1, b2 ]
        c = [ c1, c2 ]
  
        d = Obelisk::NeuroSymbolic::BasicML.convert_to_piano_to_percent(generate_bounded_probability)

        matrix = [[
          [[[a[0], c[0]],
            [a[0], a[0]],
            [a[0], a[0]]],
     
           [[a[0], b[0]],
            [a[0], a[0]],
            [b[0], a[0]]],

           [[a[0], a[0]],
            [a[0], a[0]],
            [c[0], a[0]]]],

          [[[b[0], c[0]],
            [b[0], b[0]],
            [a[0], b[0]]],
    
           [[b[0], b[0]],
            [b[0], b[0]],
            [b[0], b[0]]],
    
           [[b[0], a[0]],
            [b[0], b[0]],
            [c[0], b[0]]]],

          [[[c[0], c[0]],
            [c[0], c[0]],
            [a[0], c[0]]],
    
           [[c[0], b[0]],
            [c[0], c[0]],
            [b[0], c[0]]],
    
           [[c[0], a[0]],
            [c[0], c[0]],
            [c[0], c[0]]]],
        ], [
          [[[a[1], c[1]],
            [a[1], a[1]],
            [a[1], a[1]]],
     
           [[a[1], b[1]],
            [a[1], a[1]],
            [b[1], a[1]]],
     
           [[a[1], a[1]],
            [a[1], a[1]],
            [c[1], a[1]]]],
     
          [[[b[1], c[1]],
            [b[1], b[1]],
            [a[1], b[1]]],
    
           [[b[1], b[1]],
            [b[1], b[1]],
            [b[1], b[1]]],
    
           [[b[1], a[1]],
            [b[1], b[1]],
            [c[1], b[1]]]],

          [[[c[1], c[1]],
            [c[1], c[1]],
            [a[1], c[1]]],
    
           [[c[1], b[1]],
            [c[1], c[1]],
            [b[1], c[1]]],
    
           [[c[1], a[1]],
            [c[1], c[1]],
            [c[1], c[1]]]],
        ]]
  
        symbols               = matrix[0]
        descriptions          = matrix[1]

        mrow = [ -1, -2, -3 ].sample #[cur_row][cur_col][cur_arr][cur_sub] # for Int32
        mcol = [ -1, -2, -3 ].sample #[cur_row][cur_col][cur_arr][cur_sub] # for Int32
        marr = [ -1, -2, -3 ].sample #[cur_row][cur_col][cur_arr][cur_sub] # for Int32
        msub =     [ -1, -2 ].sample #[cur_row][cur_col][cur_arr][cur_sub] # for Int32

        row_options = [0, 1, 2]
        col_options = [0, 1, 2]
        arr_options = [0, 1, 2]
        sub_options = [0, 1]

        cur_row = row_options[mrow]
        cur_col = col_options[mcol]
        cur_arr = arr_options[msub]
        cur_sub = sub_options[msub]
  
        current_probability = 0.33 * 0.33 * 0.33 * 0.25
        current_label       = symbols[cur_row][cur_col][cur_arr][cur_sub]
        current_description = descriptions[cur_row][cur_col][cur_arr][cur_sub]
        current_information = %Q("#{current_label}", "#{current_description}")
  
        File.write("data/statistics/probability/current_probability.txt", "#{current_probability}")
        File.write("data/statistics/label/current_information.txt",            current_information)
        File.write("data/statistics/description/current_description.txt",      current_description)
        File.write("data/statistics/symbol/current_label.txt",                 current_label)
      end

      def self.hyper_statistics(a1, a2, b1, b2, c1, c2)
        a = [ a1, a2 ]
        b = [ b1, b2 ]
        c = [ c1, c2 ]
  
        d = Obelisk::NeuroSymbolic::BasicML.convert_to_piano_to_percent(generate_bounded_probability)

        matrix = [[
          [[[a[0], c[0]],
            [a[0], a[0]],
            [a[0], a[0]]],
     
           [[a[0], b[0]],
            [a[0], a[0]],
            [b[0], a[0]]],

           [[a[0], a[0]],
            [a[0], a[0]],
            [c[0], a[0]]]],

          [[[b[0], c[0]],
            [b[0], b[0]],
            [a[0], b[0]]],
    
           [[b[0], b[0]],
            [b[0], b[0]],
            [b[0], b[0]]],
    
           [[b[0], a[0]],
            [b[0], b[0]],
            [c[0], b[0]]]],

          [[[c[0], c[0]],
            [c[0], c[0]],
            [a[0], c[0]]],
    
           [[c[0], b[0]],
            [c[0], c[0]],
            [b[0], c[0]]],
    
           [[c[0], a[0]],
            [c[0], c[0]],
            [c[0], c[0]]]],
        ], [
          [[[a[1], c[1]],
            [a[1], a[1]],
            [a[1], a[1]]],
     
           [[a[1], b[1]],
            [a[1], a[1]],
            [b[1], a[1]]],
     
           [[a[1], a[1]],
            [a[1], a[1]],
            [c[1], a[1]]]],
     
          [[[b[1], c[1]],
            [b[1], b[1]],
            [a[1], b[1]]],
    
           [[b[1], b[1]],
            [b[1], b[1]],
            [b[1], b[1]]],
    
           [[b[1], a[1]],
            [b[1], b[1]],
            [c[1], b[1]]]],

          [[[c[1], c[1]],
            [c[1], c[1]],
            [a[1], c[1]]],
    
           [[c[1], b[1]],
            [c[1], c[1]],
            [b[1], c[1]]],
    
           [[c[1], a[1]],
            [c[1], c[1]],
            [c[1], c[1]]]],
        ]]
  
        symbols               = matrix[0]
        descriptions          = matrix[1]

        mrow = [ -1, -2, -3 ].sample #[cur_row][cur_col][cur_arr][cur_sub] # for Int32
        mcol = [ -1, -2, -3 ].sample #[cur_row][cur_col][cur_arr][cur_sub] # for Int32
        marr = [ -1, -2, -3 ].sample #[cur_row][cur_col][cur_arr][cur_sub] # for Int32
        msub =     [ -1, -2 ].sample #[cur_row][cur_col][cur_arr][cur_sub] # for Int32

        row_options = [0, 1, 2]
        col_options = [0, 1, 2]
        arr_options = [0, 1, 2]
        sub_options = [0, 1]

        cur_row = row_options[mrow]
        cur_col = col_options[mcol]
        cur_arr = arr_options[msub]
        cur_sub = sub_options[msub]
  
        current_probability = -0.33 * -0.33 * -0.33 * -0.25
        current_label       = symbols[cur_row][cur_col][cur_arr][cur_sub]
        current_description = descriptions[cur_row][cur_col][cur_arr][cur_sub]
        current_information = %Q("#{current_label}", "#{current_description}")
  
        File.write("data/statistics/probability/current_probability.txt", "#{current_probability}")
        File.write("data/statistics/label/current_information.txt",            current_information)
        File.write("data/statistics/description/current_description.txt",      current_description)
        File.write("data/statistics/symbol/current_label.txt",                 current_label)
      end
    end
  end
end

#################################################################################
#                                Predict Tethering                              #
#################################################################################
def scaffold_metrics(sh, sw, sd)
  [[[sh, sh, sh], [sh, sh, sw], [sh, sh, sd]],
   [[sw, sw, sh], [sw, sw, sw], [sw, sw, sd]],
   [[sd, sd, sh], [sd, sd, sw], [sd, sd, sd]]]
end

def rope_metrics(rl, rw, rt)
  [[[rl, rl, rl], [rl, rl, rw], [rl, rl, rt]],
   [[rw, rw, rl], [rw, rw, rw], [rw, rw, rt]],
   [[rt, rt, rl], [rt, rt, rw], [rt, rt, rt]]]
end


def gallows(*args)
  scaffold_height, scaffold_width, scaffold_depth,
  rope_length,     rope_width,     rope_tensil     = args

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

def guillotine(*args)
  scaffold_height,     scaffold_width, scaffold_depth,
  guillotine_height, guillotine_depth, blade_sharpness = args

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

  a = [a1, a2]
  b = [b1, b2]
  c = [c1, c2]

  counter_factuals = [[
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
  ]]

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
  predict_score       = 0.9 * rand(0.99)

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

  a = [a1, a2]
  b = [b1, b2]
  c = [c1, c2]

  counter_factuals = [[
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
  ]]

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
  predict_score       = probability(0.99)

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
  if radius.nil?
    puts "Erreur: Il y n'est un radius."
  else
    pi            = 3.14
    diameter      = 2 * radius
    circumference = pi * diameter

    [pi, radius, circumference]
  end
end

def calculate_depth(circumference, specified_length)
  if circumference.nil? || specified_length.nil?
    puts "Erreur: Il y n'est un value specifique."
  else
    circumference * specified_length
  end
end

def canon_actuelle(cradius, cdepth, catk)
  if cradius.nil?
    puts "Erreur: Il y n'est un info de le circumference."

    abort
  end

  if cdepth.nil?
    puts "Erreur: Il y n'est un info de le circumference depth."

    abort
  end

  if catk.nil?
    puts "Erreur: Il y n'est un info de le cirference atk."

    abort
  end

  canon_specs = [cradius, cdepth, catk]
end

def cnarrative(established_canon, counterfactual)
  if established_canon.nil?
    puts "Erreur: Il y n'est un info de le narrative official."

    abort
  end

  if counterfactual.nil?
    puts "Erreur: Il y n'est un info de le counternarrative."

    abort
  end

  canon_informatique = [established_canon, counterfactual]
end

def asoka(*args)
  canon_circumference, canon_depth, canon_power,
  established_canon, counterfactual = args

  if canon_circumference.nil? || canon_depth.nil? || canon_power.nil?
    puts "Erreur: Il y n'est un info de le canon."

    abort
  end

  if established_canon.nil? || counterfactual.nil?
    puts "Erreur: Il y n'est un info de le canon literaire."

    abort
  end

  [canon_actuelle(canon_circumference, canon_depth, canon_power), cnarrative(established_canon, counterfactual)]
end

#################################################################################
#                         Japanese Negative Constraints                         #
#################################################################################
def encrire(input)
  if input.nil?
    puts "Erreur: Il y n'est un mot ou parlance."

    abort
  end

  print input
end

def encrireln(input)
  if input.nil?
    puts "Erreur: Il y n'est un mot ou parlance."

    abort
  end

  puts input
end

def nai(fact_one, fact_two)
  if fact_one.nil?
    puts "Erreur: Il y n'est un [fact_one]."

    abort
  end

  if fact_one.nil?
    puts "Erreur: Il y n'est un [fact_two]."

    abort
  end

  encrireln("Nai [ #{fact_one} ] anata [ #{fact_two} ], ")

  [fact_one, fact_two]
end

def shikasa(fact_three)
  if fact_one.nil?
    puts "Erreur: Il y n'est un [fact_three]."

    abort
  end

  encrireln("shikashi #{fact_three}")

  fact_three
end

#### Ninhongo Parlez-Vous
def seibetsu(word_class)
  if word_class.nil?
    puts "Erreur: Il y n'est un lexical gender."

    abort
  end

  "#{word_class}"
end

def ejento(agent_name)
  if agent_name.nil?
    puts "Erreur: Il y n'est un nom de plume."

    abort
  end

  "#{agent_name}"
end

def keiyoshi(adjective)
  if agent_name.nil?
    puts "Erreur: Il y n'est un adjective."

    abort
  end

  "#{adjective}"
end

def shudai(subject)
  if agent_name.nil?
    puts "Erreur: Il y n'est un sujet."

    abort
  end

  "#{subject}"
end

def doshi(action)
  if agent_name.nil?
    puts "Erreur: Il y n'est un verb."

    abort
  end

  "#{action}"
end

def fukishi(adverb)
  if agent_name.nil?
    puts "Erreur: Il y n'est un verb qualifier."

    abort
  end

  "#{adverb}"
end

def nihongo(arg1, arg2, arg3, arg4, arg5, arg6)
  if arg1.nil? || arg2.nil? || arg3.nil? || arg4.nil? || arg5.nil? || arg6.nil?
    puts "Il y n'est un arg."

    abort
  end

  puts "#{arg1} #{arg2} #{arg3} #{arg4} #{arg5} #{arg6}"
end

#################################################################################
#                             Japanese Ternary Labels                           #
#################################################################################
## Japanese Contrastive
def sore(a, b)
  if a.nil?
    puts "Erreur: Il y n'est un [A]."

    abort
  end

  if b.nil?
    puts "Erreur: Il y n'est un [B]."

    abort
  end

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
  if a.nil?
    puts "Erreur: Il y n'est un [A]."

    abort
  end

  if b.nil?
    puts "Erreur: Il y n'est un [B]."

    abort
  end

  "Shikashi wa #{a} #{b}"
  
  shikashi = [ a, b ]

  #File.open("data/japanese/positive/shikashi_a.txt", "a") { |f|
  #  f.puts shikashi[0]
  #}

  #File.open("data/japanese/positive/shikashi_b.txt", "a") { |f|
  #  f.puts shikashi[1]
  #}
end

def matawa(a, b, c, d)
  if a.nil?
    puts "Erreur: Il y n'est un [A]."

    abort
  end

  if b.nil?
    puts "Erreur: Il y n'est un [B]."

    abort
  end

  if c.nil?
    puts "Erreur: Il y n'est un [C]."

    abort
  end

  if d.nil?
    puts "Erreur: Il y n'est un [D]."

    abort
  end

  "Matawa sora #{a} ni wa #{b} naishi #{c}, shikashi wa #{c}."

  matawa_nest = [ b, c ]
  matawa_est  = d

  #File.open("data/japanese/positive/matawa_nest_a.txt", "a") { |f|
  #  f.puts matawa_nest[0]
  #}

  #File.open("data/japanese/positive/matawa_nest_b.txt", "a") { |f|
  #  f.puts matawa_nest[1]
  #}
  
  #File.open("data/japanese/positive/matawa_est.txt", "a") { |f|
  #  f.puts shikashi
  #}
end

## Hanten-Ronri
def nisore(a, b)
  if a.nil?
    puts "Erreur: Il y n'est un [A]."

    abort
  end

  if b.nil?
    puts "Erreur: Il y n'est un [B]."

    abort
  end

  "Sono gyaku sora wa #{a} #{b}"
  
  nisore = [ a, b ]

  #File.open("data/japanese/negative/nisore_a.txt", "a") { |f|
  #  f.puts nisore[0]
  #}

  #File.open("data/japanese/negative/nisore_b.txt", "a") { |f|
  #  f.puts nisore[1]
  #}
end

def nishikashi(a, b)
  if a.nil?
    puts "Erreur: Il y n'est un [A]."

    abort
  end

  if b.nil?
    puts "Erreur: Il y n'est un [B]."

    abort
  end

  "Sono gyaku shikashi wa #{a} #{b}."

  nishikashi = [ a, b ]

  #File.open("data/japanese/negative/matawa_nest_a.txt", "a") { |f|
  #  f.puts nishikashi[0]
  #}

  #File.open("data/japanese/negative/matawa_nest_b.txt", "a") { |f|
  #  f.puts nishikashi[1]
  #}
end

def nimatawa(a, b, c, d)
  if a.nil?
    puts "Erreur: Il y n'est un [A]."

    abort
  end

  if b.nil?
    puts "Erreur: Il y n'est un [B]."

    abort
  end

  if c.nil?
    puts "Erreur: Il y n'est un [C]."

    abort
  end

  if d.nil?
    puts "Erreur: Il y n'est un [D]."

    abort
  end

  "Sono gyaku matawa sora #{a} wa #{b} naishi #{c}, shikashi wa #{d}"

  nimatawa_nest = [ b, c ]
  nimatawa_est  = d

  #File.open("data/japanese/negative/nimatawa_nest_a.txt", "a") { |f|
  #  f.puts nimatawa_nest[0]
  #}

  #File.open("data/japanese/negative/nimatawa_nest_b.txt", "a") { |f|
  #  f.puts nimatawa_nest[1]
  #}
  
  #File.open("data/japanese/negative/nimatawa_est.txt", "a") { |f|
  #  f.puts nimatawa_est
  #}
end

#################################################################################
#                           French Negative Constraints                         #
#################################################################################
def ne(first_noun, second_noun)
  if first_noun.nil?
    puts "Erreur: Il y n'est un noun de un."

    abort
  end

  if second_noun.nil?
    puts "Erreur: Il y n'est un deux."

    abort
  end

  puts "Non #{first_noun} ou #{second_noun}, "

  [first_noun, second_noun]
end

def mais(third_noun)
  if third_noun.nil?
    puts "Erreur: Il y n'est un noun de trois."

    abort
  end

  puts "mais cest #{third_noun}."

  third_noun
end

################################################################################################
#                                        French Actions                                        #
################################################################################################
def mange(a, b)
  if a.nil?
    puts "Erreur: Il y n'est un [A]."

    abort
  end

  if b.nil?
    puts "Erreur: Il y n'est un [B]."

    abort
  end

  "Mange un #{a} en #{b}."
end

def coupe(a, b)
  if a.nil?
    puts "Erreur: Il y n'est un [A]."

    abort
  end

  if b.nil?
    puts "Erreur: Il y n'est un [B]."

    abort
  end

  "Coupe un #{a} en #{b}."
end

def cuicre(a, b)
  if a.nil?
    puts "Erreur: Il y n'est un [A]."

    abort
  end

  if b.nil?
    puts "Erreur: Il y n'est un [B]."

    abort
  end

  "Cuicre un #{a} en #{b}."
end

def baguette(a, b)
  if a.nil?
    puts "Erreur: Il y n'est un [A]."

    abort
  end

  if b.nil?
    puts "Erreur: Il y n'est un [B]."

    abort
  end

  "Baguette un #{a} en #{b}."
end

def guillotine(verb, subject)
  if a.nil?
    puts "Erreur: Il y n'est un [A]."

    abort
  end

  if b.nil?
    puts "Erreur: Il y n'est un [B]."

    abort
  end

  "Guillotine #{verb} #{subject}."
end

def ax_head(verb, subject)
  if a.nil?
    puts "Erreur: Il y n'est un [A]."

    abort
  end

  if b.nil?
    puts "Erreur: Il y n'est un [B]."

    abort
  end

  "Tete Du Crescent #{verb} #{subject}."
end

def roboparle(verb, subject)
  if a.nil?
    puts "Erreur: Il y n'est un [A]."

    abort
  end

  if b.nil?
    puts "Erreur: Il y n'est un [B]."

    abort
  end

  "Le robo #{verb} #{subject}."
end

def parle_a_robo(object, subject, verb, your_name)
  "#{your_name}: #{subject} #{verb} #{object}"
end

#################################################################################
#                              Clothing Categorization                          #
#################################################################################
def bow_color(c)
  c = c.strip

  "Le colour de la archette est #{c}."
end

def bow_shape(s)
  s = s.strip

  "Le shape de la archette est #{s}."
end

def bow_size(w)
  w = w.strip

  "Le taille de la archette est #{w}."
end

def hairbows(color, shape, size)
  if color.nil? || shape.nil? || size.nil?
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

    Obelisk::DataRecycling.obelisk(%Q(cfs :color #{new_color} :shape #{new_shape} :size #{new_size}))

    File.open("scripts/hairbow_trivia.awa", "w") { |f|
      f.puts %Q{(cfs :color #{new_color} :shape #{new_shape} :size #{new_size})}
    }
  end

  encrireln(" ")
end

def c_color(s)
  s = s.strip

  "Le colour de la corsette est #{s}."
end

def c_shape(s)
  s = s.strip

  "Le shape de la corsette est #{s}."
end

def c_size(w)
  w = w.strip

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

    new_color = new_color.downcase.tr ".", ""
    new_color = new_color.downcase.tr " ", "_"

    new_shape = new_shape.downcase.tr ".", ""
    new_shape = new_shape.downcase.tr " ", "_"

    new_size = new_size.downcase.tr ".", ""
    new_size = new_size.downcase.tr " ", "_"

    Obelisk::DataRecycling.obelisk(%Q(cfs :color #{new_color} :shape #{new_shape} :size #{new_size}))

    File.open("scripts/corset_trivia.awa", "w") { |f|
      f.puts %Q{(cfs :color #{new_color} :shape #{new_shape} :size #{new_size})}
    }
  end

  encrireln(" ")
end

def s_color(s)
  s = s.strip

  "Le colour de le jupe est #{s}."
end

def s_shape(s)
  s = s.strip

  "Le shape de le jupe est #{s}."
end

def s_size(w)
  w = w.strip

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

    new_color = new_color.downcase.tr ".", ""
    new_color = new_color.downcase.tr " ", "_"

    new_shape = new_shape.downcase.tr ".", ""
    new_shape = new_shape.downcase.tr " ", "_"

    new_size = new_size.downcase.tr ".", ""
    new_size = new_size.downcase.tr " ", "_"

    Obelisk::DataRecycling.obelisk(%Q(cfs :color #{new_color} :shape #{new_shape} :size #{new_size}))

    File.open("scripts/skirt_trivia.awa", "w") { |f|
      f.puts %Q{(cfs :color #{new_color} :shape #{new_shape} :size #{new_size})}
    }
  end

  encrireln(" ")
end

def st_color(s)
  s = s.strip

  "Le colour de le bas est #{s}."
end

def st_shape(s)
  s = s.strip

  "Le shape de le bas est #{s}."
end

def st_size(w)
  w = w.strip

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

    new_color = new_color.downcase.tr ".", ""
    new_color = new_color.downcase.tr " ", "_"

    new_shape = new_shape.downcase.tr ".", ""
    new_shape = new_shape.downcase.tr " ", "_"

    new_size = new_size.downcase.tr ".", ""
    new_size = new_size.downcase.tr " ", "_"

    Obelisk::DataRecycling.obelisk(%Q(cfs :color #{new_color} :shape #{new_shape} :size #{new_size}))

    File.open("scripts/stocking_trivia.awa", "w") { |f|
      f.puts %Q{(cfs :color #{new_color} :shape #{new_shape} :size #{new_size})}
    }
  end

  encrireln(" ")
end

def sa_color(s)
  s = s.strip

  "Le colour de le sabots de bois est #{s}."
end

def sa_shape(s)
  s = s.strip

  "Le shape de le sabots de bois  est #{s}."
end

def sa_size(w)
  w = w.strip

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

    new_color = new_color.downcase.tr ".", ""
    new_color = new_color.downcase.tr " ", "_"

    new_shape = new_shape.downcase.tr ".", ""
    new_shape = new_shape.downcase.tr " ", "_"

    new_size = new_size.downcase.tr ".", ""
    new_size = new_size.downcase.tr " ", "_"

    Obelisk::DataRecycling.obelisk(%Q(cfs :color #{new_color} :shape #{new_shape} :size #{new_size}))

    File.open("scripts/clogs_trivia.awa", "w") { |f|
      f.puts %Q{(cfs :color #{new_color} :shape #{new_shape} :size #{new_size})}
    }
  end

  encrireln(" ")
end

#################################################################################
#                            Deso Yokesavonos Ilepoheto                         #
#################################################################################
def soap_color(color)
  color = color.strip

  "Cette savon est #{color}. "
end

def soap_scent(scent)
  scent = scent.strip

  "C'est aussi un parfum de #{scent}. "
end

def soap_oil(ov)
  ov = ov.strip

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

    Obelisk::DataRecycling.obelisk(%Q(cfs :color #{new_color} :scent #{new_scent} :oil_variety #{new_oil}))

    File.open("scripts/soap_trivia.awa", "w") { |f|
      f.puts %Q{(cfs :color #{new_color} :scent #{new_scent} :oil_variety #{new_oil}}
    }
  end

  encrireln(" ")
end

def chicken_gender(g)
  g = g.strip

  "Le poulet est un #{g}."
end

def chicken_size(s)
  s = s.strip

  "C'est aussi le taille #{s}."
end

def chicken_weight(w)
  w = w.strip

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
  v = v.strip

  "Le variete de gemme est #{v}."
end

def gemstone_size(s)
  s = s.strip

  "Le taille de gemme est #{s}."
end

def gemstone_weight(w)
  w = w.strip

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
  v = v.strip

  "Le variete de roche est #{v}."
end

def roche_shape(s)
  s = s.strip

  "Le shape de roche est #{s}."
end

def roche_size(s)
  s = s.strip

  "Le taille de roche est #{s}."
end

def roche_weight(w)
  w = w.strip

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
  v = v.strip

  "Le variete de le chat est #{v}."
end

def cat_color(s)
  s = s.strip

  "Le shape de le chat est #{s}."
end

def cat_size(s)
  s = s.strip

  "Le taille de le chat est #{s}."
end

def cat_weight(w)
  w = w.strip

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

def leaf_features(lc, ls, lw)
  if lc.nil? || ls.nil? || lw.nil?
    "Error: Lc, Ls, or Lw has not been defined.."
  else
    "# #{y} #{x} #{z}
(cfs :color #{lc} :size #{ls} :weight #{lw})"
  end
end

def glass_features(wc, ws, ww)
  if lc.nil? || ls.nil? || lw.nil?
    "Error: Wc, Ws, or Ww has not been defined.."
  else
    "# #{y} #{x} #{z}
(cfs :color #{wc} :size #{ws} :weight #{ww})"
  end
end

def verrefeuille(*args)
  leaf_color, leaf_size, leaf_weight,
  glass_color, glass_size, glass_weight = args

  datapoints = [leaf_featres(leaf_color, leaf_size, leaf_weight),
                glass_features(glass_color, glass_size, glass_weight)]

  puts datapoints

  Obelisk::DataRecycling.obelisk_scripts(datapoints[0])
  Obelisk::DataRecycling.obelisk_scripts(datapoints[1])
end

#################################################################################
#                        Experimental: Seasons Fragments                        #
#################################################################################
def spring(wg, ws, wa)
  if wg.nil? || ws.nil? || wa.nil?
    "Erreur: Les values de wg, ws, ou wa avour ne definis."

    abort
  else
    "(cfs :grain #{wg} :strength #{ws} :age #{wood_age})"
  end
end

def summer(aw, ah, ap)
  if aw.nil? || ah.nil? || ap.nil?
    "Erreur: Les values de aw, ah, ou ap avour ne definis."

    abort
  else
    "(cfs :wavelength #{aw} :height #{ah} :period #{ap})"
  end
end

def fall(dd, gf, gs)
  if dd.nil? || gf.nil? || gs.nil?
    "Erreur: Les values de dd, gf, ou gs avour ne definis."

    abort
  else
    "(cfs :dryness #{dd} :fineness #{gravel_fineness} :sparcity #{grass_sparcity})"
  end 
end

def winter(fw, fh, gp)
  if dd.nil? || gf.nil? || gs.nil?
    "Erreur: Les values de fw, fh, ou gp avour ne definis."

    abort
  else
    "(cfs :wavelength #{fw} :height #{fh} :period #{fp})"
  end 
end

def sfragment(*args)
  wood_grain, wood_strength, wood_age,
  fire_wavelength, fire_height, fire_period,
  dirt_dryness, gravel_fineness, grass_sparcity,
  air_wavelength, air_height, air_period = args

  seasonal_fragments = [spring(wood_grain, wood_strength, wood_age),
                        summer(fire_wavelength, fire_height, fire_period),
                        fall(dirt_dryness, gravel_fineness, grass_sparcity),
                        winter(air_wavelength, air_height, air_period)]

  print seasonal_fragments
  puts " "

  Obelisk::DataRecycling.obelisk_scripts(seasonal_fragments[0])
  Obelisk::DataRecycling.obelisk_scripts(seasonal_fragments[1])
  Obelisk::DataRecycling.obelisk_scripts(seasonal_fragments[2])
  Obelisk::DataRecycling.obelisk_scripts(seasonal_fragments[3])
end

#################################################################################
#                               Coordinate Actions                              #
#################################################################################
def cstate(perform_action, *kwargs)
  if perform_action.nil? || kwargs.nil?
    "Erreur: Il y n'est kwargs ou les actions values."

    abort
  else
    player_actions = kwargs

    player_actions[0][perform_action]
  end
end

def caction(a, b, c)
  if a.nil? || b.nil? || c.nil?
    "Erreur: Il y n'est a, b, ou c."

    abort
  else
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

    current_action  = cstate(next_action, {
      a => b,
      b => c,
      c => a,
    })

    # puts current_action
    Obelisk::DataRecycling.obelisk("Your current action is: #{current_action}.")
  end
end

#################################################################################
#                           Atoll Of Damnation Cemetary                         #
#################################################################################
# Atoll De Encaved Cimitiere - "Chemin De Hemetsu", Chemihemetsu. A sinking     #
# island that had once been larger that is known to sink faster in the center   #
# of the atoll. Urban legend has it it was used to enterre execution victims    #
# beheaded by the sword, with war prisoner corpses causing the island to        #
# gradually sink.                                                               #
#################################################################################
def wave_data(wl, wh, wp)
  if wl.nil? || wh.nil? || wp.nil?
    "Erreur: Il y n'est wl, wh, ou wp."

    abort
  else
    "The wave lasted for a length of #{period}, at a wave length of #{wavelength} at height of #{height}."
  end
end

def waterlight_data(ph, pd, ps)
  if ph.nil? || pd.nil? || ps.nil?
    "Erreur: Il y n'est wl, wh, ou wp."

    abort
  else
    "The waterlight has a pole hieght of #{pole_height}, a pole dpeth of #{pole_depth}, and a stability of #{pole_stability}."
  end
end

def raiteau(*args)
  wavelength, height, period,
  pole_height, pole_depth, pole_stability = args

  waterlight_info = [wave_data(wavelength, height, period), waterlight_data(pole_height, pole_depth, pole_stability)]

  Obelisk::DataRecycling.obelisk(waterlight_info[0])
  Obelisk::DataRecycling.obelisk(waterlight_info[1])
end

def cemetary_metrics(y, x)
  if ph.nil? || pd.nil? || ps.nil?
    "Erreur: Il y n'est y ou x."

    abort
  else
    y * x
  end
end

def cavern_metrics(y, x)
  if ph.nil? || pd.nil? || ps.nil?
    "Erreur: Il y n'est y ou x."

    abort
  else
    y * x
  end
end

def atoll(*args)
  cemetary_y, cemetary_x, cemetary_d,
  cavern_y, cavern_x, cavern_d = args

  cemetary_dance = ["Cemetary is #{cemetary_y} by #{cemetary_x} or #{cemetary_metrics(cemetary_y, cemetary_x)} at depth #{cemetary_d}",
                    "Cavern is #{cavern_y} by #{cavern_x} or #{cemetary_metrics(cavern_y, cavern_x)} at depth #{cavern_d}"]

  Obelisk::DataRecycling.obelisk(cemetary_dance[0])
  Obelisk::DataRecycling.obelisk(cemetary_dance[1])
end

def ground_radar(y, x, z, *kwargs)
  if y.nil? || x.nil? || z.nil? || kwargs.nil?
    "Erreur: Il y n'est y, x, z, ou kwargs."

    abort
  else
    features = kwargs

    size_limit = features.size
    index = 0

    size_limit.times do
      selected_feature = features[index]

      puts "#{selected_feature} at #{y} #{x} #{z}"

      Obelisk::DataRecycling.obelisk("#{selected_feature} at #{y} #{x} #{z}")

      index = index + 1
    end

    Obelisk::DataRecycling.scatter_ashes
  end
end

def measure_myth(*args)
  if args.nil?
    "Erreur: Il y n'est les values args."

    abort
  else
    a1, a2, b1, b2, c1, c2, search_space = args

    search_space = search_space.to_i

    search_space.times do
      counterfact_selection(a1, a2, b1, b2, c1, c2)

      dynamic_mode_switcher
    end

    caction("reality", "partially mythological", "mythological")
  end
end

def loup_de_foret(wolf_count, *kwargs)
  if wolf_count.nil? || kwargs.nil?
    "Erreur: Il y n'est les values wolf_count ou kwargs."

    abort
  else
    anomalous_features = kwargs

    size_limit = anomalous_features.size.to_i
    index = 0

    size_limit.times do
      current_anomaly = anomalous_features[index]

      new_iteration = current_anomaly.size
      new_index = 0

      new_iteration.times do
        puts "The precise wolf count should be #{wolf_count}. The current anomaly is that shouldn't be in this #{current_location} is #{current_anomaly[new_index]}"
 
        urn_logic = "The precise wolf count should be #{wolf_count}. The current anomaly is that shouldn't be in this #{current_location} is #{current_anomaly[new_index]}"

        Obelisk::DataRecycling.obelisk(urn_logic)

        new_index = new_index + 1
      end

      index = index + 1
    end

    Obelisk::DataRecycling.scatter_ashes
  end
end

def black_sheep(sheep_count, *kwargs)
  if sheep_count.nil? || kwargs.nil?
    "Erreur: Il y n'est les values sheep_count ou kwargs."

    abort
  else
    anomalous_features = kwargs

    size_limit = anomalous_features.size.to_i
    index = 0

    size_limit.times do
      current_anomaly = anomalous_features[index]

      new_iteration = current_anomaly.size
      new_index = 0

      new_iteration.times do
        puts "The precise sheep count should be #{sheep_count}. The current anomaly is that shouldn't be in this #{current_location} is #{current_anomaly[new_index]}"
 
        urn_logic = "The precise sheep count should be #{sheep_count}. The current anomaly is that shouldn't be in this #{current_location} is #{current_anomaly[new_index]}"

        Obelisk::DataRecycling.obelisk(urn_logic)

        new_index = new_index + 1
      end

      index = index + 1
    end

    Obelisk::DataRecycling.scatter_ashes
  end
end

def tree_count(tree_number, *kwargs)
  if tree_number.nil? || kwargs.nil?
    "Erreur: Il y n'est les values tree_number ou kwargs."

    abort
  else
    anomalous_features = kwargs

    size_limit = anomalous_features.size.to_i
    index = 0

    size_limit.times do
      current_anomaly = anomalous_features[index]

      new_iteration = current_anomaly.size
      new_index = 0

      new_iteration.times do
        puts "The precise tree count should be #{tree_number}. The current anomaly is that shouldn't be buried here is #{current_anomaly[new_index]}"
 
        urn_logic = "The precise tree count should be #{tree_number}. The current anomaly is that shouldn't be buried here is #{current_anomaly[new_index]}"

        Obelisk::DataRecycling.obelisk(urn_logic)

        new_index = new_index + 1
      end

      index = index + 1
    end

    Obelisk::DataRecycling.scatter_ashes
  end
end

################################################################################################
#                                Who What When Where Why How                                   #
################################################################################################
def self.nom(a)
  if a.nil?
    "Erreur: Il y n'est un value [A]"

    abort
  else
    "Mes nom est #{a}."
  end
end

def self.buttai(b)
  if b.nil?
    "Erreur: Il y n'est un value [B]"

    abort
  else
    "C'est un/une #{b}."
  end
end

def self.temps(c)
  if c.nil?
    "Erreur: Il y n'est un value [C]"

    abort
  else
    "Le temp est #{c}."
  end
end

def fukin(d)
  if d.nil?
    "Erreur: Il y n'est un value [d]"

    abort
  else
    "Je suis en le voisinage de #{d}."
  end
end

def self.motif(e)
  if e.nil?
    "Erreur: Il y n'est un value [e]"

    abort
  else
    "Mes raison pour ce est #{e}."
  end
end

def self.hono(f)
  if f.nil?
    "Erreur: Il y n'est un value [f]"

    abort
  else
    "Mois methode pour le fabrication mes objectifs est #{f}."
  end
end

def self.jiko(a, b, c)
  if a.nil? || b.nil? || c.nil?
    "Erreur: Il y n'est un value [a b c]"

    abort
  else
    "Vous avoir damande moi #{a} a propos #{b} par #{c}."
  end
end

## Unite specific people at a time and place
def self.unir(a, b, c)
  if a.nil? || b.nil? || c.nil?
    "Erreur: Il y n'est un value [a b c]"

    abort
  else
    "Je avoir unif avec #{a} avec #{b} a #{c}."
  end
end

def self.genkei(a)
  if a.nil?
    "Erreur: Il y n'est un value [a]"

    abort
  else
    "Je suis un etudiant a propos #{a}."
  end
end

def self.musee_comprime(a)
  if a.nil?
    "Erreur: Il y n'est un value [a]"

    abort
  else
    "Cette musee comprime #{a}."
  end
end

# That is a black expanse / remodel.
def self.noremodei(a)
  if a.nil?
    "Erreur: Il y n'est un value [a]"

    abort
  else
    "Cette #{a} est noermodeios."
  end
end

def self.ninom(a)
  if a.nil?
    "Erreur: Il y n'est un value [a]"

    abort
  else
    "Mes nom est ne #{a}."
  end
end

def self.nibuttai(b)
  if b.nil?
    "Erreur: Il y n'est un value [b]"

    abort
  else
    "C'est non un/une #{b}."
  end
end

def self.netemps(c)
  if c.nil?
    "Erreur: Il y n'est un value [c]"

    abort
  else
    "Le temp est ne #{c}."
  end
end

def self.nifukin(d)
  if d.nil?
    "Erreur: Il y n'est un value [d]"

    abort
  else
    "Je suis ne en le voisinage de #{d}."
  end
end

def self.nemotif(e)
  if e.nil?
    "Erreur: Il y n'est un value [e]"

    abort
  else
    "Mes raison pour ce est ne #{e}."
  end
end

def self.nihono(f)
  if f.nil?
    "Erreur: Il y n'est un value [f]"

    abort
  else
    "Mois methode pour le fabrication mes objectifs est ne #{f}."
  end
end

## Disunification
def self.neunir(a, b, c)
  if a.nil? || b.nil? || c.nil?
    "Erreur: Il y n'est un value [a b c]"

    abort
  else
    "Je ne avoir unif avec #{a} avec #{b} a #{c}."
  end
end

def self.nijiko(a, b, c)
  if a.nil? || b.nil? || c.nil?
    "Erreur: Il y n'est un value [a b c]"

    abort
  else
    "Vous ne avoir damande moi #{a} a propos #{b} par #{c}."
  end
end

def self.nigenkei(a)
  if a.nil?
    "Erreur: Il y n'est un value [a]"

    abort
  else
    "Je suis ne un etudiant a propos #{a}."
  end
end

#################################################################################
#                                  From Script                                  #
#################################################################################
def from_script
  file_name = ARGV[0]

  read_file = File.read_lines(file_name)

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
      parsed_tokens = [] of String
    
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
          stockings(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3])
        elsif parsed_tokens[0] == "sab"
          clogs(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3])
        elsif parsed_tokens[0] == "srg"
          soap_regions(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3])
        elsif parsed_tokens[0] == "pol"
          chicken_breed(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3])
        elsif parsed_tokens[0] == "pom"
          feed_chicken(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3])
        elsif parsed_tokens[0] == "rty"
          stone_type(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3], parsed_tokens[4])
        elsif parsed_tokens[0] == "cus"
          puts cursed_status(parsed_tokens[1], parsed_tokens[2])
        elsif parsed_tokens[0] == "ach"
          puts purchase_status(parsed_tokens[1], parsed_tokens[2])
        elsif parsed_tokens[0] == "ne"
          ne(parsed_tokens[1], parsed_tokens[2])
        elsif parsed_tokens[0] == "mais"
          mais(parsed_tokens[1])
        elsif parsed_tokens[0] == "gal"

          # Scaffold Size
          scaffold_height = parsed_tokens[1].to_i
          scaffold_width  = parsed_tokens[2].to_i
          scaffold_depth  = parsed_tokens[3].to_i

          # Rope Metrics
          rope_length     = parsed_tokens[3].to_i
          rope_width      = parsed_tokens[4].to_i
          rope_tensil     = parsed_tokens[5].to_i

          gallows(scaffold_height, scaffold_width, scaffold_depth,
                  rope_length,     rope_width,     rope_tensil)
        elsif parsed_tokens[0] == "mmy"
          puts measure_myth(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3], parsed_tokens[4], parsed_tokens[5], parsed_tokens[6], parsed_tokens[7])
        elsif parsed_tokens[0] == "tco3"
          tree_count(parsed_tokens[1].to_i, [parsed_tokens[2], parsed_tokens[3], parsed_tokens[4]])
        elsif parsed_tokens[0] == "tco4"
          tree_count(parsed_tokens[1].to_i, [parsed_tokens[2], parsed_tokens[3], parsed_tokens[4], parsed_tokens[5]])
        elsif parsed_tokens[0] == "tco5"
          tree_count(parsed_tokens[1].to_i, [parsed_tokens[2], parsed_tokens[3], parsed_tokens[4], parsed_tokens[5], parsed_tokens[6]])
        elsif parsed_tokens[0] == "tco6"
          tree_count(parsed_tokens[1].to_i, [parsed_tokens[2], parsed_tokens[3], parsed_tokens[4], parsed_tokens[5], parsed_tokens[6], parsed_tokens[7]])
        elsif parsed_tokens[0] == "tco7"
          tree_count(parsed_tokens[1].to_i, [parsed_tokens[2], parsed_tokens[3], parsed_tokens[4], parsed_tokens[5], parsed_tokens[6], parsed_tokens[7], parsed_tokens[8]])
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
  puts "Welcome to Nuerisupu compiled with Crystal on Linux"

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
    elsif dispatcher[0] == "ne"
      ne(dispatcher[1], dispatcher[2])
    elsif dispatcher[0] == "mais"
      mais(dispatcher[1])

    elsif dispatcher[0] == "tco3"
      tree_count(dispatcher[1].to_i, [dispatcher[2], dispatcher[3], dispatcher[4]])
    elsif dispatcher[0] == "tco4"
      tree_count(dispatcher[1].to_i, [dispatcher[2], dispatcher[3], dispatcher[4], dispatcher[5]])
    elsif dispatcher[0] == "tco5"
      tree_count(dispatcher[1].to_i, [dispatcher[2], dispatcher[3], dispatcher[4], dispatcher[5], dispatcher[6]])
    elsif dispatcher[0] == "tco6"
      tree_count(dispatcher[1].to_i, [dispatcher[2], dispatcher[3], dispatcher[4], dispatcher[5], dispatcher[6], dispatcher[7]])
    elsif dispatcher[0] == "tco7"
      tree_count(dispatcher[1].to_i, [dispatcher[2], dispatcher[3], dispatcher[4], dispatcher[5], dispatcher[6], dispatcher[7], dispatcher[8]])

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
    elsif dispatcher[0] == "cact"
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
