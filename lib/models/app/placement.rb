class Placement < ActiveRecord::Base

    belongs_to :forest
    belongs_to :tree


    # def plant_tree(forest_name)
    #     puts 'Wanna help the (virtual) planet and plant and tree? You even get to name it! (Y/N)'
    #     input = gets.chomp
    #     if input == "Y" || input == 'y'
    #         puts "What's this lil fella's name?"
    #         input1 = gets.chomp
    #         puts "Have you uprooted an oldie? How many rings does it have?" #Or leave blank to default to 0. --> how to add? 
    #         input2 = gets.chomp.to_i.clamp(0,1000)
    #         puts "What type of tree is it? Evergreen, it never loses it's leaves, or Deciduous, it loses it's leaves and grows new ones. (E/D)"
    #         input3 = gets.chomp
    #         if input3 == "E" || input3 == "e"
    #             input3 = "Evergreen"
    #         elsif input3 == "D" || input3 == "d"
    #             input3 = "Deciduous"
    #         end
    #             puts "On an arbitarty scale of 1 to 10, how many leaves does it have?"
    #             input4 = gets.chomp.to_i.clamp(0,10)
    
    #             t1 = Tree.create(name: input1, age: input2, type_of_tree: input3, coverage: input4)
                
    #             chosen_forest = nil
                
    #             while chosen_forest == nil
    #                 forests = Forest.all.map {|forest| forest.location}
                    
    #                 chosen_forest = Forest.find_by(location: forest_name)
    #                 f1 = chosen_forest
    #                 if chosen_forest == nil
    #                     puts "Oops! It looks like that forest doesn't exist"
    #                 end
            
    #                 p1 = Placement.create(tree_id: t1.id, forest_id: f1.id)
                
    #                 p1
    #                 puts "----------------------------------------------------------------------"
    #                 puts "Success, " + input1 + ", the tree, was planted in " + forest_name + "."
    #                 puts "----------------------------------------------------------------------"
    #             end
    
    #     elsif input == "N" || input == "n"
    #         puts "-----------------------------------------"
    #         puts "That's cool, just here to appreciate."
    #         puts "-----------------------------------------"
    #         puts "
    #                 ,@@@@@@@,
    #         ,,,.   ,@@@@@@/@@,  .oo8888o.
    #      ,&%%&%&&%,@@@@@/@@@@@@,8888\88/88o
    #     ,%&\%&&%&&%,@@@\@@@/@@@88\88888/88888o'
    #     %&&%&%&/%&&%@@\@@/ /@@@88888\888888o'
    #     %&&%/ %&%%&&@@\ V /@@' `88\8 `/88'
    #     `&%\ ` /%&'     |.|        \ '|8'
    #         |o|        | |         | |
    #         |.|        | |         | |
    #         \/ ._\//_/__/  ,\_//__\\/.  \_//__/_
    #         "
    
    #     else 
    #         puts "ACCESS DENIED UNTIL YOU TOE THE LINE"
    #     end
    
    # end
    
    
end
