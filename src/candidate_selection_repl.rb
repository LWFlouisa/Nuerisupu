# Note this says Ruby but its valid crystal, Github is messing up syntax highlighting.
class AIRepl
  def self.interpret(file_name)
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
          elsif parsed_tokens[0] == "sel"
            Counterfactuals.evaluate(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3], parsed_tokens[4], parsed_tokens[5], parsed_tokens[6])
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

  def self.find_candidate
    ## Determining user data and user choice.
    value = File.read("_input/user/user_choice.txt").to_s.to_i

    user_data   = File.read_lines("_data/user/candidates.txt")
    user_choice = user_data[value]

    ## Processing AI focused data
    ai_choice            = File.read("_data/ai/ai_choice.txt").to_s.to_i
    ai_initial_candidate = user_data[ai_choice]
    ai_search_limit      = user_data.size.to_i

    ## Create AI data from user data.
    ai_search_limit.times do
      if ai_choice == user_choice
        puts "The specific candidate was found. Terminating selection..."

        ai_data      = user_data[ai_choice] #.slice!(ai_choice)

        File.open("_data/ai/confirmed_selections.txt", "a") { |f|
          f.puts ai_data
        }
      else
        puts "The specific candidate is not found..."
      end
    end

    ## AI choosing from confirmed selections.
    ai_choice            = File.read("_data/ai/ai_choice.txt").to_s.to_i
    ai_confirmed         = File.readlines("_data/ai/confirmed_selections.txt")
    ai_search_limit      = ai_data.size.to_i
    ai_next_candidate    = ai_data[ai_choice]

    ai_search_limit.times do
      if ai_next_candidate == user_choice
        ai_final_candidate = ai_next_candidate
    
        puts "Candidate found, processing input..."; sleep(1)

        # Generates an Awasunu or Naked Lisp script based on final candidate.
        File.open("_data/ai/ai_scripts/script.awa", "a") { |f|
          f.puts ai_final_candidate
        }

        AIRepl.interpret("_data/ai/ai_scripts/script.awa")

        # Confirming the AI's selection.
        File.open("_data/ai/confirmed_candidate.txt", "a") { |f|
          f.puts ai_confirmed
        }
      else
        puts "Candidate is not yet found..."

        ai_choice         = File.read("_data/ai/ai_choice.txt").to_s.to_i
        ai_candidates     = File.readlines("_data/ai/candidates.txt")
        ai_search_limit   = ai_candidates.size.to_i
        ai_next_candidate = ai_candidates[ai_choice]

        ai_data      = user_data.slice!(ai_choice)

        open("_data/ai/candidates.txt", "w") { |f|
          f.puts ai_next_candidate
        }
      end

      ai_choice = ai_choice + 1
    end
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

    AIRepl.find_candidate
  end
end
