class CommandLineInterface 

    def opening
        puts "
        _______  ______    _______  _______  __   __  __   __  _______  _______  _______  ______   
        |       ||    _ |  |       ||       ||  | |  ||  | |  ||       ||       ||       ||    _ |  
        |_     _||   | ||  |    ___||    ___||  |_|  ||  | |  ||    ___||    ___||    ___||   | ||  
          |   |  |   |_||_ |   |___ |   |___ |       ||  |_|  ||   | __ |   | __ |   |___ |   |_||_ 
          |   |  |    __  ||    ___||    ___||       ||       ||   ||  ||   ||  ||    ___||    __  |
          |   |  |   |  | ||   |___ |   |___ |   _   ||       ||   |_| ||   |_| ||   |___ |   |  | |
          |___|  |___|  |_||_______||_______||__| |__||_______||_______||_______||_______||___|  |_|    
    "
    puts "Welcome to TreeHugger (a different one), the best resource for fictitious tree and forest information on the 7th floor of WeWork Moorgate!"
    end

    def select_forest
        puts "Enter a number to visit the corresponding forest."

        Forest.all.each_with_index do |forest, index|
            number = index + 1 #make it human readable

            puts number.to_s + ". " + forest.location
        end
       
        input = gets.chomp.to_i

        forest = Forest.all[input - 1] #return correct array index
        puts "--------------------------------"
        puts "You are in #{forest.location}"
        puts "--------------------------------"
        input
    end

    # tree_instance = Tree.create
    # tree_instance.method

    def methods
        puts "Enter a number to make an action"
        puts "
        1. See all the trees
        2. Plant a tree
        3. Send some wind
        4. Set it to Spring
        5. Set to Summer
        6. Set to Auntumn
        7. Set to Winter
        8. See density
        9. See average _leaf-age_
        10. Chop down a tree
        11. Chop down the forest
        12. Bushfire!!!"

        methods_input = gets.chomp
        methods_input

    end
end




