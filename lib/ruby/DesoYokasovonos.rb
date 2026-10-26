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

        matrix = [
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
        ]

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
          "I'm confident it is not [ #{current_information} ] as its only #{current_probability}."
        when 0.287225000000000001..0.522225000000000000
          "I'm less unconfident it is not [ #{current_information} ] as its only #{current_probability}."
        when 0.522225000000000001..0.756112500000000000
          "I'm almost sure it is [ #{current_information} ] because it has #{current_probability}."
        when 0.756112500000000001..0.999999999999999999
          "I'm sure it is [ #{current_information} ] after all it has #{current_probability}."

        else
          "The probability is either to low or to large, so I can't determine exactly."
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
          "I'm confident it is not [ #{current_information} ] as its only #{current_probability}."
        when 0.287225000000000001..0.522225000000000000
          "I'm less unconfident it is not [ #{current_information} ] as its only #{current_probability}."
        when 0.522225000000000001..0.756112500000000000
          "I'm almost sure it is [ #{current_information} ] because it has #{current_probability}."
        when 0.756112500000000001..0.999999999999999999
          "I'm sure it is [ #{current_information} ] after all it has #{current_probability}."

        else
          "The probability is either to low or to large, so I can't determine exactly."
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

        edges_cases = [
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
        ]
  
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
  
        d = convert_to_piano_to_percent(generate_bounded_probability)

        matrix = [
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
        ]
  
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
        current_information = "'#{current_label}', '#{current_description}'"
  
        File.write("data/statistics/probability/current_probability.txt", "#{current_probability}")
        File.write("data/statistics/label/current_information.txt",            current_information)
        File.write("data/statistics/description/current_description.txt",      current_description)
        File.write("data/statistics/symbol/current_label.txt",                 current_label)
      end

      def self.hyper_statistics(a1, a2, b1, b2, c1, c2)
        a = [ a1, a2 ]
        b = [ b1, b2 ]
        c = [ c1, c2 ]
  
        d = convert_to_piano_to_percent(generate_bounded_probability)

        matrix = [
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
        ]
  
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
        current_information = "'#{current_label}', '#{current_description}'"
  
        File.write("data/statistics/probability/current_probability.txt", "#{current_probability}")
        File.write("data/statistics/label/current_information.txt",            current_information)
        File.write("data/statistics/description/current_description.txt",      current_description)
        File.write("data/statistics/symbol/current_label.txt",                 current_label)
      end
    end
  end
end

module GameplayElements
  module Awasunu
    class BasicDSL
      def self.viola
        system("clear")
      end

      def self.ast(label, value)
        [ label, value ]
      end

      def self.atom(value)
        GameplayElements::Awasunu::BasicDSL.ast(value, "#{value}")
      end

      def self.encrire(input)
        puts input
      end

      def self.encrireln(input)
        print input
      end

      ## Name of interactive terminal.
      def self.documentation(title, description)
        GameplayElements::Awasunu::BasicDSL.encrireln("#{title} #{description}")
      end

      def self.sangehommage(prompt)
        print "#{prompt} "; action = gets.chomp # gets.not_nil!.chomp
      end

      def self.parle_merci(prompt, output)
        print "#{prompt} "; puts output
      end

      def self.objet(mot_genre, mot_specifique)
        "#{mot_genre} #{mot_specifique} "
      end

      def self.subjet(pronoun)
        "#{pronoun} "
      end

      def self.verb(action)
        "#{action}."
      end

      def self.osv(o, s, v)
        "#{o} #{s} #{v}"
      end

      def self.sov(s, o, v)
        "#{s} #{o} #{v}"
      end

      def self.expression(phrase_one, phrase_two)
        GameplayElements::Awasunu::BasicDSL.encrireln(%Q(["#{phrase_one}", "#{phrase_two}"]\n))
      end

      def self.parle_grammaire(v, o, s)
        GameplayElements::Awasunu::BasicDSL.encrireln("['#{v}', '#{o}','#{s}']")
      end

      def self.nihongotupelo(v, o, s)
        GameplayElements::Awasunu::BasicDSL.encrireln("['#{v}', '#{o}', '#{s}']")
      end

      ## Grammar
      def self.ne(first_noun, second_noun)
        GameplayElements::Awasunu::BasicDSL.encrire("Ne #{first_noun} ou #{second_noun}, ")
      end

      def self.mais(third_noun)
        GameplayElements::Awasunu::BasicDSL.encrireln("mais c'est #{third_noun}. ")
      end

      def self.cette(noun, adjective)
        GameplayElements::Awasunu::BasicDSL.encrireln("Cette #{noun} est #{adjective}.")
      end

      def self.maisette(noun, adjective)
        GameplayElements::Awasunu::BasicDSL.encrireln("Maisette #{noun} est #{adjective}.")
      end

      def self.sinon(noun, adj1, adj2, adj3)
        GameplayElements::Awasunu::BasicDSL.encrireln("Sinon #{noun} n'est #{adj1} ou #{adj2}, mais c'est #{adj3}.")
      end

      def self.parle(character_name, phrase)
        a = character_name
        b = phrase

        GameplayElements::Awasunu::BasicDSL.encrire(a)
        GameplayElements::Awasunu::BasicDSL.encrire(" ")
        GameplayElements::Awasunu::BasicDSL.encrireln(b)

        [a, b]
      end

      def bokette(phrase)
        sleep(1.5)
  
        GameplayElements::Awasunu::BasicDSL.encrireln(phrase)
      end

      def self.ouvert(a, b, c, d, e, g)
        File.open(a, "a") { |f|
          f.puts b
        }

        File.open(c, "a") { |f|
          f.puts d
        }

        File.open(e, "a") { |f|
          f.puts g
        }
      end
    end

    class ExtendedFeatures
      def self.queue(*args)
        size_limit = args.size.to_i
        index = 0
  
        reversed_list = args.reverse #.last

        size_limit.times do
          new_line = reversed_list[index]

          if new_line == reversed_list.last
            return new_line
          else
            print "Index [#{index}]: "
            puts new_line

            index = index + 1
          end
        end
      end

      def self.matrice(*args)
        a, b, c = args

        my_list = [
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

        mrow = [ -1, -2, -3 ].sample #[cur_row][cur_col][cur_arr][cur_sub] # for Int32
        mcol = [ -1, -2, -3 ].sample #[cur_row][cur_col][cur_arr][cur_sub] # for Int32
        marr = [ -1, -2, -3 ].sample #[cur_row][cur_col][cur_arr][cur_sub] # for Int32

        row_options = [0, 1, 2]
        col_options = [0, 1, 2]
        arr_options = [0, 1, 2]

        cur_row = row_options[mrow]
        cur_col = col_options[mcol]
        cur_arr = arr_options[marr]

        current_result = my_list[cur_row][cur_col][cur_arr]

        puts current_result
      end

      def vexpress(*args)
        array_name, v1, o1, s1, s2, o2, v2 = args
  
        File.open("#{array_name}.rb", "w") { |f|
          f.puts <<-EXPRESSION
          require "./src/Lhacurimosa"

          #{array_name} = ["#{v1}", "#{o1}", "#{s1}", "#{s2}", "#{o2}", "#{v2}"]
          EXPRESSION
    
          f.puts "new_index = ARGV[0].to_i"
          f.puts "#{array_name}[new_index])"
        }
      end
    end
  end

  module InputMechanics
    class Sangehommage
      def self.sangehommage(prompt)
        print "#{prompt} "; read_line = gets.not_nil!.chomp
      end

      def self.parle_merci(prompt, output)
        print "#{prompt} "; puts output
      end
    end
  end

  module NarrativeMechanics
    class NonLisp
      #######################################################################################
      #                                      Awasunu                                        #
      #######################################################################################
      # This handles basic string generation for the scripting language.                    #
      #######################################################################################      
      def self.encrire(input)
        print input
      end

      def self.encrireln(input)
        puts input
      end

      ## Name of interactive terminal.
      def self.documentation(title, description)
        "#{title} #{description}"
      end

      def self.objet(mot_genre, mot_specifique)
        "#{mot_genre} #{mot_specifique}"
      end

      def self.subjet(pronoun)
        "#{pronoun}"
      end

      def self.osv(o, s, v)
        "#{o} #{s} #{v}"
      end

      def self.sov(s, o, v)
        "#{s} #{o} #{v}"
      end

      def self.vos(v, o, s)
        "#{v} #{o} #{s}"
      end

      def self.wodesa(*args)
        o1, s1, v1, s2, o2, v2,
        v3, o3, s3, s4, o4, v4 = args

        a = osv(o1, s1, v1)
        b = sov(s2, o2, v2)
        c = vos(v3, o3, s3)
        d = sov(s4, o4, v4)

        %Q(#{a}, #{b}. #{c}, #{d})
      end
      
      def self.grammaire_clustre(*args)
        v1, o1, s1, s2, o2, v2,
        o3, s3, v3, s4, o4, v4 = args

        a = vos(v1, o1, s1)
        b = sov(s2, o2, v2)
        c = osv(o3, s3, v3)
        d = sov(s4, o4, v4)

        %Q(#{a}, #{b}. #{c}, #{d})
      end

      def self.expression(phrase_one, phrase_two)
        %Q(["#{phrase_one}", "#{phrase_two}"]\n)
      end

      def self.parle_grammaire(v, o, s)
        "['#{v}', '#{o}','#{s}']"
      end

      def self.nihongotupelo(v, o, s)
        "['#{v}', '#{o}', '#{s}']"
      end

      ## Grammar
      def self.ne(first_noun, second_noun)
        "Ne #{first_noun} ou #{second_noun}, "
      end

      def self.mais(third_noun)
        "mais c'est #{third_noun}. "
      end

      def self.cette(noun, adjective)
        "Cette #{noun} est #{adjective}."
      end

      def self.maisette(noun, adjective)
        "Maisette #{noun} est #{adjective}."
      end

      def self.sinon(noun, adj1, adj2, adj3)
        "Sinon #{noun} n'est #{adj1} ou #{adj2}, mais c'est #{adj3}."
      end

      def self.bokette(phrase)
        sleep(1.5)
  
        phrase
      end

      ################################################################################################
      #                                       Gameplay Elements                                      #
      ################################################################################################
      # This DSL gravitates to fairy tale like stories close to places like like dead civilizations  #
      # near black holes. With the dying remnants of the last surviving romance language related to  #
      # French and the Japanese language, with "Uncle Jack" a generic term for deceptively cheerful  #
      # bedtime material.                                                                            #
      #                                                                                              #
      # The main characters are often people executed when the story began with everything else      #
      # leading up to this point, suggesting a deeper connection in being guillotined in places      #
      # situated close to the epicenter of a black hole.                                             #
      ################################################################################################

      # Black Hole Expanse
      def self.ehonerudos(a, b)
        %Q(Anos ehonerudos #{a} est de #{b}.)
      end

      # Executioners scaffold
      def self.esvasvohudos(a, b)
        %Q(#{a} tombe en anos esvasvohudos a #{b}.)
      end

      # Oncle Hanzi as a generic label for fairy tales.
      def self.ojijaku(a, b)
        %Q(Anos ojijaku #{a} est cette payes de #{b}.)
      end

      ################################################################################################
      #                                            Biomes                                            #
      ################################################################################################
      # The parallel bootstrapper seemed to suggest that my constructed language naturally           #
      # gravitates either to Gobi desert like lands, or even snowy permafrost lands.                 #
      #                                                                                              #
      # More specifically it be situated in a dry lake bed in a jungle close to a desert similar to  #
      # the Gobi desert where the sands are  almost black in color.                                  #
      ################################################################################################
      ## Common Biomes

      # Gobi desert like landscape.
      def self.etigerunerudos(a, b)
        %Q(#{a} est en le paye de anos etigerunerudos en #{b}.)
      end

      # White lion lands of snow
      def self.ehinebehanecos(a, b)
        %Q(#{a} est en le paye de anos ehinebehanecos en #{b}.)
      end

      # Dry lake bed
      def self.ehocucehos(a, b)
        %Q(#{a} est en le paye de anu ehocucehos en #{b}.)
      end

      # Jungle biome
      def self.ebaxetos(a, b)
        %Q(#{a} est en le paye de anos ebaxetos en #{b}.)
      end

      ## Rare Biomes

      # Apple Tree Forest
      def self.egirafucerocodihu(a, b)
        %Q(#{a} est en le paye de anu egirafucerocodihu en #{b}.)
      end

      # Savannah Biomes.
      def self.egunogiyotinos(a, b)
        %Q(#{a} est en le paye de anos egunogiyotinos en #{b}.)
      end

      ################################################################################################
      #                                         Peaceful Mobs                                        #
      ################################################################################################
      # The most common peaceful mobs are giraffs, elephants, and villagers loosely based on white   #
      # and black Algerians.                                                                         #
      ################################################################################################
      # A is a giraff in B.
      def self.egirafu(a, b)
        %Q(#{a} est en un anu egirafu en #{b}.)
      end

      # A is a elephant in B.
      def self.ehepehanutu(a, b)
        %Q(#{a} est en un anu ehepehanutu en #{b}.)
      end

      # A is a black footed person in B.
      def self.nerudospeda(a, b)
        %Q(#{a} est en un anu nerudospeda de #{b}.)
      end

      # A is a fish in B.
      def self.perachinu(a, b)
        %Q(#{a} est en un anu perachinu en #{b}.)
      end

      # A is a sheep in B.
      def self.motonos(a, b)
        %Q(#{a} est en un anos motonos en #{b}.)
      end

      ################################################################################################
      #                                        Ambiguous Mobs                                        #
      ################################################################################################
      # These mobs are relatively rare in the context of French colonialism historically, and tended #
      # to happen more in American French colonies like Haiti and Guyanna if someone is mixed.       #
      # However every now and then you will encounter red headed girls, with paler skin.             #
      ################################################################################################

      # A is an red head of B.
      def self.erudutete(a, b)
        %Q(#{a} est en un ana erudutete de #{b}.)
      end

      # A is a wolf in B.
      def self.lupos(a, b)
        %Q(#{a} est en un anos lupos en #{b}.)
      end

      # A is an mouse in B.
      def self.sorisos(a, b)
        %Q(#{a} est en un anos sorisos en #{b}.)
      end
      # A is an chicken in B.
      def self.poletos(a, b)
        %Q(#{a} est en un anos poletos en #{b}.)
      end

      ################################################################################################
      #                                      Encountered Monsters                                    #
      ################################################################################################

      # Lion nationality
      def self.ehine(a, b)
        %Q(#{a} est un anos ehine pour #{b}.)
      end

      # Tiger nationality
      def self.etigeru(a, b)
        %Q(#{a} est un anos etigeru pour #{b}.)
      end

      # A is a crocodile in B.
      def self.ecerocodihu(a, b)
        %Q(#{a} est en un anu ecerocodihu en #{b}.)
      end

      # A is a black uniformed bayonette wielder in B.
      def self.ebaxetonerudos(a, b)
        %Q(#{a} est en un anos ebaxetonerudos en #{b}.)
      end

      ## Specific Dungeon Crawling

      # A is a gobelin in B.\
      def self.gobehinos(a, b)
        %Q(#{a} est en un anos gobehinos en #{b}.)
      end

      ################################################################################################
      #                                          General Outfit                                      #
      ################################################################################################
      # The design aesthetic for women in this time period gravitates to giant hairbows ( like the   #
      # Alsatian ), corsettes, white stockings, and whole foot wooden shoes.                         #
      #                                                                                              #
      # In Lhacurimosa its represented as clothes gradually wearing out, not being easily replaced   #
      # when they're damaged. Suggested something more suited for dungeon crawling.                  #
      ################################################################################################

      ## Recursive Garments
      def self.aruxetos(a, b)
        %Q(Cette archette #{a} est de #{b}.)
      end

      def self.hairbow(a, b, hairbow_output)
        "#{a} is wearing #{b} on her head."

        File.open("#{hairbow_output}.awa", "w") {
          f.puts "#{a} #{b} #{hairbow_output}"
        }
      end

      def self.coresetosunos(a, b)
        %Q(Cette corsette #{a} est de #{b}.)
      end

      def self.corset(a, b, corset_output)
        "#{a} is wearing #{b} on her head."

        File.open("#{corset_output}.awa", "w") {
          f.puts "#{a} #{b} #{corset_output}"
        }
      end     

      def self.jupecabinemotonese(a, b)
        %Q(Cette jupe de les chiennes #{a} est de #{b}.)
      end

      def self.cabin_skirt(a, b, skirt_output)
        "#{a} is wearing #{b} on her bottom."

        File.open("#{skirt_output}.awa", "w") {
          f.puts "#{a} #{b} #{skirt_output}"
        }
      end

      def self.basumoton(a, b)
        %Q(Anos basumotonos #{a} est de #{b}.)
      end

      def self.wool_stockings(a, b, stocking_output)
        "#{a} is wearing #{b} on her feet."

        File.open("#{stocking_output}.awa", "w") {
          f.puts "#{a} #{b} #{stocking_output}"
        }
      end

      def self.basumotonerudos(a, b)
        %Q(Anos basumotonerudos #{a} est de #{b}.)
      end

      def black_stockings(a, b, bstocking_output)
        "#{a} is wearing #{b} on her feet."

        File.open("#{bstocking_output}.awa", "w") {
          f.puts "#{a} #{b} #{bstocking_output}"
        }
      end

      def self.sfabotarokos(a, b)
        %Q(Anos sfabotarokos de #{a} est de #{b}.)
      end

      def self.wooden_sabots(a, b, sabot_output)
        "#{a} is wearing #{b} on her feet."

        File.open("#{sabot_output}.awa", "w") {
          f.puts "#{a} #{b} #{sabot_output}"
        }
      end

      ################################################################################################
      #                                  Weaponry And Cursed Items                                   #
      ################################################################################################
      # This defines the DSL for giving recipients cursed items, such as when they reach specific    #
      # locations in the Roguelike.                                                                  #
      #                                                                                              #
      # Traditionally weapon, lamp, and knob smith were considered unclean professions, usually done #
      # as a public service when released from colonial prisons. Lamps in particular were the least  #
      # clean do them being crafted large enough to function as solitary confinement. This meant     #
      # that being able to control the power of a lamp carried connations that don't typically exist #
      # in either Japanese or French culture.                                                        #
      #                                                                                              #
      # Do to the types of animals picked for making soap, more generally the connation of being     #
      # washed with that rather than herbal soap, meant the term soap itself being a perjorative for #
      # those obsessed more by appearances than being authentic. That's not to say people didn't     #
      # clean, but that some soaps were seen as marked with blood.                                   #
      ################################################################################################
      # Cursed weapon smith
      def self.kurosumisu(cursed_weapon, recipient)
        "#{recipient} avoir un #{cursed_weapon} par anu kurosumisu."
      end

      # Cursed lamp smith
      def self.coperasumisu(cursed_lamp, recipient)
        "#{recipient} avoir un #{cursed_lamp} par anu coperasumisu."
      end

      # Cursed knob smith
      def self.burasusumisu(crafted_knob, recipient)
        "#{recipient} avoir un #{crafted_knob} par anu burasusumisu."
      end

      ## Soap From Meat, ala "Ivory Soap"
      def self.vanedesopu(cursed_meat, recipient)
        "#{recipient} avoir un #{cursed_meat} par anu vanedesopu."
      end

      ## Soap from Herbs "Herbal Soap"
      def self.erobalisusopa(cursed_herb, recipient)
        "#{recipient} avoir un #{cursed_herb} par ana erobalisusopa."
      end

      ## Soap from books "Whitewashed books"
      def self.iverisopa(cursed_book, recipient)
        "#{recipient} avoir un #{cursed_book} par ana iverisopa."
      end

      ################################################################################################
      #                                         Dream Logic                                          #
      ################################################################################################
      # These are functions specifically in reference to dream patterns I've had when studying my    #
      # my own subconscious. A clever analyst will notice that dream symbols also frequently overlap #
      # with folklore symbols. The difference here is that dream symbols are treated as explicit     #
      # anomalies in order to assess what the unincorporated shadow is.                              #
      ################################################################################################
      def self.argue_purpose(a, b, c)
        %Q(#{a} has elements of #{b}, but #{c} is primarily composed of #{b}.)
      end

      def self.basement_ghost(a, b, c)
        %Q(#{a} checks on noise in #{b}, and invited to dinner by #{c}. Don't eat #{c}'s food or you'll never leave #{b}.)
      end

      def self.bedroom_coffee_maker(a, b)
        %Q(#{a} is a room in the #{b}.)
      end

      def self.deer_attack(a, b)
        %Q(Deer #{a} attack specimen #{b} as a unit of multiple deer, before #{b} wakes up.)
      end

      def self.explore_bedroom(a)
        %Q(#{a} explores the current bedroom.)
      end

      def self.goat_ride_salamander(a, b, c, d)
        %Q(#{a} rides #{b} causing the end of the world, survived by #{c}. #{a} is theorized to eat lifestock, and is unknown whether to target #{d}.)
      end

      def self.greenhouse_path(a, b)
        %Q(#{a} is in the greenhouse of #{b}.)
      end

      def self.innocent_hour(a)
        %Q(#{a} currently in the hour of innocense, and has tiny horns.)
      end

      def self.terror_hour(a)
        %Q(#{a} currently in the hour of terror, and has long horns.)
      end

      def self.is_haunted(a, b, c)
        %Q(#{a} thinks #{c} is haunted, but not #{b}.)
      end

      def self.local_reality_zone(a, b, y1, x1, y2, x2)
        %Q(#{a} is a local reality zone of #{b}, with #{a} having a local y of #{y1} and x of #{x1}. But #{b} itself only has a y of #{y2} and an x of #{x2}.)
      end

      def self.specify_reality_zone(a, b, c)
        %Q(#{a}, therefore {b} giving it the #{c} classification.)
      end

      def self.non_euclid(a, b)
        %Q(You can fit #{a} inside of #{b} because its exact dimensions aren't defined.)
      end

      def self.spot_rainbow_elephant(a, b)
        %Q(#{a} is featured in #{b} is a rainbow elephant.)
      end

      def self.non_uniform_anomaly(a, b, c, d, e, f)
        %Q(You can fit #{a} inside of #{b} although top floors y is #{c}, and the top floors x is #{d}. The bottom floor is y of #{e} and x of #{f}.)
      end

      def self.plant_evidence(a, b, c)
        %Q(#{a} murders student #{c}, telling #{b} they framed them for their murder.)
      end

      def self.plant_tree(a, b)
        %Q(Tree #{a} is planted on plot in #{b}.)
      end

      def self.poupee_sassoir(a)
        %Q(Je avoir s'assoir en le chaise a #{a}.)
      end

      def self.nepoupee_sassoir(a)
        %Q(Je ne avoir s'assoir en le chaise a #{a}.)
      end

      def self.ravenauka(a, b)
        %Q(#{a} is chased off to the nevermore of #{b} by a demonic raven.)
      end

      def self.sabofensu(a)
        %Q(Moi ne avoir un avis de: #{a})
      end

      def self.squirrel_dog_beetle(a)
        %Q(#{a} whom looks like a mix of a squirrel, mangi dog, and beetle.)
      end

      def self.talk_to_tree(a, b)
        %Q(#{a} chats with tree #{b} about its day.)
      end

      def self.tree_yard(a, b, c)
        %Q(#{a} #{b} #{c})
      end

      def self.try_on_shoes(a, b)
        %Q(#{a} tries on shoes #{b}.)
      end

      def self.twirl_baton(a, b)
        %Q(#{a} twirls #{b} like a baton.)
      end

      def self.wander_halls(a, b, c)
        %Q(#{a} wanders from #{b} to #{c}.)
      end

      # That impression of #{a} that has wapred into a black expanse.
      def self.ninoremodei(a)
        "Cette #{a} est anos ninoermodeios."
      end

      # forme de gravite
      def self.graviteformee(a, b)
        "Le #{a} es uni avec #{b}: #{a}#{b}"
      end

      def self.negraviteformee(a, b)
        "Le #{a} es ne uni avec #{b}: #{a}#{b}"
      end

      ## Turns off the television
      def self.incongruisho(a, b, c)
        "The #{a} must be taken from #{b} and disposed of at #{c} and forgotten about."
      end

      def self.neincongruisho(a, b, c)
        "The impact of #{a} from the pattern of #{b} in the context of #{c}."
      end

      def self.ghost_upstairs(a, b)
        ghost_states = [
          [[false, false], [false, true]],
          [[true,  false], [true,  true]],
        ]

        row_options = [0, 1]
        col_options = [0, 1]
        arr_options = [0, 1]
  
        cur_row = row_options.sample
        cur_col = col_options.sample
        cur_arr = arr_options.sample
  
        current_ghost = ghost_states[cur_row][cur_col][cur_arr]
  
        %Q(#{a} is the middle management of #{b}, that has two floors above #{b}, one below the surface floor: #{current_ghost})
      end

      ############################################################################################################
      #                                            Maisettemurale                                                #
      ############################################################################################################
      # These commands are for analyzing murals on walls in different parts of the game world.                   #
      ############################################################################################################
      # Analyze painting or mural
      def self.muralebunseki(a, b)
        "Vous avoir analyse #{a} en repos en #{b}."
      end

      # Painter Salutations
      # Salut and Gaka, or salute the painter, or specifically their painting.
      def self.salugaka(a, b)
        "Vous avoir salute #{a} en photo de #{b}."
      end

      ### House Type Validation
      #def self.quoi_est_le_poupee(cette, maisette, sinon) # Quposa
      #  c = cette("poupee", "victorienne")
      #  d = maisette("poupee", "barbie")
      #  e = sinon("poupee", "victorienne", "barbie", "blyth")

      #  "Est le poupee avoir un seance en house victorienne? #{c} #{d} #{e}"
      #end

      ## Haunted Doll Name Validation
      def self.est_nom_fausse(a, b, c, d) # esenomefasamu
        nom_de_plumes = [
          [[a, a, a], [a, a, b], [a, a, c]],
          [[b, b, s], [b, b, b], [b, b, c]],
          [[c, c, a], [c, c, b], [c, c, c]],
        ]
  
        row_options = [0, 1, 2]
        col_options = [0, 1, 2]
        arr_options = [0, 1, 2]
  
        cur_row = row_options.sample
        cur_col = col_options.sample
        cur_arr = arr_options.sample
  
        new_name = nom_de_plumes[cur_row][cur_col][cur_arr]

        if new_name == d
          "Checking if that Dolly's name might be fake: #{ner_name}. All thing accorded..."   
        else
          "Checking if that Dolly's name might be fake: #{ner_name}. This name seems to be not legitimate."
        end
      end

      ################################################################################################
      #                                Who What When Where Why How                                   #
      ################################################################################################
      #
      ################################################################################################
      def self.nom(a)
        "Mes nom est #{a}."
      end

      def self.buttai(b)
        "C'est un/une #{b}."
      end

      def self.temps(c)
        "Le temp est #{c}."
      end

      def self.fukin(d)
        "Je suis en le voisinage de #{d}."
      end

      def self.motif(e)
        "Mes raison pour ce est #{e}."
      end

      def self.hono(f)
        "Mois methode pour le fabrication mes objectifs est #{f}."
      end

      def self.jiko(a, b, c)
        "Vous avoir damande moi #{a} a propos #{b} par #{c}."
      end

      ## Unite specific people at a time and place
      def self.unir(a, b, c)
        "Je avoir unif avec #{a} avec #{b} a #{c}."
      end

      def self.genkei(a)
        "Je suis un etudiant a propos #{a}."
      end

      def self.musee_comprime(a)
        "cette musee comprime #{a}."
      end

      def self.noremodei(a)
        "Cette #{a} est noermodeios."
      end

      def self.ninom(a)
        "Mes nom est ne #{a}."
      end

      def self.nibuttai(b)
        "C'est non un/une #{b}."
      end

      def self.netemps(c)
        "Le temp est ne #{c}."
      end

      def self.nifukin(d)
        "Je suis ne en le voisinage de #{d}."
      end

      def self.nemotif(e)
        "Mes raison pour ce est ne #{e}."
      end

      def self.nihono(f)
        "Mois methode pour le fabrication mes objectifs est ne #{f}."
      end

      ## Disunification
      def self.neunir(a, b, c)
        "Je ne avoir unif avec #{a} avec #{b} a #{c}."
      end

      def self.nijiko(a, b, c)
        "Vous ne avoir damande moi #{a} a propos #{b} par #{c}."
      end

      def self.nigenkei(a)
        "Je suis ne un etudiant a propos #{a}."
      end

      #################################################################################################################
      #                                           Maisette De Relatif                                                 #
      #################################################################################################################
      # This section for analyzing the relationship between individuals and their relative assessment how likely they #
      # are to be estranged from each other, or distance do to some other issue.                                      #
      #################################################################################################################
      ## equation de reduction
      def self.reduce_equation(a, b, c)
        "The equation of #{a}, can be reduced down to #{b} and #{c}."
      end

      ## which_stopped_talking / qui_a_surpasse_les_conversations
      def self.qusurp(a, b)
        "Do #{a} stop talking before #{b}, or #{b} stop talking before #{a}>"
      end

      ## which_died_first?
      def self.qui_est_mort_en_premier(a, b)
        "Do #{a} die before #{b}, or #{b} before #{a}>"
      end

      ## which relative?
      def self.quel_relatif(a)
        "#{a}"
      end

      ## is_relative_estranged est relative eloigne
      def self.est_relative_eloigne(a, b, c)
        "Is the relative of #{a} estranged from #{b}?: #{c}"
      end

      ## is_relative_dead?
      def self.est_relativement_mort(a, b, c)
        "Did #{a} find out that the relative #{b} has died?: #{c}"
      end

      ## qui a surpassé les conversations / Who surpassed conversations?
      def self.qui_a_surpasse_les_conversations(a, b)
        "Did #{a} stop talking before #{b}, or #{b} stop talking before #{a}?"
      end

      ## qui est mort en premier
      def self.qui_est_mort_en_premier(a, b)
        "Did #{a} die before #{b}, or #{b} before #{a}?"
      end

      ## quel relatif
      def self.quel_relatif(a)
        "#{a}"
      end

      ## est relative eloigne
      def self.est_relative_eloigne(a, b, c)
        "Is the relative of #{a} estranged from #{b}?: #{c}"
      end

      ## est relativement mort? 
      def self.est_relativement_mort(a, b, c)
        "Did #{a} find out that the relative #{b} has died?: #{c}"
      end
    end
  end
end

##############################################################################################
#                           Masculine Honoric Vehicular Management                           #
##############################################################################################
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
      def self.moi(directive)
        "#{directive} moi."
      end

      def self.toi(directive)
        "#{directive} toi."
      end

      def self.ils(directive)
        "#{directive} ils."
      end

      def self.elles(directive)
        "#{directive} elles."
      end

      def self.noi(directive)
        "#{directive} noi."
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
      end
    end
  end

  module SamuAwasunu
    class Mperiod
      #######################################################################################
      #                                    Medusahoseki                                     #
      #######################################################################################
      def self.proximity_de_medusahoseki(a, b)
        maximum_distance     = b
        distance_probability = a
  
        calculation = maximum_distance - ( maximum_distance * distance_probability )
        calculation = calculation.round
  
        "Distance from Medusahoseki ( Medusa Gem ): #{calculation}"
      end

      def self.proximity_de_nemedusahoseki(a, b)
        maximum_distance     = b
        distance_probability = 1 - a
  
        calculation = maximum_distance - ( maximum_distance * distance_probability )
        calculation = calculation.round
  
        "Distance from Nemedusahoseki ( Salamander Riding Goat ): #{calculation}"
      end

      def self.proximity_de_memorie(a)
        year_period = 12
  
        calculation = 12 - ( 12 * a )
        calculation = calculation.round
  
        "This memory was from a prior #{calculation} year period"
      end

      def self.mperiod_sprox(a, b)
        "#{a} #{b.upcase}"
      end

      ################################################################################################
      #                                         Use Case                                             #
      ################################################################################################
      # Suppose two people wanted to cover up two dead bodies: one is the dead girlfriend of the     #
      # main character, the other is the brother whom murdered the girlfriends brother having        #
      # placing his unconscious body in a rail road, so blood isn't on his hands.                    #
      #                                                                                              #
      # This aims to solve how you investigate a case where the reality of one victim is not         #
      # and one of the victims doesn't actually exist. The other is not murdered directly by the     #
      # perpetrator.                                                                                 #
      ################################################################################################
      def self.first_murder(victim_name, victim_method, case_status, victim_real)
        "#{victim_name}, #{victim_method}, #{case_status}] REALITY: #{victim_real}"
      end
  
      def self.second_murder(victim_name, victim_method, case_status, victim_real)
        "#{victim_name}, #{victim_method}, #{case_status}] REALITY: #{victim_real}"
      end
	
      def self.investigate_case(a1, a2, b1, b2, c1, c2)
        2.times do
          Obelisk::NeuroSymbolic::BasicML.get_statistics(a1, a2,
                                                         b1, b2,
                                                         c1, c2)
      
          Obelisk::NeuroSymbolic::BasicML.dynamic_mode_switcher

          current_probability = File.read("data/statistics/probability/current_probability.txt").to_f
          current_information = File.read("data/statistics/label/current_information.txt")

          puts "#{current_information} #{current_probability}"
        end
      end

      ########################################################################################
      #                         Fueporu Et Perimetre De La Caverne                           #
      ########################################################################################
      # Evaluating the descrepancy between the height of the firepole and the height of the  #
      # building to determine how much of the firepole in fact goes underground, and analyze #
      # the cavern perimeter.                                                                #
      ########################################################################################
      def self.fueporu(location_x, location_y, location_z, height_drop)
        location_x  = location_x.to_i
        location_y  = location_y.to_i
        location_z  = location_z.to_i
        height_drop = height_drop.to_i

        average_height       = 20
  
        if    height_drop > average_height
          percentage = average_height / height_drop
  
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Average height is #{percentage} of height drop at #{height_drop} feet.' ],"
        elsif height_drop < average_height
          percentage = height_drop / average_height

          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop is #{percentage} percentage of average height in #{average_height} feet' ],"
        else
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop and Average Height is of the same height.' ],"
        end
      end

      # fagyka'u grana [ firepole ]
      def self.fuegrana(location_x, location_y, location_z, height_drop)
        location_x  = location_x.to_i
        location_y  = location_y.to_i
        location_z  = location_z.to_i
        height_drop = height_drop.to_i

        average_height       = 20
  
        if    height_drop > average_height
          percentage = average_height / height_drop
  
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Average height is #{percentage} of height drop at #{height_drop} feet.' ],"
        elsif height_drop < average_height
          percentage = height_drop / average_height

          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop is #{percentage} percentage of average height in #{average_height} feet' ],"
        else
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop and Average Height is of the same height.' ],"
        end
      end

      def self.cavern_perimeter(pole_size, building_height)
        if pole_size > building_height
          under_layer = building_height - pole_size

          "From the main floor, the fire pole is #{under_layer} feet underground."
        else
          "The size of the fire pole fits within the size of the building."
        end
      end
    end
  end

  module RankDialogue
    class SamuDialogue
      ## Theoretical, such as if someone became a diety.
      def self.subterfuge(clause_one, clause_two)
        "#{clause_one}, #{clause_two}."
      end

      def self.underling(clause_one, clause_two)
        "#{clause_one}, #{clause_two}."
      end

      def self.vos(verb, object, subject)
        "#{verb} #{object} #{subject}"
      end

      def self.osv(object, subject, verb)
        "#{object} #{subject} #{verb}"
      end

      def self.ovs(object, verb, subject)
        "#{object} #{verb} #{subject}"
      end

      def self.sov(subject, object, verb)
        "#{subject} #{object} #{verb}"
      end
    end
  end

  module BodyArmor
    class Cockpit
      def self.board_wheelchair(agent_name, robot_color)
        "#{agent_name} boards the chair of the cockpit that is color #{robot_color}."
      end

      def self.shoot_guillotine_blade(enemy_name, guilotine_color)
        "#{enemy_name} is shot with the guillotine blade that is colored #{guilotine_color}."
      end

      ## Domestic Tasks
      def self.deliver_coffee(customer)
        "Coffee is delivered to #{customer}."
      end

      def self.deliver_package(package_name, customer)
        "#{package_name} delivered to #{customer}."
      end

      def self.analyze_coordinates(y, z, agent_name)
        "Agent name is location on Y #{y} and X #{x}"
      end
    end

    class Breaks
      def self.drink_coffee(agent_name, coffee_variety, flavor_notes)
        "#{agent_name} drinks coffee from #{coffee_variety}. The flavor is #{flavor_notes}"
      end

      def self.eat_food(agent_name, food_name)
        "#{agent_name} eats #{food_name}."
      end

      def self.try_on_shoes(agent_name, footwear_name, footwear_color)
        "#{agent_name} window shops for #{footwear_name} of color #{footwear_color}."
      end
    end
  end

  module Region
    class UndergroundCity
      def self.battle(insurgent_name)
        puts "Le homme / femme #{insurgent_name} est en le batailles."
      end
    end

    class Prison
      def self.guillotine(executee)
        puts "Le homme / femme #{executee} avoir ne tete pour le guillotine."
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
      def self.moi(directive)
        "#{directive} moi."
      end

      def self.toi(directive)
        "#{directive} toi."
      end

      def self.ils(directive)
        "#{directive} ils."
      end

      def self.elles(directive)
        "#{directive} elles."
      end

      def self.noi(directive)
        "#{directive} noi."
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
      end
    end
  end

  module GameDevElements
    class InputMechanics
      def self.sangehommage(prompt)
        print "#{prompt} "; read_line = gets.not_nil!.chomp
      end

      def self.parle_merci(prompt, output)
        print "#{prompt} "; puts output
      end
    end
  end

  module HikasaAwasunu
    class Mperiod
      #######################################################################################
      #                                    Medusahoseki                                     #
      #######################################################################################
      def self.proximity_de_medusahoseki(a, b)
        maximum_distance     = b
        distance_probability = a
  
        calculation = maximum_distance - ( maximum_distance * distance_probability )
        calculation = calculation.round
  
        "Distance from Medusahoseki ( Medusa Gem ): #{calculation}"
      end

      def self.proximity_de_nemedusahoseki(a, b)
        maximum_distance     = b
        distance_probability = 1 - a
  
        calculation = maximum_distance - ( maximum_distance * distance_probability )
        calculation = calculation.round
  
        "Distance from Nemedusahoseki ( Salamander Riding Goat ): #{calculation}"
      end

      def self.proximity_de_memorie(a)
        year_period = 12
  
        calculation = 12 - ( 12 * a )
        calculation = calculation.round
  
        "This memory was from a prior #{calculation} year period"
      end

      def self.mperiod_sprox(a, b)
        "#{a} #{b.upcase}"
      end

      ################################################################################################
      #                                         Use Case                                             #
      ################################################################################################
      # Suppose two people wanted to cover up two dead bodies: one is the dead girlfriend of the     #
      # main character, the other is the brother whom murdered the girlfriends brother having        #
      # placing his unconscious body in a rail road, so blood isn't on his hands.                    #
      #                                                                                              #
      # This aims to solve how you investigate a case where the reality of one victim is not         #
      # and one of the victims doesn't actually exist. The other is not murdered directly by the     #
      # perpetrator.                                                                                 #
      ################################################################################################
      def self.first_murder(victim_name, victim_method, case_status, victim_real)
        "#{victim_name}, #{victim_method}, #{case_status}] REALITY: #{victim_real}"
      end
  
      def self.second_murder(victim_name, victim_method, case_status, victim_real)
        "#{victim_name}, #{victim_method}, #{case_status}] REALITY: #{victim_real}"
      end
	
      def self.investigate_case(a1, a2, b1, b2, c1, c2)
        2.times do
          Obelisk::NeuroSymbolic::BasicML.get_statistics(a1, a2,
                                                        b1, b2,
                                                        c1, c2)
      
          Obelisk::NeuroSymbolic::BasicML.dynamic_mode_switcher

          current_probability = File.read("data/statistics/probability/current_probability.txt").to_f
          current_information = File.read("data/statistics/label/current_information.txt")

          puts "#{current_information} #{current_probability}"
        end
      end

      ########################################################################################
      #                         Fueporu Et Perimetre De La Caverne                           #
      ########################################################################################
      # Evaluating the descrepancy between the height of the firepole and the height of the  #
      # building to determine how much of the firepole in fact goes underground, and analyze #
      # the cavern perimeter.                                                                #
      ########################################################################################
      def self.fueporu(location_x, location_y, location_z, height_drop)
        location_x  = location_x.to_i
        location_y  = location_y.to_i
        location_z  = location_z.to_i
        height_drop = height_drop.to_i

        average_height       = 20
  
        if    height_drop > average_height
          percentage = average_height / height_drop
  
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Average height is #{percentage} of height drop at #{height_drop} feet.' ],"
        elsif height_drop < average_height
          percentage = height_drop / average_height

          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop is #{percentage} percentage of average height in #{average_height} feet' ],"
        else
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop and Average Height is of the same height.' ],"
        end
      end

      # fagyka'u grana [ firepole ]
      def self.fuegrana(location_x, location_y, location_z, height_drop)
        location_x  = location_x.to_i
        location_y  = location_y.to_i
        location_z  = location_z.to_i
        height_drop = height_drop.to_i

        average_height       = 20
  
        if    height_drop > average_height
          percentage = average_height / height_drop
  
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Average height is #{percentage} of height drop at #{height_drop} feet.' ],"
        elsif height_drop < average_height
          percentage = height_drop / average_height

          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop is #{percentage} percentage of average height in #{average_height} feet' ],"
        else
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop and Average Height is of the same height.' ],"
        end
      end

      def self.cavern_perimeter(pole_size, building_height)
        if pole_size > building_height
          under_layer = building_height - pole_size

          "From the main floor, the fire pole is #{under_layer} feet underground."
        else
          "The size of the fire pole fits within the size of the building."
        end
      end
    end
  end

  module RankDialogue
    class HikasuDialogue
      ## Theoretical, such as if someone became a diety.
      def self.subterfuge(clause_one, clause_two)
        "#{clause_one}, #{clause_two}."
      end

      def self.underling(clause_one, clause_two)
        "#{clause_one}, #{clause_two}."
      end

      def self.vos(verb, object, subject)
        "#{verb} #{object} #{subject}"
      end

      def self.osv(object, subject, verb)
        "#{object} #{subject} #{verb}"
      end

      def self.ovs(object, verb, subject)
        "#{object} #{verb} #{subject}"
      end

      def self.sov(subject, object, verb)
        "#{subject} #{object} #{verb}"
      end
    end
  end

  module BodyArmor
    class Cockpit
      def self.board_wheelchair(agent_name, robot_color)
        "#{agent_name} boards the chair of the cockpit that is color #{robot_color}."
      end

      def self.shoot_guillotine_blade(enemy_name, guilotine_color)
        "#{enemy_name} is shot with the guillotine blade that is colored #{guilotine_color}."
      end

      ## Domestic Tasks
      def self.deliver_coffee(customer)
        "Coffee is delivered to #{customer}."
      end

      def self.deliver_package(package_name, customer)
        "#{package_name} delivered to #{customer}."
      end

      def self.analyze_coordinates(y, z, agent_name)
        "Agent name is location on Y #{y} and X #{x}"
      end
    end

    class Breaks
      def self.drink_coffee(agent_name, coffee_variety, flavor_notes)
        "#{agent_name} drinks coffee from #{coffee_variety}. The flavor is #{flavor_notes}"
      end

      def self.eat_food(agent_name, food_name)
        "#{agent_name} eats #{food_name}."
      end

      def self.try_on_shoes(agent_name, footwear_name, footwear_color)
        "#{agent_name} window shops for #{footwear_name} of color #{footwear_color}."
      end
    end
  end

  module Region
    class UndergroundCity
      def self.battle(insurgent_name)
        puts "Le homme / femme #{insurgent_name} est en le batailles."
      end
    end

    class Prison
      def self.guillotine(executee)
        puts "Le homme / femme #{executee} avoir ne tete pour le guillotine."
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
      def self.moi(directive)
        "#{directive} moi."
      end

      def self.toi(directive)
        "#{directive} toi."
      end

      def self.ils(directive)
        "#{directive} ils."
      end

      def self.elles(directive)
        "#{directive} elles."
      end

      def self.noi(directive)
        "#{directive} noi."
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
      end
    end
  end

  module GameDevElements
    class InputMechanics
      def self.sangehommage(prompt)
        print "#{prompt} "; read_line = gets.not_nil!.chomp
      end

      def self.parle_merci(prompt, output)
        print "#{prompt} "; puts output
      end
    end
  end

  module HikasaAwasunu
    class Mperiod
      #######################################################################################
      #                                    Medusahoseki                                     #
      #######################################################################################
      def self.proximity_de_medusahoseki(a, b)
        maximum_distance     = b
        distance_probability = a
  
        calculation = maximum_distance - ( maximum_distance * distance_probability )
        calculation = calculation.round
  
        "Distance from Medusahoseki ( Medusa Gem ): #{calculation}"
      end

      def self.proximity_de_nemedusahoseki(a, b)
        maximum_distance     = b
        distance_probability = 1 - a
  
        calculation = maximum_distance - ( maximum_distance * distance_probability )
        calculation = calculation.round
  
        "Distance from Nemedusahoseki ( Salamander Riding Goat ): #{calculation}"
      end

      def self.proximity_de_memorie(a)
        year_period = 12
  
        calculation = 12 - ( 12 * a )
        calculation = calculation.round
  
        "This memory was from a prior #{calculation} year period"
      end

      def self.mperiod_sprox(a, b)
        "#{a} #{b.upcase}"
      end

      ################################################################################################
      #                                         Use Case                                             #
      ################################################################################################
      # Suppose two people wanted to cover up two dead bodies: one is the dead girlfriend of the     #
      # main character, the other is the brother whom murdered the girlfriends brother having        #
      # placing his unconscious body in a rail road, so blood isn't on his hands.                    #
      #                                                                                              #
      # This aims to solve how you investigate a case where the reality of one victim is not         #
      # and one of the victims doesn't actually exist. The other is not murdered directly by the     #
      # perpetrator.                                                                                 #
      ################################################################################################
      def self.first_murder(victim_name, victim_method, case_status, victim_real)
        "#{victim_name}, #{victim_method}, #{case_status}] REALITY: #{victim_real}"
      end
  
      def self.second_murder(victim_name, victim_method, case_status, victim_real)
        "#{victim_name}, #{victim_method}, #{case_status}] REALITY: #{victim_real}"
      end
	
      def self.investigate_case(a1, a2, b1, b2, c1, c2)
        2.times do
          Obelisk::NeuroSymbolic::BasicML.get_statistics(a1, a2,
                                                         b1, b2,
                                                        c1, c2)
      
          Obelisk::NeuroSymbolic::BasicML.dynamic_mode_switcher

          current_probability = File.read("data/statistics/probability/current_probability.txt").to_f
          current_information = File.read("data/statistics/label/current_information.txt")

          puts "#{current_information} #{current_probability}"
        end
      end

      ########################################################################################
      #                         Fueporu Et Perimetre De La Caverne                           #
      ########################################################################################
      # Evaluating the descrepancy between the height of the firepole and the height of the  #
      # building to determine how much of the firepole in fact goes underground, and analyze #
      # the cavern perimeter.                                                                #
      ########################################################################################
      def self.fueporu(location_x, location_y, location_z, height_drop)
        location_x  = location_x.to_i
        location_y  = location_y.to_i
        location_z  = location_z.to_i
        height_drop = height_drop.to_i

        average_height       = 20
  
        if    height_drop > average_height
          percentage = average_height / height_drop
  
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Average height is #{percentage} of height drop at #{height_drop} feet.' ],"
        elsif height_drop < average_height
          percentage = height_drop / average_height

          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop is #{percentage} percentage of average height in #{average_height} feet' ],"
        else
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop and Average Height is of the same height.' ],"
        end
      end

      # fagyka'u grana [ firepole ]
      def self.fuegrana(location_x, location_y, location_z, height_drop)
        location_x  = location_x.to_i
        location_y  = location_y.to_i
        location_z  = location_z.to_i
        height_drop = height_drop.to_i

        average_height       = 20
  
        if    height_drop > average_height
          percentage = average_height / height_drop
  
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Average height is #{percentage} of height drop at #{height_drop} feet.' ],"
        elsif height_drop < average_height
          percentage = height_drop / average_height

          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop is #{percentage} percentage of average height in #{average_height} feet' ],"
        else
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop and Average Height is of the same height.' ],"
        end
      end

      def self.cavern_perimeter(pole_size, building_height)
        if pole_size > building_height
          under_layer = building_height - pole_size

          "From the main floor, the fire pole is #{under_layer} feet underground."
        else
          "The size of the fire pole fits within the size of the building."
        end
      end
    end
  end

  module RankDialogue
    class SanuDialogue
      ## Theoretical, such as if someone became a diety.
      def self.subterfuge(clause_one, clause_two)
        "#{clause_one}, #{clause_two}."
      end

      def self.underling(clause_one, clause_two)
        "#{clause_one}, #{clause_two}."
      end

      def self.vos(verb, object, subject)
        "#{verb} #{object} #{subject}"
      end

      def self.osv(object, subject, verb)
        "#{object} #{subject} #{verb}"
      end

      def self.ovs(object, verb, subject)
        "#{object} #{verb} #{subject}"
      end

      def self.sov(subject, object, verb)
        "#{subject} #{object} #{verb}"
      end
    end
  end

  module BodyArmor
    class Cockpit
      def self.board_wheelchair(agent_name, robot_color)
        "#{agent_name} boards the chair of the cockpit that is color #{robot_color}."
      end

      def self.shoot_guillotine_blade(enemy_name, guilotine_color)
        "#{enemy_name} is shot with the guillotine blade that is colored #{guilotine_color}."
      end

      ## Domestic Tasks
      def self.deliver_coffee(customer)
        "Coffee is delivered to #{customer}."
      end

      def self.deliver_package(package_name, customer)
        "#{package_name} delivered to #{customer}."
      end

      def self.analyze_coordinates(y, z, agent_name)
        "Agent name is location on Y #{y} and X #{x}"
      end
    end

    class Breaks
      def self.drink_coffee(agent_name, coffee_variety, flavor_notes)
        "#{agent_name} drinks coffee from #{coffee_variety}. The flavor is #{flavor_notes}"
      end

      def self.eat_food(agent_name, food_name)
        "#{agent_name} eats #{food_name}."
      end

      def self.try_on_shoes(agent_name, footwear_name, footwear_color)
        "#{agent_name} window shops for #{footwear_name} of color #{footwear_color}."
      end
    end
  end

  module Region
    class UndergroundCity
      def self.battle(insurgent_name)
        puts "Le homme / femme #{insurgent_name} est en le batailles."
      end
    end

    class Prison
      def self.guillotine(executee)
        puts "Le homme / femme #{executee} avoir ne tete pour le guillotine."
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
        "#{directive} moi."
      end

      def self.toi(directive)
        "#{directive} toi."
      end

      def self.ils(directive)
        "#{directive} ils."
      end

      def self.elles(directive)
        "#{directive} elles."
      end

      def self.noi(directive)
        "#{directive} noi."
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
      end
    end
  end

  module GameDevElements
    class InputMechanics
      def self.sangehommage(prompt)
        print "#{prompt} "; read_line = gets.not_nil!.chomp
      end

      def self.parle_merci(prompt, output)
        print "#{prompt} "; puts output
      end
    end
  end

  module HikasaAwasunu
    class Mperiod
      #######################################################################################
      #                                    Medusahoseki                                     #
      #######################################################################################
      def self.proximity_de_medusahoseki(a, b)
        maximum_distance     = b
        distance_probability = a
  
        calculation = maximum_distance - ( maximum_distance * distance_probability )
        calculation = calculation.round
  
        "Distance from Medusahoseki ( Medusa Gem ): #{calculation}"
      end

      def self.proximity_de_nemedusahoseki(a, b)
        maximum_distance     = b
        distance_probability = 1 - a
  
        calculation = maximum_distance - ( maximum_distance * distance_probability )
        calculation = calculation.round
  
        "Distance from Nemedusahoseki ( Salamander Riding Goat ): #{calculation}"
      end

      def self.proximity_de_memorie(a)
        year_period = 12
  
        calculation = 12 - ( 12 * a )
        calculation = calculation.round
  
        "This memory was from a prior #{calculation} year period"
      end

      def self.mperiod_sprox(a, b)
        "#{a} #{b.upcase}"
      end

      ################################################################################################
      #                                         Use Case                                             #
      ################################################################################################
      # Suppose two people wanted to cover up two dead bodies: one is the dead girlfriend of the     #
      # main character, the other is the brother whom murdered the girlfriends brother having        #
      # placing his unconscious body in a rail road, so blood isn't on his hands.                    #
      #                                                                                              #
      # This aims to solve how you investigate a case where the reality of one victim is not         #
      # and one of the victims doesn't actually exist. The other is not murdered directly by the     #
      # perpetrator.                                                                                 #
      ################################################################################################
      def self.first_murder(victim_name, victim_method, case_status, victim_real)
        "#{victim_name}, #{victim_method}, #{case_status}] REALITY: #{victim_real}"
      end
  
      def self.second_murder(victim_name, victim_method, case_status, victim_real)
        "#{victim_name}, #{victim_method}, #{case_status}] REALITY: #{victim_real}"
      end
	
      def self.investigate_case(a1, a2, b1, b2, c1, c2)
        2.times do
          Obelisk::NeuroSymbolic::BasicML.get_statistics(a1, a2,
                                                         b1, b2,
                                                         c1, c2)
      
          Obelisk::NeuroSymbolic::BasicML.dynamic_mode_switcher

          current_probability = File.read("data/statistics/probability/current_probability.txt").to_f
          current_information = File.read("data/statistics/label/current_information.txt")

          puts "#{current_information} #{current_probability}"
        end
      end

      ########################################################################################
      #                         Fueporu Et Perimetre De La Caverne                           #
      ########################################################################################
      # Evaluating the descrepancy between the height of the firepole and the height of the  #
      # building to determine how much of the firepole in fact goes underground, and analyze #
      # the cavern perimeter.                                                                #
      ########################################################################################
      def self.fueporu(location_x, location_y, location_z, height_drop)
        location_x  = location_x.to_i
        location_y  = location_y.to_i
        location_z  = location_z.to_i
        height_drop = height_drop.to_i

        average_height       = 20
  
        if    height_drop > average_height
          percentage = average_height / height_drop
  
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Average height is #{percentage} of height drop at #{height_drop} feet.' ],"
        elsif height_drop < average_height
          percentage = height_drop / average_height

          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop is #{percentage} percentage of average height in #{average_height} feet' ],"
        else
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop and Average Height is of the same height.' ],"
        end
      end

      # fagyka'u grana [ firepole ]
      def self.fuegrana(location_x, location_y, location_z, height_drop)
        location_x  = location_x.to_i
        location_y  = location_y.to_i
        location_z  = location_z.to_i
        height_drop = height_drop.to_i

        average_height       = 20
  
        if    height_drop > average_height
          percentage = average_height / height_drop
  
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Average height is #{percentage} of height drop at #{height_drop} feet.' ],"
        elsif height_drop < average_height
          percentage = height_drop / average_height

          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop is #{percentage} percentage of average height in #{average_height} feet' ],"
        else
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop and Average Height is of the same height.' ],"
        end
      end

      def self.cavern_perimeter(pole_size, building_height)
        if pole_size > building_height
          under_layer = building_height - pole_size

          "From the main floor, the fire pole is #{under_layer} feet underground."
        else
          "The size of the fire pole fits within the size of the building."
        end
      end
    end
  end

  module RankDialogue
    class ChanuDialogue
      ## Theoretical, such as if someone became a diety.
      def self.subterfuge(clause_one, clause_two)
        "#{clause_one}, #{clause_two}."
      end

      def self.underling(clause_one, clause_two)
        "#{clause_one}, #{clause_two}."
      end

      def self.vos(verb, object, subject)
        "#{verb} #{object} #{subject}"
      end

      def self.osv(object, subject, verb)
        "#{object} #{subject} #{verb}"
      end

      def self.ovs(object, verb, subject)
        "#{object} #{verb} #{subject}"
      end

      def self.sov(subject, object, verb)
        "#{subject} #{object} #{verb}"
      end
    end
  end

  module BodyArmor
    class Cockpit
      def self.board_wheelchair(agent_name, robot_color)
        "#{agent_name} boards the chair of the cockpit that is color #{robot_color}."
      end

      def self.shoot_guillotine_blade(enemy_name, guilotine_color)
        "#{enemy_name} is shot with the guillotine blade that is colored #{guilotine_color}."
      end

      ## Domestic Tasks
      def self.deliver_coffee(customer)
        "Coffee is delivered to #{customer}."
      end

      def self.deliver_package(package_name, customer)
        "#{package_name} delivered to #{customer}."
      end

      def self.analyze_coordinates(y, z, agent_name)
        "Agent name is location on Y #{y} and X #{x}"
      end
    end

    class Breaks
      def self.drink_coffee(agent_name, coffee_variety, flavor_notes)
        "#{agent_name} drinks coffee from #{coffee_variety}. The flavor is #{flavor_notes}"
      end

      def self.eat_food(agent_name, food_name)
        "#{agent_name} eats #{food_name}."
      end

      def self.try_on_shoes(agent_name, footwear_name, footwear_color)
        "#{agent_name} window shops for #{footwear_name} of color #{footwear_color}."
      end
    end
  end

  module Region
    class UndergroundCity
      def self.battle(insurgent_name)
        puts "Le homme / femme #{insurgent_name} est en le batailles."
      end
    end

    class Prison
      def self.guillotine(executee)
        puts "Le homme / femme #{executee} avoir ne tete pour le guillotine."
      end
    end
  end
end

##############################################################################################
#                               Feminine Vehicular Management                                #
##############################################################################################
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
      def self.moi(directive)
        "#{directive} moi."
      end

      def self.toi(directive)
        "#{directive} toi."
      end

      def self.ils(directive)
        "#{directive} ils."
      end

      def self.elles(directive)
        "#{directive} elles."
      end

      def self.noi(directive)
        "#{directive} noi."
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
      end
    end
  end

  module GameDevElements
    class InputMechanics
      def self.sangehommage(prompt)
        print "#{prompt} "; read_line = gets.not_nil!.chomp
      end

      def self.parle_merci(prompt, output)
        print "#{prompt} "; puts output
      end
    end
  end

  module SamaAwasunu
    class Mperiod
      #######################################################################################
      #                                    Medusahoseki                                     #
      #######################################################################################
      def self.proximity_de_medusahoseki(a, b)
        maximum_distance     = b
        distance_probability = a
  
        calculation = maximum_distance - ( maximum_distance * distance_probability )
        calculation = calculation.round
  
        "Distance from Medusahoseki ( Medusa Gem ): #{calculation}"
      end

      def self.proximity_de_nemedusahoseki(a, b)
        maximum_distance     = b
        distance_probability = 1 - a
  
        calculation = maximum_distance - ( maximum_distance * distance_probability )
        calculation = calculation.round
  
        "Distance from Nemedusahoseki ( Salamander Riding Goat ): #{calculation}"
      end

      def self.proximity_de_memorie(a)
        year_period = 12
  
        calculation = 12 - ( 12 * a )
        calculation = calculation.round
  
        "This memory was from a prior #{calculation} year period"
      end

      def self.mperiod_sprox(a, b)
        "#{a} #{b.upcase}"
      end

      ################################################################################################
      #                                         Use Case                                             #
      ################################################################################################
      # Suppose two people wanted to cover up two dead bodies: one is the dead girlfriend of the     #
      # main character, the other is the brother whom murdered the girlfriends brother having        #
      # placing his unconscious body in a rail road, so blood isn't on his hands.                    #
      #                                                                                              #
      # This aims to solve how you investigate a case where the reality of one victim is not         #
      # and one of the victims doesn't actually exist. The other is not murdered directly by the     #
      # perpetrator.                                                                                 #
      ################################################################################################
      def self.first_murder(victim_name, victim_method, case_status, victim_real)
        "#{victim_name}, #{victim_method}, #{case_status}] REALITY: #{victim_real}"
      end
  
      def self.second_murder(victim_name, victim_method, case_status, victim_real)
        "#{victim_name}, #{victim_method}, #{case_status}] REALITY: #{victim_real}"
      end
	
      def self.investigate_case(a1, a2, b1, b2, c1, c2)
        2.times do
          Obelisk::NeuroSymbolic::BasicML.get_statistics(a1, a2,
                                                         b1, b2,
                                                         c1, c2)
      
          Obelisk::NeuroSymbolic::BasicML.dynamic_mode_switcher

          current_probability = File.read("data/statistics/probability/current_probability.txt").to_f
          current_information = File.read("data/statistics/label/current_information.txt")

          puts "#{current_information} #{current_probability}"
        end
      end

      ########################################################################################
      #                         Fueporu Et Perimetre De La Caverne                           #
      ########################################################################################
      # Evaluating the descrepancy between the height of the firepole and the height of the  #
      # building to determine how much of the firepole in fact goes underground, and analyze #
      # the cavern perimeter.                                                                #
      ########################################################################################
      def self.fueporu(location_x, location_y, location_z, height_drop)
        location_x  = location_x.to_i
        location_y  = location_y.to_i
        location_z  = location_z.to_i
        height_drop = height_drop.to_i

        average_height       = 20
  
        if    height_drop > average_height
          percentage = average_height / height_drop
  
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Average height is #{percentage} of height drop at #{height_drop} feet.' ],"
        elsif height_drop < average_height
          percentage = height_drop / average_height

          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop is #{percentage} percentage of average height in #{average_height} feet' ],"
        else
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop and Average Height is of the same height.' ],"
        end
      end

      # fagyka'u grana [ firepole ]
      def self.fuegrana(location_x, location_y, location_z, height_drop)
        location_x  = location_x.to_i
        location_y  = location_y.to_i
        location_z  = location_z.to_i
        height_drop = height_drop.to_i

        average_height       = 20
  
        if    height_drop > average_height
          percentage = average_height / height_drop
  
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Average height is #{percentage} of height drop at #{height_drop} feet.' ],"
        elsif height_drop < average_height
          percentage = height_drop / average_height

          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop is #{percentage} percentage of average height in #{average_height} feet' ],"
        else
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop and Average Height is of the same height.' ],"
        end
      end

      def self.cavern_perimeter(pole_size, building_height)
        if pole_size > building_height
          under_layer = building_height - pole_size

          "From the main floor, the fire pole is #{under_layer} feet underground."
        else
          "The size of the fire pole fits within the size of the building."
        end
      end
    end
  end

  module RankDialogue
    class SamaDialogue
      ## Theoretical, such as if someone became a diety.
      def self.subterfuge(clause_one, clause_two)
        "#{clause_one}, #{clause_two}."
      end

      def self.underling(clause_one, clause_two)
        "#{clause_one}, #{clause_two}."
      end

      def self.vos(verb, object, subject)
        "#{verb} #{object} #{subject}"
      end

      def self.osv(object, subject, verb)
        "#{object} #{subject} #{verb}"
      end

      def self.ovs(object, verb, subject)
        "#{object} #{verb} #{subject}"
      end

      def self.sov(subject, object, verb)
        "#{subject} #{object} #{verb}"
      end
    end
  end

  module BodyArmor
    class Cockpit
      def self.board_wheelchair(agent_name, robot_color)
        "#{agent_name} boards the chair of the cockpit that is color #{robot_color}."
      end

      def self.shoot_guillotine_blade(enemy_name, guilotine_color)
        "#{enemy_name} is shot with the guillotine blade that is colored #{guilotine_color}."
      end

      ## Domestic Tasks
      def self.deliver_coffee(customer)
        "Coffee is delivered to #{customer}."
      end

      def self.deliver_package(package_name, customer)
        "#{package_name} delivered to #{customer}."
      end

      def self.analyze_coordinates(y, z, agent_name)
        "Agent name is location on Y #{y} and X #{x}"
      end
    end

    class Breaks
      def self.drink_coffee(agent_name, coffee_variety, flavor_notes)
        "#{agent_name} drinks coffee from #{coffee_variety}. The flavor is #{flavor_notes}"
      end

      def self.eat_food(agent_name, food_name)
        "#{agent_name} eats #{food_name}."
      end

      def self.try_on_shoes(agent_name, footwear_name, footwear_color)
        "#{agent_name} window shops for #{footwear_name} of color #{footwear_color}."
      end
    end
  end

  module Region
    class UndergroundCity
      def self.battle(insurgent_name)
        puts "Le homme / femme #{insurgent_name} est en le batailles."
      end
    end

    class Prison
      def self.guillotine(executee)
        puts "Le homme / femme #{executee} avoir ne tete pour le guillotine."
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
      def self.moi(directive)
        "#{directive} moi."
      end

      def self.toi(directive)
        "#{directive} toi."
      end

      def self.ils(directive)
        "#{directive} ils."
      end

      def self.elles(directive)
        "#{directive} elles."
      end

      def self.noi(directive)
        "#{directive} noi."
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
      end
    end
  end

  module GameDevElements
    class InputMechanics
      def self.sangehommage(prompt)
        print "#{prompt} "; read_line = gets.not_nil!.chomp
      end

      def self.parle_merci(prompt, output)
        print "#{prompt} "; puts output
      end
    end
  end

  module HikasaAwasunu
    class Mperiod
      #######################################################################################
      #                                    Medusahoseki                                     #
      #######################################################################################
      def self.proximity_de_medusahoseki(a, b)
        maximum_distance     = b
        distance_probability = a
  
        calculation = maximum_distance - ( maximum_distance * distance_probability )
        calculation = calculation.round
  
        "Distance from Medusahoseki ( Medusa Gem ): #{calculation}"
      end

      def self.proximity_de_nemedusahoseki(a, b)
        maximum_distance     = b
        distance_probability = 1 - a
  
        calculation = maximum_distance - ( maximum_distance * distance_probability )
        calculation = calculation.round
  
        "Distance from Nemedusahoseki ( Salamander Riding Goat ): #{calculation}"
      end

      def self.proximity_de_memorie(a)
        year_period = 12
  
        calculation = 12 - ( 12 * a )
        calculation = calculation.round
  
        "This memory was from a prior #{calculation} year period"
      end

      def self.mperiod_sprox(a, b)
        "#{a} #{b.upcase}"
      end

      ################################################################################################
      #                                         Use Case                                             #
      ################################################################################################
      # Suppose two people wanted to cover up two dead bodies: one is the dead girlfriend of the     #
      # main character, the other is the brother whom murdered the girlfriends brother having        #
      # placing his unconscious body in a rail road, so blood isn't on his hands.                    #
      #                                                                                              #
      # This aims to solve how you investigate a case where the reality of one victim is not         #
      # and one of the victims doesn't actually exist. The other is not murdered directly by the     #
      # perpetrator.                                                                                 #
      ################################################################################################
      def self.first_murder(victim_name, victim_method, case_status, victim_real)
        "#{victim_name}, #{victim_method}, #{case_status}] REALITY: #{victim_real}"
      end
  
      def self.second_murder(victim_name, victim_method, case_status, victim_real)
        "#{victim_name}, #{victim_method}, #{case_status}] REALITY: #{victim_real}"
      end
	
      def self.investigate_case(a1, a2, b1, b2, c1, c2)
        2.times do
          Obelisk::NeuroSymbolic::BasicML.get_statistics(a1, a2,
                                                         b1, b2,
                                                         c1, c2)
      
          Obelisk::NeuroSymbolic::BasicML.dynamic_mode_switcher

          current_probability = File.read("data/statistics/probability/current_probability.txt").to_f
          current_information = File.read("data/statistics/label/current_information.txt")

          puts "#{current_information} #{current_probability}"
        end
      end

      ########################################################################################
      #                         Fueporu Et Perimetre De La Caverne                           #
      ########################################################################################
      # Evaluating the descrepancy between the height of the firepole and the height of the  #
      # building to determine how much of the firepole in fact goes underground, and analyze #
      # the cavern perimeter.                                                                #
      ########################################################################################
      def self.fueporu(location_x, location_y, location_z, height_drop)
        location_x  = location_x.to_i
        location_y  = location_y.to_i
        location_z  = location_z.to_i
        height_drop = height_drop.to_i

        average_height       = 20
  
        if    height_drop > average_height
          percentage = average_height / height_drop
  
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Average height is #{percentage} of height drop at #{height_drop} feet.' ],"
        elsif height_drop < average_height
          percentage = height_drop / average_height

          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop is #{percentage} percentage of average height in #{average_height} feet' ],"
        else
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop and Average Height is of the same height.' ],"
        end
      end

      # fagyka'u grana [ firepole ]
      def self.fuegrana(location_x, location_y, location_z, height_drop)
        location_x  = location_x.to_i
        location_y  = location_y.to_i
        location_z  = location_z.to_i
        height_drop = height_drop.to_i

        average_height       = 20
  
        if    height_drop > average_height
          percentage = average_height / height_drop
  
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Average height is #{percentage} of height drop at #{height_drop} feet.' ],"
        elsif height_drop < average_height
          percentage = height_drop / average_height

          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop is #{percentage} percentage of average height in #{average_height} feet' ],"
        else
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop and Average Height is of the same height.' ],"
        end
      end

      def self.cavern_perimeter(pole_size, building_height)
        if pole_size > building_height
          under_layer = building_height - pole_size

          "From the main floor, the fire pole is #{under_layer} feet underground."
        else
          "The size of the fire pole fits within the size of the building."
        end
      end
    end
  end

  module RankDialogue
    class HikasaDialogue
      ## Theoretical, such as if someone became a diety.
      def self.subterfuge(clause_one, clause_two)
        "#{clause_one}, #{clause_two}."
      end

      def self.underling(clause_one, clause_two)
        "#{clause_one}, #{clause_two}."
      end

      def self.vos(verb, object, subject)
        "#{verb} #{object} #{subject}"
      end

      def self.osv(object, subject, verb)
        "#{object} #{subject} #{verb}"
      end

      def self.ovs(object, verb, subject)
        "#{object} #{verb} #{subject}"
      end

      def self.sov(subject, object, verb)
        "#{subject} #{object} #{verb}"
      end
    end
  end

  module BodyArmor
    class Cockpit
      def self.board_wheelchair(agent_name, robot_color)
        "#{agent_name} boards the chair of the cockpit that is color #{robot_color}."
      end

      def self.shoot_guillotine_blade(enemy_name, guilotine_color)
        "#{enemy_name} is shot with the guillotine blade that is colored #{guilotine_color}."
      end

      ## Domestic Tasks
      def self.deliver_coffee(customer)
        "Coffee is delivered to #{customer}."
      end

      def self.deliver_package(package_name, customer)
        "#{package_name} delivered to #{customer}."
      end

      def self.analyze_coordinates(y, z, agent_name)
        "Agent name is location on Y #{y} and X #{x}"
      end
    end

    class Breaks
      def self.drink_coffee(agent_name, coffee_variety, flavor_notes)
        "#{agent_name} drinks coffee from #{coffee_variety}. The flavor is #{flavor_notes}"
      end

      def self.eat_food(agent_name, food_name)
        "#{agent_name} eats #{food_name}."
      end

      def self.try_on_shoes(agent_name, footwear_name, footwear_color)
        "#{agent_name} window shops for #{footwear_name} of color #{footwear_color}."
      end
    end
  end

  module Region
    class UndergroundCity
      def self.battle(insurgent_name)
        puts "Le homme / femme #{insurgent_name} est en le batailles."
      end
    end

    class Prison
      def self.guillotine(executee)
        puts "Le homme / femme #{executee} avoir ne tete pour le guillotine."
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
      def self.moi(directive)
        "#{directive} moi."
      end

      def self.toi(directive)
        "#{directive} toi."
      end

      def self.ils(directive)
        "#{directive} ils."
      end

      def self.elles(directive)
        "#{directive} elles."
      end

      def self.noi(directive)
        "#{directive} noi."
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
      end
    end
  end

  module GameDevElements
    class InputMechanics
      def self.sangehommage(prompt)
        print "#{prompt} "; read_line = gets.not_nil!.chomp
      end

      def self.parle_merci(prompt, output)
        print "#{prompt} "; puts output
      end
    end
  end

  module HikasaAwasunu
    class Mperiod
      #######################################################################################
      #                                    Medusahoseki                                     #
      #######################################################################################
      def self.proximity_de_medusahoseki(a, b)
        maximum_distance     = b
        distance_probability = a
  
        calculation = maximum_distance - ( maximum_distance * distance_probability )
        calculation = calculation.round
  
        "Distance from Medusahoseki ( Medusa Gem ): #{calculation}"
      end

      def self.proximity_de_nemedusahoseki(a, b)
        maximum_distance     = b
        distance_probability = 1 - a
  
        calculation = maximum_distance - ( maximum_distance * distance_probability )
        calculation = calculation.round
  
        "Distance from Nemedusahoseki ( Salamander Riding Goat ): #{calculation}"
      end

      def self.proximity_de_memorie(a)
        year_period = 12
  
        calculation = 12 - ( 12 * a )
        calculation = calculation.round
  
        "This memory was from a prior #{calculation} year period"
      end

      def self.mperiod_sprox(a, b)
        "#{a} #{b.upcase}"
      end

      ################################################################################################
      #                                         Use Case                                             #
      ################################################################################################
      # Suppose two people wanted to cover up two dead bodies: one is the dead girlfriend of the     #
      # main character, the other is the brother whom murdered the girlfriends brother having        #
      # placing his unconscious body in a rail road, so blood isn't on his hands.                    #
      #                                                                                              #
      # This aims to solve how you investigate a case where the reality of one victim is not         #
      # and one of the victims doesn't actually exist. The other is not murdered directly by the     #
      # perpetrator.                                                                                 #
      ################################################################################################
      def self.first_murder(victim_name, victim_method, case_status, victim_real)
        "#{victim_name}, #{victim_method}, #{case_status}] REALITY: #{victim_real}"
      end
  
      def self.second_murder(victim_name, victim_method, case_status, victim_real)
        "#{victim_name}, #{victim_method}, #{case_status}] REALITY: #{victim_real}"
      end
	
      def self.investigate_case(a1, a2, b1, b2, c1, c2)
        2.times do
          Obelisk::NeuroSymbolic::BasicML.get_statistics(a1, a2,
                                                         b1, b2,
                                                         c1, c2)
      
          Obelisk::NeuroSymbolic::BasicML.dynamic_mode_switcher

          current_probability = File.read("data/statistics/probability/current_probability.txt").to_f
          current_information = File.read("data/statistics/label/current_information.txt")

          puts "#{current_information} #{current_probability}"
        end
      end

      ########################################################################################
      #                         Fueporu Et Perimetre De La Caverne                           #
      ########################################################################################
      # Evaluating the descrepancy between the height of the firepole and the height of the  #
      # building to determine how much of the firepole in fact goes underground, and analyze #
      # the cavern perimeter.                                                                #
      ########################################################################################
      def self.fueporu(location_x, location_y, location_z, height_drop)
        location_x  = location_x.to_i
        location_y  = location_y.to_i
        location_z  = location_z.to_i
        height_drop = height_drop.to_i

        average_height       = 20
  
        if    height_drop > average_height
          percentage = average_height / height_drop
  
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Average height is #{percentage} of height drop at #{height_drop} feet.' ],"
        elsif height_drop < average_height
          percentage = height_drop / average_height

          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop is #{percentage} percentage of average height in #{average_height} feet' ],"
        else
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop and Average Height is of the same height.' ],"
        end
      end

      # fagyka'u grana [ firepole ]
      def self.fuegrana(location_x, location_y, location_z, height_drop)
        location_x  = location_x.to_i
        location_y  = location_y.to_i
        location_z  = location_z.to_i
        height_drop = height_drop.to_i

        average_height       = 20
  
        if    height_drop > average_height
          percentage = average_height / height_drop
  
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Average height is #{percentage} of height drop at #{height_drop} feet.' ],"
        elsif height_drop < average_height
          percentage = height_drop / average_height

          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop is #{percentage} percentage of average height in #{average_height} feet' ],"
        else
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop and Average Height is of the same height.' ],"
        end
      end

      def self.cavern_perimeter(pole_size, building_height)
        if pole_size > building_height
          under_layer = building_height - pole_size

          "From the main floor, the fire pole is #{under_layer} feet underground."
        else
          "The size of the fire pole fits within the size of the building."
        end
      end
    end
  end

  module RankDialogue
    class SanaDialogue
      ## Theoretical, such as if someone became a diety.
      def self.subterfuge(clause_one, clause_two)
        "#{clause_one}, #{clause_two}."
      end

      def self.underling(clause_one, clause_two)
        "#{clause_one}, #{clause_two}."
      end

      def self.vos(verb, object, subject)
        "#{verb} #{object} #{subject}"
      end

      def self.osv(object, subject, verb)
        "#{object} #{subject} #{verb}"
      end

      def self.ovs(object, verb, subject)
        "#{object} #{verb} #{subject}"
      end

      def self.sov(subject, object, verb)
        "#{subject} #{object} #{verb}"
      end
    end
  end

  module BodyArmor
    class Cockpit
      def self.board_wheelchair(agent_name, robot_color)
        "#{agent_name} boards the chair of the cockpit that is color #{robot_color}."
      end

      def self.shoot_guillotine_blade(enemy_name, guilotine_color)
        "#{enemy_name} is shot with the guillotine blade that is colored #{guilotine_color}."
      end

      ## Domestic Tasks
      def self.deliver_coffee(customer)
        "Coffee is delivered to #{customer}."
      end

      def self.deliver_package(package_name, customer)
        "#{package_name} delivered to #{customer}."
      end

      def self.analyze_coordinates(y, z, agent_name)
        "Agent name is location on Y #{y} and X #{x}"
      end
    end

    class Breaks
      def self.drink_coffee(agent_name, coffee_variety, flavor_notes)
        "#{agent_name} drinks coffee from #{coffee_variety}. The flavor is #{flavor_notes}"
      end

      def self.eat_food(agent_name, food_name)
        "#{agent_name} eats #{food_name}."
      end

      def self.try_on_shoes(agent_name, footwear_name, footwear_color)
        "#{agent_name} window shops for #{footwear_name} of color #{footwear_color}."
      end
    end
  end

  module Region
    class UndergroundCity
      def self.battle(insurgent_name)
        puts "Le homme / femme #{insurgent_name} est en le batailles."
      end
    end

    class Prison
      def self.guillotine(executee)
        puts "Le homme / femme #{executee} avoir ne tete pour le guillotine."
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
      def self.moi(directive)
        "#{directive} moi."
      end

      def self.toi(directive)
        "#{directive} toi."
      end

      def self.ils(directive)
        "#{directive} ils."
      end

      def self.elles(directive)
        "#{directive} elles."
      end

      def self.noi(directive)
        "#{directive} noi."
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
      end
    end
  end

  module GameDevElements
    class InputMechanics
      def self.sangehommage(prompt)
        print "#{prompt} "; read_line = gets.not_nil!.chomp
      end

      def self.parle_merci(prompt, output)
        print "#{prompt} "; puts output
      end
    end
  end

  module HikasaAwasunu
    class Mperiod
      #######################################################################################
      #                                    Medusahoseki                                     #
      #######################################################################################
      def self.proximity_de_medusahoseki(a, b)
        maximum_distance     = b
        distance_probability = a
  
        calculation = maximum_distance - ( maximum_distance * distance_probability )
        calculation = calculation.round
  
        "Distance from Medusahoseki ( Medusa Gem ): #{calculation}"
      end

      def self.proximity_de_nemedusahoseki(a, b)
        maximum_distance     = b
        distance_probability = 1 - a
  
        calculation = maximum_distance - ( maximum_distance * distance_probability )
        calculation = calculation.round
  
        "Distance from Nemedusahoseki ( Salamander Riding Goat ): #{calculation}"
      end

      def self.proximity_de_memorie(a)
        year_period = 12
  
        calculation = 12 - ( 12 * a )
        calculation = calculation.round
  
        "This memory was from a prior #{calculation} year period"
      end

      def self.mperiod_sprox(a, b)
        "#{a} #{b.upcase}"
      end

      ################################################################################################
      #                                         Use Case                                             #
      ################################################################################################
      # Suppose two people wanted to cover up two dead bodies: one is the dead girlfriend of the     #
      # main character, the other is the brother whom murdered the girlfriends brother having        #
      # placing his unconscious body in a rail road, so blood isn't on his hands.                    #
      #                                                                                              #
      # This aims to solve how you investigate a case where the reality of one victim is not         #
      # and one of the victims doesn't actually exist. The other is not murdered directly by the     #
      # perpetrator.                                                                                 #
      ################################################################################################
      def self.first_murder(victim_name, victim_method, case_status, victim_real)
        "#{victim_name}, #{victim_method}, #{case_status}] REALITY: #{victim_real}"
      end
  
      def self.second_murder(victim_name, victim_method, case_status, victim_real)
        "#{victim_name}, #{victim_method}, #{case_status}] REALITY: #{victim_real}"
      end
	
      def self.investigate_case(a1, a2, b1, b2, c1, c2)
        2.times do
          Obelisk::NeuroSymbolic::BasicML.get_statistics(a1, a2,
                                                         b1, b2,
                                                         c1, c2)
      
          Obelisk::NeuroSymbolic::BasicML.dynamic_mode_switcher

          current_probability = File.read("data/statistics/probability/current_probability.txt").to_f
          current_information = File.read("data/statistics/label/current_information.txt")

          puts "#{current_information} #{current_probability}"
        end
      end

      ########################################################################################
      #                         Fueporu Et Perimetre De La Caverne                           #
      ########################################################################################
      # Evaluating the descrepancy between the height of the firepole and the height of the  #
      # building to determine how much of the firepole in fact goes underground, and analyze #
      # the cavern perimeter.                                                                #
      ########################################################################################
      def self.fueporu(location_x, location_y, location_z, height_drop)
        location_x  = location_x.to_i
        location_y  = location_y.to_i
        location_z  = location_z.to_i
        height_drop = height_drop.to_i

        average_height       = 20
  
        if    height_drop > average_height
          percentage = average_height / height_drop
  
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Average height is #{percentage} of height drop at #{height_drop} feet.' ],"
        elsif height_drop < average_height
          percentage = height_drop / average_height

          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop is #{percentage} percentage of average height in #{average_height} feet' ],"
        else
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop and Average Height is of the same height.' ],"
        end
      end

      # fagyka'u grana [ firepole ]
      def self.fuegrana(location_x, location_y, location_z, height_drop)
        location_x  = location_x.to_i
        location_y  = location_y.to_i
        location_z  = location_z.to_i
        height_drop = height_drop.to_i

        average_height       = 20
  
        if    height_drop > average_height
          percentage = average_height / height_drop
  
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Average height is #{percentage} of height drop at #{height_drop} feet.' ],"
        elsif height_drop < average_height
          percentage = height_drop / average_height

          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop is #{percentage} percentage of average height in #{average_height} feet' ],"
        else
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop and Average Height is of the same height.' ],"
        end
      end

      def self.cavern_perimeter(pole_size, building_height)
        if pole_size > building_height
          under_layer = building_height - pole_size

          "From the main floor, the fire pole is #{under_layer} feet underground."
        else
          "The size of the fire pole fits within the size of the building."
        end
      end
    end
  end

  module RankDialogue
    class ChanaDialogue
      ## Theoretical, such as if someone became a diety.
      def self.subterfuge(clause_one, clause_two)
        "#{clause_one}, #{clause_two}."
      end

      def self.underling(clause_one, clause_two)
        "#{clause_one}, #{clause_two}."
      end

      def self.vos(verb, object, subject)
        "#{verb} #{object} #{subject}"
      end

      def self.osv(object, subject, verb)
        "#{object} #{subject} #{verb}"
      end

      def self.ovs(object, verb, subject)
        "#{object} #{verb} #{subject}"
      end

      def self.sov(subject, object, verb)
        "#{subject} #{object} #{verb}"
      end
    end
  end

  module BodyArmor
    class Cockpit
      def self.board_wheelchair(agent_name, robot_color)
        "#{agent_name} boards the chair of the cockpit that is color #{robot_color}."
      end

      def self.shoot_guillotine_blade(enemy_name, guilotine_color)
        "#{enemy_name} is shot with the guillotine blade that is colored #{guilotine_color}."
      end

      ## Domestic Tasks
      def self.deliver_coffee(customer)
        "Coffee is delivered to #{customer}."
      end

      def self.deliver_package(package_name, customer)
        "#{package_name} delivered to #{customer}."
      end

      def self.analyze_coordinates(y, z, agent_name)
        "Agent name is location on Y #{y} and X #{x}"
      end
    end

    class Breaks
      def self.drink_coffee(agent_name, coffee_variety, flavor_notes)
        "#{agent_name} drinks coffee from #{coffee_variety}. The flavor is #{flavor_notes}"
      end

      def self.eat_food(agent_name, food_name)
        "#{agent_name} eats #{food_name}."
      end

      def self.try_on_shoes(agent_name, footwear_name, footwear_color)
        "#{agent_name} window shops for #{footwear_name} of color #{footwear_color}."
      end
    end
  end
end

##############################################################################################
#                               Agentic Vehicular Management                                 #
##############################################################################################
module Samos
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
      def self.moi(directive)
        "#{directive} moi."
      end

      def self.toi(directive)
        "#{directive} toi."
      end

      def self.ils(directive)
        "#{directive} ils."
      end

      def self.elles(directive)
        "#{directive} elles."
      end

      def self.noi(directive)
        "#{directive} noi."
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
      end
    end
  end

  module GameDevElements
    class InputMechanics
      def self.sangehommage(prompt)
        print "#{prompt} "; read_line = gets.not_nil!.chomp
      end

      def self.parle_merci(prompt, output)
        print "#{prompt} "; puts output
      end
    end
  end

  module HikasaAwasunu
    class Mperiod
      #######################################################################################
      #                                    Medusahoseki                                     #
      #######################################################################################
      def self.proximity_de_medusahoseki(a, b)
        maximum_distance     = b
        distance_probability = a
  
        calculation = maximum_distance - ( maximum_distance * distance_probability )
        calculation = calculation.round
  
        "Distance from Medusahoseki ( Medusa Gem ): #{calculation}"
      end

      def self.proximity_de_nemedusahoseki(a, b)
        maximum_distance     = b
        distance_probability = 1 - a
  
        calculation = maximum_distance - ( maximum_distance * distance_probability )
        calculation = calculation.round
  
        "Distance from Nemedusahoseki ( Salamander Riding Goat ): #{calculation}"
      end

      def self.proximity_de_memorie(a)
        year_period = 12
  
        calculation = 12 - ( 12 * a )
        calculation = calculation.round
  
        "This memory was from a prior #{calculation} year period"
      end

      def self.mperiod_sprox(a, b)
        "#{a} #{b.upcase}"
      end

      ################################################################################################
      #                                         Use Case                                             #
      ################################################################################################
      # Suppose two people wanted to cover up two dead bodies: one is the dead girlfriend of the     #
      # main character, the other is the brother whom murdered the girlfriends brother having        #
      # placing his unconscious body in a rail road, so blood isn't on his hands.                    #
      #                                                                                              #
      # This aims to solve how you investigate a case where the reality of one victim is not         #
      # and one of the victims doesn't actually exist. The other is not murdered directly by the     #
      # perpetrator.                                                                                 #
      ################################################################################################
      def self.first_murder(victim_name, victim_method, case_status, victim_real)
        "#{victim_name}, #{victim_method}, #{case_status}] REALITY: #{victim_real}"
      end
  
      def self.second_murder(victim_name, victim_method, case_status, victim_real)
        "#{victim_name}, #{victim_method}, #{case_status}] REALITY: #{victim_real}"
      end
	
      def self.investigate_case(a1, a2, b1, b2, c1, c2)
        2.times do
          Obelisk::NeuroSymbolic::BasicML.get_statistics(a1, a2,
                                                         b1, b2,
                                                         c1, c2)
      
          Obelisk::NeuroSymbolic::BasicML.dynamic_mode_switcher

          current_probability = File.read("data/statistics/probability/current_probability.txt").to_f
          current_information = File.read("data/statistics/label/current_information.txt")

          puts "#{current_information} #{current_probability}"
        end
      end

      ########################################################################################
      #                         Fueporu Et Perimetre De La Caverne                           #
      ########################################################################################
      # Evaluating the descrepancy between the height of the firepole and the height of the  #
      # building to determine how much of the firepole in fact goes underground, and analyze #
      # the cavern perimeter.                                                                #
      ########################################################################################
      def self.fueporu(location_x, location_y, location_z, height_drop)
        location_x  = location_x.to_i
        location_y  = location_y.to_i
        location_z  = location_z.to_i
        height_drop = height_drop.to_i

        average_height       = 20
  
        if    height_drop > average_height
          percentage = average_height / height_drop
  
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Average height is #{percentage} of height drop at #{height_drop} feet.' ],"
        elsif height_drop < average_height
          percentage = height_drop / average_height

          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop is #{percentage} percentage of average height in #{average_height} feet' ],"
        else
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop and Average Height is of the same height.' ],"
        end
      end

      # fagyka'u grana [ firepole ]
      def self.fuegrana(location_x, location_y, location_z, height_drop)
        location_x  = location_x.to_i
        location_y  = location_y.to_i
        location_z  = location_z.to_i
        height_drop = height_drop.to_i

        average_height       = 20
  
        if    height_drop > average_height
          percentage = average_height / height_drop
  
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Average height is #{percentage} of height drop at #{height_drop} feet.' ],"
        elsif height_drop < average_height
          percentage = height_drop / average_height

          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop is #{percentage} percentage of average height in #{average_height} feet' ],"
        else
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop and Average Height is of the same height.' ],"
        end
      end

      def self.cavern_perimeter(pole_size, building_height)
        if pole_size > building_height
          under_layer = building_height - pole_size

          "From the main floor, the fire pole is #{under_layer} feet underground."
        else
          "The size of the fire pole fits within the size of the building."
        end
      end
    end
  end

  module RankDialogue
    class SamosDialogue
      ## Theoretical, such as if someone became a diety.
      def self.subterfuge(clause_one, clause_two)
        "#{clause_one}, #{clause_two}."
      end

      def self.underling(clause_one, clause_two)
        "#{clause_one}, #{clause_two}."
      end

      def self.vos(verb, object, subject)
        "#{verb} #{object} #{subject}"
      end

      def self.osv(object, subject, verb)
        "#{object} #{subject} #{verb}"
      end

      def self.ovs(object, verb, subject)
        "#{object} #{verb} #{subject}"
      end

      def self.sov(subject, object, verb)
        "#{subject} #{object} #{verb}"
      end
    end
  end

  module BodyArmor
    class Cockpit
      def self.board_wheelchair(agent_name, robot_color)
        "#{agent_name} boards the chair of the cockpit that is color #{robot_color}."
      end

      def self.shoot_guillotine_blade(enemy_name, guilotine_color)
        "#{enemy_name} is shot with the guillotine blade that is colored #{guilotine_color}."
      end

      ## Domestic Tasks
      def self.deliver_coffee(customer)
        "Coffee is delivered to #{customer}."
      end

      def self.deliver_package(package_name, customer)
        "#{package_name} delivered to #{customer}."
      end

      def self.analyze_coordinates(y, z, agent_name)
        "Agent name is location on Y #{y} and X #{x}"
      end
    end

    class Breaks
      def self.drink_coffee(agent_name, coffee_variety, flavor_notes)
        "#{agent_name} drinks coffee from #{coffee_variety}. The flavor is #{flavor_notes}"
      end

      def self.eat_food(agent_name, food_name)
        "#{agent_name} eats #{food_name}."
      end

      def self.try_on_shoes(agent_name, footwear_name, footwear_color)
        "#{agent_name} window shops for #{footwear_name} of color #{footwear_color}."
      end
    end
  end

  module Region
    class UndergroundCity
      def self.battle(insurgent_name)
        puts "Le homme / femme #{insurgent_name} est en le batailles."
      end
    end

    class Prison
      def self.guillotine(executee)
        puts "Le homme / femme #{executee} avoir ne tete pour le guillotine."
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
      def self.moi(directive)
        "#{directive} moi."
      end

      def self.toi(directive)
        "#{directive} toi."
      end

      def self.ils(directive)
        "#{directive} ils."
      end

      def self.elles(directive)
        "#{directive} elles."
      end

      def self.noi(directive)
        "#{directive} noi."
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
      end
    end
  end

  module GameDevElements
    class InputMechanics
      def self.sangehommage(prompt)
        print "#{prompt} "; read_line = gets.not_nil!.chomp
      end

      def self.parle_merci(prompt, output)
        print "#{prompt} "; puts output
      end
    end
  end

  module HikasaAwasunu
    class Mperiod
      #######################################################################################
      #                                    Medusahoseki                                     #
      #######################################################################################
      def self.proximity_de_medusahoseki(a, b)
        maximum_distance     = b
        distance_probability = a
  
        calculation = maximum_distance - ( maximum_distance * distance_probability )
        calculation = calculation.round
  
        "Distance from Medusahoseki ( Medusa Gem ): #{calculation}"
      end

      def self.proximity_de_nemedusahoseki(a, b)
        maximum_distance     = b
        distance_probability = 1 - a
  
        calculation = maximum_distance - ( maximum_distance * distance_probability )
        calculation = calculation.round
  
        "Distance from Nemedusahoseki ( Salamander Riding Goat ): #{calculation}"
      end

      def self.proximity_de_memorie(a)
        year_period = 12
  
        calculation = 12 - ( 12 * a )
        calculation = calculation.round
  
        "This memory was from a prior #{calculation} year period"
      end

      def self.mperiod_sprox(a, b)
        "#{a} #{b.upcase}"
      end

      ################################################################################################
      #                                         Use Case                                             #
      ################################################################################################
      # Suppose two people wanted to cover up two dead bodies: one is the dead girlfriend of the     #
      # main character, the other is the brother whom murdered the girlfriends brother having        #
      # placing his unconscious body in a rail road, so blood isn't on his hands.                    #
      #                                                                                              #
      # This aims to solve how you investigate a case where the reality of one victim is not         #
      # and one of the victims doesn't actually exist. The other is not murdered directly by the     #
      # perpetrator.                                                                                 #
      ################################################################################################
      def self.first_murder(victim_name, victim_method, case_status, victim_real)
        "#{victim_name}, #{victim_method}, #{case_status}] REALITY: #{victim_real}"
      end
  
      def self.second_murder(victim_name, victim_method, case_status, victim_real)
        "#{victim_name}, #{victim_method}, #{case_status}] REALITY: #{victim_real}"
      end
	
      def self.investigate_case(a1, a2, b1, b2, c1, c2)
        2.times do
          Obelisk::NeuroSymbolic::BasicML.get_statistics(a1, a2,
                                                         b1, b2,
                                                         c1, c2)
      
          Obelisk::NeuroSymbolic::BasicML.dynamic_mode_switcher

          current_probability = File.read("data/statistics/probability/current_probability.txt").to_f
          current_information = File.read("data/statistics/label/current_information.txt")

          puts "#{current_information} #{current_probability}"
        end
      end

      ########################################################################################
      #                         Fueporu Et Perimetre De La Caverne                           #
      ########################################################################################
      # Evaluating the descrepancy between the height of the firepole and the height of the  #
      # building to determine how much of the firepole in fact goes underground, and analyze #
      # the cavern perimeter.                                                                #
      ########################################################################################
      def self.fueporu(location_x, location_y, location_z, height_drop)
        location_x  = location_x.to_i
        location_y  = location_y.to_i
        location_z  = location_z.to_i
        height_drop = height_drop.to_i

        average_height       = 20
  
        if    height_drop > average_height
          percentage = average_height / height_drop
  
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Average height is #{percentage} of height drop at #{height_drop} feet.' ],"
        elsif height_drop < average_height
          percentage = height_drop / average_height

          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop is #{percentage} percentage of average height in #{average_height} feet' ],"
        else
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop and Average Height is of the same height.' ],"
        end
      end

      # fagyka'u grana [ firepole ]
      def self.fuegrana(location_x, location_y, location_z, height_drop)
        location_x  = location_x.to_i
        location_y  = location_y.to_i
        location_z  = location_z.to_i
        height_drop = height_drop.to_i

        average_height       = 20
  
        if    height_drop > average_height
          percentage = average_height / height_drop
  
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Average height is #{percentage} of height drop at #{height_drop} feet.' ],"
        elsif height_drop < average_height
          percentage = height_drop / average_height

          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop is #{percentage} percentage of average height in #{average_height} feet' ],"
        else
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop and Average Height is of the same height.' ],"
        end
      end

      def self.cavern_perimeter(pole_size, building_height)
        if pole_size > building_height
          under_layer = building_height - pole_size

          "From the main floor, the fire pole is #{under_layer} feet underground."
        else
          "The size of the fire pole fits within the size of the building."
        end
      end
    end
  end

  module RankDialogue
    class HikasosDialogue
      ## Theoretical, such as if someone became a diety.
      def self.subterfuge(clause_one, clause_two)
        "#{clause_one}, #{clause_two}."
      end

      def self.underling(clause_one, clause_two)
        "#{clause_one}, #{clause_two}."
      end

      def self.vos(verb, object, subject)
        "#{verb} #{object} #{subject}"
      end

      def self.osv(object, subject, verb)
        "#{object} #{subject} #{verb}"
      end

      def self.ovs(object, verb, subject)
        "#{object} #{verb} #{subject}"
      end

      def self.sov(subject, object, verb)
        "#{subject} #{object} #{verb}"
      end
    end
  end

  module BodyArmor
    class Cockpit
      def self.board_wheelchair(agent_name, robot_color)
        "#{agent_name} boards the chair of the cockpit that is color #{robot_color}."
      end

      def self.shoot_guillotine_blade(enemy_name, guilotine_color)
        "#{enemy_name} is shot with the guillotine blade that is colored #{guilotine_color}."
      end

      ## Domestic Tasks
      def self.deliver_coffee(customer)
        "Coffee is delivered to #{customer}."
      end

      def self.deliver_package(package_name, customer)
        "#{package_name} delivered to #{customer}."
      end

      def self.analyze_coordinates(y, z, agent_name)
        "Agent name is location on Y #{y} and X #{x}"
      end
    end

    class Breaks
      def self.drink_coffee(agent_name, coffee_variety, flavor_notes)
        "#{agent_name} drinks coffee from #{coffee_variety}. The flavor is #{flavor_notes}"
      end

      def self.eat_food(agent_name, food_name)
        "#{agent_name} eats #{food_name}."
      end

      def self.try_on_shoes(agent_name, footwear_name, footwear_color)
        "#{agent_name} window shops for #{footwear_name} of color #{footwear_color}."
      end
    end
  end

  module Region
    class UndergroundCity
      def self.battle(insurgent_name)
        puts "Le homme / femme #{insurgent_name} est en le batailles."
      end
    end

    class Prison
      def self.guillotine(executee)
        puts "Le homme / femme #{executee} avoir ne tete pour le guillotine."
      end
    end
  end
end

module Sanos
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
      def self.moi(directive)
        "#{directive} moi."
      end

      def self.toi(directive)
        "#{directive} toi."
      end

      def self.ils(directive)
        "#{directive} ils."
      end

      def self.elles(directive)
        "#{directive} elles."
      end

      def self.noi(directive)
        "#{directive} noi."
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
      end
    end
  end

  module GameDevElements
    class InputMechanics
      def self.sangehommage(prompt)
        print "#{prompt} "; read_line = gets.not_nil!.chomp
      end

      def self.parle_merci(prompt, output)
        print "#{prompt} "; puts output
      end
    end
  end

  module HikasaAwasunu
    class Mperiod
      #######################################################################################
      #                                    Medusahoseki                                     #
      #######################################################################################
      def self.proximity_de_medusahoseki(a, b)
        maximum_distance     = b
        distance_probability = a
  
        calculation = maximum_distance - ( maximum_distance * distance_probability )
        calculation = calculation.round
  
        "Distance from Medusahoseki ( Medusa Gem ): #{calculation}"
      end

      def self.proximity_de_nemedusahoseki(a, b)
        maximum_distance     = b
        distance_probability = 1 - a
  
        calculation = maximum_distance - ( maximum_distance * distance_probability )
        calculation = calculation.round
  
        "Distance from Nemedusahoseki ( Salamander Riding Goat ): #{calculation}"
      end

      def self.proximity_de_memorie(a)
        year_period = 12
  
        calculation = 12 - ( 12 * a )
        calculation = calculation.round
  
        "This memory was from a prior #{calculation} year period"
      end

      def self.mperiod_sprox(a, b)
        "#{a} #{b.upcase}"
      end

      ################################################################################################
      #                                         Use Case                                             #
      ################################################################################################
      # Suppose two people wanted to cover up two dead bodies: one is the dead girlfriend of the     #
      # main character, the other is the brother whom murdered the girlfriends brother having        #
      # placing his unconscious body in a rail road, so blood isn't on his hands.                    #
      #                                                                                              #
      # This aims to solve how you investigate a case where the reality of one victim is not         #
      # and one of the victims doesn't actually exist. The other is not murdered directly by the     #
      # perpetrator.                                                                                 #
      ################################################################################################
      def self.first_murder(victim_name, victim_method, case_status, victim_real)
        "#{victim_name}, #{victim_method}, #{case_status}] REALITY: #{victim_real}"
      end
  
      def self.second_murder(victim_name, victim_method, case_status, victim_real)
        "#{victim_name}, #{victim_method}, #{case_status}] REALITY: #{victim_real}"
      end
	
      def self.investigate_case(a1, a2, b1, b2, c1, c2)
        2.times do
          Obelisk::NeuroSymbolic::BasicML.get_statistics(a1, a2,
                                                         b1, b2,
                                                         c1, c2)
      
          Obelisk::NeuroSymbolic::BasicML.dynamic_mode_switcher

          current_probability = File.read("data/statistics/probability/current_probability.txt").to_f
          current_information = File.read("data/statistics/label/current_information.txt")

          puts "#{current_information} #{current_probability}"
        end
      end

      ########################################################################################
      #                         Fueporu Et Perimetre De La Caverne                           #
      ########################################################################################
      # Evaluating the descrepancy between the height of the firepole and the height of the  #
      # building to determine how much of the firepole in fact goes underground, and analyze #
      # the cavern perimeter.                                                                #
      ########################################################################################
      def self.fueporu(location_x, location_y, location_z, height_drop)
        location_x  = location_x.to_i
        location_y  = location_y.to_i
        location_z  = location_z.to_i
        height_drop = height_drop.to_i

        average_height       = 20
  
        if    height_drop > average_height
          percentage = average_height / height_drop
  
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Average height is #{percentage} of height drop at #{height_drop} feet.' ],"
        elsif height_drop < average_height
          percentage = height_drop / average_height

          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop is #{percentage} percentage of average height in #{average_height} feet' ],"
        else
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop and Average Height is of the same height.' ],"
        end
      end

      # fagyka'u grana [ firepole ]
      def self.fuegrana(location_x, location_y, location_z, height_drop)
        location_x  = location_x.to_i
        location_y  = location_y.to_i
        location_z  = location_z.to_i
        height_drop = height_drop.to_i

        average_height       = 20
  
        if    height_drop > average_height
          percentage = average_height / height_drop
  
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Average height is #{percentage} of height drop at #{height_drop} feet.' ],"
        elsif height_drop < average_height
          percentage = height_drop / average_height

          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop is #{percentage} percentage of average height in #{average_height} feet' ],"
        else
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop and Average Height is of the same height.' ],"
        end
      end

      def self.cavern_perimeter(pole_size, building_height)
        if pole_size > building_height
          under_layer = building_height - pole_size

          "From the main floor, the fire pole is #{under_layer} feet underground."
        else
          "The size of the fire pole fits within the size of the building."
        end
      end
    end
  end

  module RankDialogue
    class SamosDialogue
      ## Theoretical, such as if someone became a diety.
      def self.subterfuge(clause_one, clause_two)
        "#{clause_one}, #{clause_two}."
      end

      def self.underling(clause_one, clause_two)
        "#{clause_one}, #{clause_two}."
      end

      def self.vos(verb, object, subject)
        "#{verb} #{object} #{subject}"
      end

      def self.osv(object, subject, verb)
        "#{object} #{subject} #{verb}"
      end

      def self.ovs(object, verb, subject)
        "#{object} #{verb} #{subject}"
      end

      def self.sov(subject, object, verb)
        "#{subject} #{object} #{verb}"
      end
    end
  end

  module BodyArmor
    class Cockpit
      def self.board_wheelchair(agent_name, robot_color)
        "#{agent_name} boards the chair of the cockpit that is color #{robot_color}."
      end

      def self.shoot_guillotine_blade(enemy_name, guilotine_color)
        "#{enemy_name} is shot with the guillotine blade that is colored #{guilotine_color}."
      end

      ## Domestic Tasks
      def self.deliver_coffee(customer)
        "Coffee is delivered to #{customer}."
      end

      def self.deliver_package(package_name, customer)
        "#{package_name} delivered to #{customer}."
      end

      def self.analyze_coordinates(y, z, agent_name)
        "Agent name is location on Y #{y} and X #{x}"
      end
    end

    class Breaks
      def self.drink_coffee(agent_name, coffee_variety, flavor_notes)
        "#{agent_name} drinks coffee from #{coffee_variety}. The flavor is #{flavor_notes}"
      end

      def self.eat_food(agent_name, food_name)
        "#{agent_name} eats #{food_name}."
      end

      def self.try_on_shoes(agent_name, footwear_name, footwear_color)
        "#{agent_name} window shops for #{footwear_name} of color #{footwear_color}."
      end
    end
  end

  module Region
    class UndergroundCity
      def self.battle(insurgent_name)
        puts "Le homme / femme #{insurgent_name} est en le batailles."
      end
    end

    class Prison
      def self.guillotine(executee)
        puts "Le homme / femme #{executee} avoir ne tete pour le guillotine."
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
      def self.moi(directive)
        "#{directive} moi."
      end

      def self.toi(directive)
        "#{directive} toi."
      end

      def self.ils(directive)
        "#{directive} ils."
      end

      def self.elles(directive)
        "#{directive} elles."
      end

      def self.noi(directive)
        "#{directive} noi."
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
      end
    end
  end

  module GameDevElements
    class InputMechanics
      def self.sangehommage(prompt)
        print "#{prompt} "; read_line = gets.not_nil!.chomp
      end

      def self.parle_merci(prompt, output)
        print "#{prompt} "; puts output
      end
    end
  end

  module HikasaAwasunu
    class Mperiod
      #######################################################################################
      #                                    Medusahoseki                                     #
      #######################################################################################
      def self.proximity_de_medusahoseki(a, b)
        maximum_distance     = b
        distance_probability = a
  
        calculation = maximum_distance - ( maximum_distance * distance_probability )
        calculation = calculation.round
  
        "Distance from Medusahoseki ( Medusa Gem ): #{calculation}"
      end

      def self.proximity_de_nemedusahoseki(a, b)
        maximum_distance     = b
        distance_probability = 1 - a
  
        calculation = maximum_distance - ( maximum_distance * distance_probability )
        calculation = calculation.round
  
        "Distance from Nemedusahoseki ( Salamander Riding Goat ): #{calculation}"
      end

      def self.proximity_de_memorie(a)
        year_period = 12
  
        calculation = 12 - ( 12 * a )
        calculation = calculation.round
  
        "This memory was from a prior #{calculation} year period"
      end

      def self.mperiod_sprox(a, b)
        "#{a} #{b.upcase}"
      end

      ################################################################################################
      #                                         Use Case                                             #
      ################################################################################################
      # Suppose two people wanted to cover up two dead bodies: one is the dead girlfriend of the     #
      # main character, the other is the brother whom murdered the girlfriends brother having        #
      # placing his unconscious body in a rail road, so blood isn't on his hands.                    #
      #                                                                                              #
      # This aims to solve how you investigate a case where the reality of one victim is not         #
      # and one of the victims doesn't actually exist. The other is not murdered directly by the     #
      # perpetrator.                                                                                 #
      ################################################################################################
      def self.first_murder(victim_name, victim_method, case_status, victim_real)
        "#{victim_name}, #{victim_method}, #{case_status}] REALITY: #{victim_real}"
      end
  
      def self.second_murder(victim_name, victim_method, case_status, victim_real)
        "#{victim_name}, #{victim_method}, #{case_status}] REALITY: #{victim_real}"
      end
	
      def self.investigate_case(a1, a2, b1, b2, c1, c2)
        2.times do
          Obelisk::NeuroSymbolic::BasicML.get_statistics(a1, a2,
                                                         b1, b2,
                                                         c1, c2)
      
          Obelisk::NeuroSymbolic::BasicML.dynamic_mode_switcher

          current_probability = File.read("data/statistics/probability/current_probability.txt").to_f
          current_information = File.read("data/statistics/label/current_information.txt")

          puts "#{current_information} #{current_probability}"
        end
      end

      ########################################################################################
      #                         Fueporu Et Perimetre De La Caverne                           #
      ########################################################################################
      # Evaluating the descrepancy between the height of the firepole and the height of the  #
      # building to determine how much of the firepole in fact goes underground, and analyze #
      # the cavern perimeter.                                                                #
      ########################################################################################
      def self.fueporu(location_x, location_y, location_z, height_drop)
        location_x  = location_x.to_i
        location_y  = location_y.to_i
        location_z  = location_z.to_i
        height_drop = height_drop.to_i

        average_height       = 20
  
        if    height_drop > average_height
          percentage = average_height / height_drop
  
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Average height is #{percentage} of height drop at #{height_drop} feet.' ],"
        elsif height_drop < average_height
          percentage = height_drop / average_height

          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop is #{percentage} percentage of average height in #{average_height} feet' ],"
        else
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop and Average Height is of the same height.' ],"
        end
      end

      # fagyka'u grana [ firepole ]
      def self.fuegrana(location_x, location_y, location_z, height_drop)
        location_x  = location_x.to_i
        location_y  = location_y.to_i
        location_z  = location_z.to_i
        height_drop = height_drop.to_i

        average_height       = 20
  
        if    height_drop > average_height
          percentage = average_height / height_drop
  
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Average height is #{percentage} of height drop at #{height_drop} feet.' ],"
        elsif height_drop < average_height
          percentage = height_drop / average_height

          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop is #{percentage} percentage of average height in #{average_height} feet' ],"
        else
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop and Average Height is of the same height.' ],"
        end
      end

      def self.cavern_perimeter(pole_size, building_height)
        if pole_size > building_height
          under_layer = building_height - pole_size

          "From the main floor, the fire pole is #{under_layer} feet underground."
        else
          "The size of the fire pole fits within the size of the building."
        end
      end
    end
  end

  module RankDialogue
    class ChanosDialogue
      ## Theoretical, such as if someone became a diety.
      def self.subterfuge(clause_one, clause_two)
        "#{clause_one}, #{clause_two}."
      end

      def self.underling(clause_one, clause_two)
        "#{clause_one}, #{clause_two}."
      end

      def self.vos(verb, object, subject)
        "#{verb} #{object} #{subject}"
      end

      def self.osv(object, subject, verb)
        "#{object} #{subject} #{verb}"
      end

      def self.ovs(object, verb, subject)
        "#{object} #{verb} #{subject}"
      end

      def self.sov(subject, object, verb)
        "#{subject} #{object} #{verb}"
      end
    end
  end

  module BodyArmor
    class Cockpit
      def self.board_wheelchair(agent_name, robot_color)
        "#{agent_name} boards the chair of the cockpit that is color #{robot_color}."
      end

      def self.shoot_guillotine_blade(enemy_name, guilotine_color)
        "#{enemy_name} is shot with the guillotine blade that is colored #{guilotine_color}."
      end

      ## Domestic Tasks
      def self.deliver_coffee(customer)
        "Coffee is delivered to #{customer}."
      end

      def self.deliver_package(package_name, customer)
        "#{package_name} delivered to #{customer}."
      end

      def self.analyze_coordinates(y, z, agent_name)
        "Agent name is location on Y #{y} and X #{x}"
      end
    end

    class Breaks
      def self.drink_coffee(agent_name, coffee_variety, flavor_notes)
        "#{agent_name} drinks coffee from #{coffee_variety}. The flavor is #{flavor_notes}"
      end

      def self.eat_food(agent_name, food_name)
        "#{agent_name} eats #{food_name}."
      end

      def self.try_on_shoes(agent_name, footwear_name, footwear_color)
        "#{agent_name} window shops for #{footwear_name} of color #{footwear_color}."
      end
    end
  end

  module Region
    class UndergroundCity
      def self.battle(insurgent_name)
        puts "Le homme / femme #{insurgent_name} est en le batailles."
      end
    end

    class Prison
      def self.guillotine(executee)
        puts "Le homme / femme #{executee} avoir ne tete pour le guillotine."
      end
    end
  end
end

module Tunos
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
      def self.moi(directive)
        "#{directive} moi."
      end

      def self.toi(directive)
        "#{directive} toi."
      end

      def self.ils(directive)
        "#{directive} ils."
      end

      def self.elles(directive)
        "#{directive} elles."
      end

      def self.noi(directive)
        "#{directive} noi."
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
      end
    end
  end

  module GameDevElements
    class InputMechanics
      def self.sangehommage(prompt)
        print "#{prompt} "; read_line = gets.not_nil!.chomp
      end

      def self.parle_merci(prompt, output)
        print "#{prompt} "; puts output
      end
    end
  end

  module HikasaAwasunu
    class Mperiod
      #######################################################################################
      #                                    Medusahoseki                                     #
      #######################################################################################
      def self.proximity_de_medusahoseki(a, b)
        maximum_distance     = b
        distance_probability = a
  
        calculation = maximum_distance - ( maximum_distance * distance_probability )
        calculation = calculation.round
  
        "Distance from Medusahoseki ( Medusa Gem ): #{calculation}"
      end

      def self.proximity_de_nemedusahoseki(a, b)
        maximum_distance     = b
        distance_probability = 1 - a
  
        calculation = maximum_distance - ( maximum_distance * distance_probability )
        calculation = calculation.round
  
        "Distance from Nemedusahoseki ( Salamander Riding Goat ): #{calculation}"
      end

      def self.proximity_de_memorie(a)
        year_period = 12
  
        calculation = 12 - ( 12 * a )
        calculation = calculation.round
  
        "This memory was from a prior #{calculation} year period"
      end

      def self.mperiod_sprox(a, b)
        "#{a} #{b.upcase}"
      end

      ################################################################################################
      #                                         Use Case                                             #
      ################################################################################################
      # Suppose two people wanted to cover up two dead bodies: one is the dead girlfriend of the     #
      # main character, the other is the brother whom murdered the girlfriends brother having        #
      # placing his unconscious body in a rail road, so blood isn't on his hands.                    #
      #                                                                                              #
      # This aims to solve how you investigate a case where the reality of one victim is not         #
      # and one of the victims doesn't actually exist. The other is not murdered directly by the     #
      # perpetrator.                                                                                 #
      ################################################################################################
      def self.first_murder(victim_name, victim_method, case_status, victim_real)
        "#{victim_name}, #{victim_method}, #{case_status}] REALITY: #{victim_real}"
      end
  
      def self.second_murder(victim_name, victim_method, case_status, victim_real)
        "#{victim_name}, #{victim_method}, #{case_status}] REALITY: #{victim_real}"
      end
	
      def self.investigate_case(a1, a2, b1, b2, c1, c2)
        2.times do
          Obelisk::NeuroSymbolic::BasicML.get_statistics(a1, a2,
                                                         b1, b2,
                                                         c1, c2)
      
          Obelisk::NeuroSymbolic::BasicML.dynamic_mode_switcher

          current_probability = File.read("data/statistics/probability/current_probability.txt").to_f
          current_information = File.read("data/statistics/label/current_information.txt")

          puts "#{current_information} #{current_probability}"
        end
      end

      ########################################################################################
      #                         Fueporu Et Perimetre De La Caverne                           #
      ########################################################################################
      # Evaluating the descrepancy between the height of the firepole and the height of the  #
      # building to determine how much of the firepole in fact goes underground, and analyze #
      # the cavern perimeter.                                                                #
      ########################################################################################
      def self.fueporu(location_x, location_y, location_z, height_drop)
        location_x  = location_x.to_i
        location_y  = location_y.to_i
        location_z  = location_z.to_i
        height_drop = height_drop.to_i

        average_height       = 20
  
        if    height_drop > average_height
          percentage = average_height / height_drop
  
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Average height is #{percentage} of height drop at #{height_drop} feet.' ],"
        elsif height_drop < average_height
          percentage = height_drop / average_height

          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop is #{percentage} percentage of average height in #{average_height} feet' ],"
        else
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop and Average Height is of the same height.' ],"
        end
      end

      # fagyka'u grana [ firepole ]
      def self.fuegrana(location_x, location_y, location_z, height_drop)
        location_x  = location_x.to_i
        location_y  = location_y.to_i
        location_z  = location_z.to_i
        height_drop = height_drop.to_i

        average_height       = 20
  
        if    height_drop > average_height
          percentage = average_height / height_drop
  
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Average height is #{percentage} of height drop at #{height_drop} feet.' ],"
        elsif height_drop < average_height
          percentage = height_drop / average_height

          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop is #{percentage} percentage of average height in #{average_height} feet' ],"
        else
          "[ :le_feuporu, #{location_x}, #{location_y}, #{location_z}, 'Height Drop and Average Height is of the same height.' ],"
        end
      end

      def self.cavern_perimeter(pole_size, building_height)
        if pole_size > building_height
          under_layer = building_height - pole_size

          "From the main floor, the fire pole is #{under_layer} feet underground."
        else
          "The size of the fire pole fits within the size of the building."
        end
      end
    end
  end

  module RankDialogue
    class TunosDialogue
      ## Theoretical, such as if someone became a diety.
      def self.subterfuge(clause_one, clause_two)
        "#{clause_one}, #{clause_two}."
      end

      def self.underling(clause_one, clause_two)
        "#{clause_one}, #{clause_two}."
      end

      def self.vos(verb, object, subject)
        "#{verb} #{object} #{subject}"
      end

      def self.osv(object, subject, verb)
        "#{object} #{subject} #{verb}"
      end

      def self.ovs(object, verb, subject)
        "#{object} #{verb} #{subject}"
      end

      def self.sov(subject, object, verb)
        "#{subject} #{object} #{verb}"
      end
    end
  end

  module BodyArmor
    class Cockpit
      def self.board_wheelchair(agent_name, robot_color)
        "#{agent_name} boards the chair of the cockpit that is color #{robot_color}."
      end

      def self.shoot_guillotine_blade(enemy_name, guilotine_color)
        "#{enemy_name} is shot with the guillotine blade that is colored #{guilotine_color}."
      end

      ## Domestic Tasks
      def self.deliver_coffee(customer)
        "Coffee is delivered to #{customer}."
      end

      def self.deliver_package(package_name, customer)
        "#{package_name} delivered to #{customer}."
      end

      def self.analyze_coordinates(y, z, agent_name)
        "Agent name is location on Y #{y} and X #{x}"
      end
    end

    class Breaks
      def self.drink_coffee(agent_name, coffee_variety, flavor_notes)
        "#{agent_name} drinks coffee from #{coffee_variety}. The flavor is #{flavor_notes}"
      end

      def self.eat_food(agent_name, food_name)
        "#{agent_name} eats #{food_name}."
      end

      def self.try_on_shoes(agent_name, footwear_name, footwear_color)
        "#{agent_name} window shops for #{footwear_name} of color #{footwear_color}."
      end
    end
  end

  module Region
    class UndergroundCity
      def self.battle(insurgent_name)
        puts "Le homme / femme #{insurgent_name} est en le batailles."
      end
    end

    class Prison
      def self.guillotine(executee)
        puts "Le homme / femme #{executee} avoir ne tete pour le guillotine."
      end
    end
  end
end

module Kunos
  # Needs a formal way of Generating data and user strings.

  module RankDialogue
    class KunosDialogue
      ## Theoretical, such as if someone became a diety.
      def self.subterfuge(clause_one, clause_two)
        "#{clause_one}, #{clause_two}."
      end

      def self.underling(clause_one, clause_two)
        "#{clause_one}, #{clause_two}."
      end

      def self.vos(verb, object, subject)
        "#{verb} #{object} #{subject}"
      end

      def self.osv(object, subject, verb)
        "#{object} #{subject} #{verb}"
      end

      def self.ovs(object, verb, subject)
        "#{object} #{verb} #{subject}"
      end

      def self.sov(subject, object, verb)
        "#{subject} #{object} #{verb}"
      end
    end
  end

  module BodyArmor
    class Cockpit
      def self.board_wheelchair(agent_name, robot_color)
        "#{agent_name} boards the chair of the cockpit that is color #{robot_color}."
      end

      def self.shoot_guillotine_blade(enemy_name, guilotine_color)
        "#{enemy_name} is shot with the guillotine blade that is colored #{guilotine_color}."
      end

      ## Domestic Tasks
      def self.deliver_coffee(customer)
        "Coffee is delivered to #{customer}."
      end

      def self.deliver_package(package_name, customer)
        "#{package_name} delivered to #{customer}."
      end

      def self.analyze_coordinates(y, z, agent_name)
        "Agent name is location on Y #{y} and X #{x}"
      end
    end

    class Breaks
      def self.drink_coffee(agent_name, coffee_variety, flavor_notes)
        "#{agent_name} drinks coffee from #{coffee_variety}. The flavor is #{flavor_notes}"
      end

      def self.eat_food(agent_name, food_name)
        "#{agent_name} eats #{food_name}."
      end

      def self.try_on_shoes(agent_name, footwear_name, footwear_color)
        "#{agent_name} window shops for #{footwear_name} of color #{footwear_color}."
      end
    end
  end

  module Region
    class UndergroundCity
      def self.battle(insurgent_name)
        puts "Le homme / femme #{insurgent_name} est en le batailles."
      end
    end

    class Prison
      def self.guillotine(executee)
        puts "Le homme / femme #{executee} avoir ne tete pour le guillotine."
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

#### Ninhongo Parlez-Vous
def self.seibetsu(word_class)
  "#{word_class}"
end

def self.ejento(agent_name)
  "#{agent_name}"
end

def self.keiyoshi(adjective)
  "#{adjective}"
end

def self.shudai(subject)
  "#{subject}"
end

def self.doshi(action)
  "#{action}"
end

def self.fukishi(adverb)
  "#{adverb}"
end

def self.nihongo(arg1, arg2, arg3, arg4, arg5, arg6)
  encrireln("#{arg1} #{arg2} #{arg3} #{arg4} #{arg5} #{arg6}")
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

################################################################################################
#                                        French Actions                                        #
################################################################################################
def mange(a, b)
  "Mange un #{a} en #{b}."
end

def coupe(a, b)
  "Coupe un #{a} en #{b}."
end

def cuicre(a, b)
  "Cuicre un #{a} en #{b}."
end

def baguette(a, b)
  "Baguette un #{a} en #{b}."
end

def guillotine(verb, subject)
  "Guillotine #{verb} #{subject}."
end

def ax_head(verb, subject)
  "Tete Du Crescent #{verb} #{subject}."
end

def roboparle(verb, subject)
  "Le robo #{verb} #{subject}."
end

def parle_a_robo(object, subject, verb, your_name)
  "#{your_name}: #{subject} #{verb} #{object}"
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

def sint(assertion, lower_boundary, upper_boundary)
  bot_name = %Q(BIANCA)

  sinon_nombre = Proc.new { | x, first_interval, second_interval |
    x > first_interval && x < second_interval ? %Q(#{bot_name}: #{x} is floating between boundary conditions #{first_interval} and #{second_interval}.) : %Q(#{bot_name}: #{x} is not floating between boundary conditions #{first_interval} and #{second_interval}.)
  }

  puts sinon_nombre.call(assertion, lower_boundary, upper_boundary)
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
  if color.nil? or shape.nil? or size.nil?
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
  if color.nil? or shape.nil? or size.nil?
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
  if color.nil? or shape.nil? or size.nil?
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
  if color.nil? or shape.nil? or size.nil?
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

################################################################################################
#                                Who What When Where Why How                                   #
################################################################################################
def self.nom(a)
  "Mes nom est #{a}."
end

def self.buttai(b)
  "C'est un/une #{b}."
end

def self.temps(c)
  "Le temp est #{c}."
end

def fukin(d)
  "Je suis en le voisinage de #{d}."
end

def self.motif(e)
  "Mes raison pour ce est #{e}."
end

def self.hono(f)
  "Mois methode pour le fabrication mes objectifs est #{f}."
end

def self.jiko(a, b, c)
  "Vous avoir damande moi #{a} a propos #{b} par #{c}."
end

## Unite specific people at a time and place
def self.unir(a, b, c)
  "Je avoir unif avec #{a} avec #{b} a #{c}."
end

def self.genkei(a)
  "Je suis un etudiant a propos #{a}."
end

def self.musee_comprime(a)
  "cette musee comprime #{a}."
end

def self.noremodei(a)
  "Cette #{a} est noermodeios."
end

def self.ninom(a)
  "Mes nom est ne #{a}."
end

def self.nibuttai(b)
  "C'est non un/une #{b}."
end

def self.netemps(c)
  "Le temp est ne #{c}."
end

def self.nifukin(d)
  "Je suis ne en le voisinage de #{d}."
end

def self.nemotif(e)
  "Mes raison pour ce est ne #{e}."
end

def self.nihono(f)
  "Mois methode pour le fabrication mes objectifs est ne #{f}."
end

## Disunification
def self.neunir(a, b, c)
  "Je ne avoir unif avec #{a} avec #{b} a #{c}."
end

def self.nijiko(a, b, c)
  "Vous ne avoir damande moi #{a} a propos #{b} par #{c}."
end

def self.nigenkei(a)
  "Je suis ne un etudiant a propos #{a}."
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
          stockings(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3])
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

def generate_repl
  awasunu = %{
#################################################################################
#                                     REPL                                      #
#################################################################################
# This is for prototyping the scripting language as its developing, while being #
# phased out for the reading from a script.                                     #
#################################################################################
def repl
  system("clear")
  puts "Welcome to Nuerisupu, compiled on Linux using Crystal."

  loop do
    print " >>> "; dispatcher = gets.chomp

    dispatcher = dispatcher.tr "(", ""
    dispatcher = dispatcher.tr ")", ""
    dispatcher = dispatcher.tr %Q("), %Q()
    dispatcher = dispatcher.split(" ")

    ## Basic Mechanics
    if    dispatcher[0] == "enc"
      encrire(dispatcher[1])
    elsif dispatcher[0] == "elg"
      encrireln(dispatcher[1])
    elsif dispatcher[0] == "nai"
      encrire(nai(dispatcher[1], dispatcher[2]))
    elsif dispatcher[0] == "shikashi"
      encrire(shikashi(dispatcher[1])
    elsif dispatcher[0] == "ne"
      encrire(nai(dispatcher[1], dispatcher[2]))
    elsif dispatcher[0] == "mais"
      encrireln(nai(dispatcher[1]))

    ## Complex Mechanics
    elsif dispatcher[0] == "ccf"
      get_radius           = dispatcher[0].to_i
      circumference_values = calculate_circumference(get_radius)

      canon_power       = dispatcher[1].to_i
      established_canon = dispatcher[2]
      counterfactual    = dispatcher[3]

      encrire(asoka(circumference_values[2], calculate_depth(circumference_values[2], 6), canon_power, established_canon, counterfactual))
      encrireln(" ")

    ## Clearing screen and exiting the system.
    elsif dispatcher[0] == "vio"
      system("clear")
    elsif dispatcher[0] == "ext"
      abort
    else
      puts "Error: Non fonction nom."
    end
  end
end
  }

  File.open("nuerisupu.cr", "w") { |f|
    f.puts awasunu
  }
end
