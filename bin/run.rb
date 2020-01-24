require_relative '../config/environment'


cli = CommandLineInterface.new
quit = false
cli.opening



while quit == false
    select_forest = cli.select_forest
    forest_map = Forest.all.map {|forest| forest.location}

    forest_name = forest_map[select_forest-1]

    chosen_method = cli.methods

        if chosen_method == "1"
            forest = Forest.find_by(location: forest_name)
            forest.see_trees
        end

        if chosen_method == "2"
            plant_tree(forest_name)

        end

        if chosen_method == "3"
            forest = Forest.find_by(location: forest_name)
            forest.windy
        end

        if chosen_method == "4"
            forest = Forest.find_by(location: forest_name)
            forest.spring
        end

        if chosen_method == "5"
            forest = Forest.find_by(location: forest_name)
            forest.summer
        end

        if chosen_method == "6"
            forest = Forest.find_by(location: forest_name)
            forest.autumn
        end

        if chosen_method == "7"
            forest = Forest.find_by(location: forest_name)
            forest.winter
        end

        if chosen_method == "8"
            forest = Forest.find_by(location: forest_name)
            forest.density
        end

        if chosen_method == "9"
            forest = Forest.find_by(location: forest_name)
            forest.average_coverage
        end

        if chosen_method == "10"
            forest = Forest.find_by(location: forest_name)
            forest.chop
        end

        if chosen_method == "11"
            forest = Forest.find_by(location: forest_name)
            forest.chopchopchop
        end

        # if chosen_method == "12"
        #     bushfire
        # end

    


end











# working 
# windy("Delamere Forest")
# autumn("Sherwood Forest")
# winter("Sherwood Forest")
# summer("Sherwood Forest")
# spring("Dalby Forest")
# plant_tree
# see_trees("Dalby Forest")

