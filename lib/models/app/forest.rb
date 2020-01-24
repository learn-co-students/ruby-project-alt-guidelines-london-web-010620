class Forest < ActiveRecord::Base

    has_many :placements
    has_many :trees, through: :placements

    def see_trees
        # t0 = Forest.find_by(location: forest_name).trees
        puts "--------------------------------------------------------------------------------"
        self.trees.each do |tree|
            puts "Name: " + tree.name.to_s + "," +
             " Age: " + tree.age.to_s + "," +
             " Type of tree: " + tree.type_of_tree.to_s + "," +
             " Coverage: " +tree.coverage.to_s
             puts "---------------------------------------------------------------------------"
        end
    end

    def windy
        puts "Woosh Wooosh"
        # f1 = Forest.find_by(location: forest_name).trees
        self.trees.each do |tree| 
            new_value = (tree.coverage - 3).clamp(0,7)
           tree.update(coverage: new_value)
        end
        # binding.pry
        puts "All trees in the forest feel a little bit more naked"
    end

    def autumn
        puts "Deciduous trees are losing their leaves!"
        # f1 = Forest.find_by(location: forest_name)
        self.trees.each do |tree|
           if tree.type_of_tree == "Deciduous"
             new_value = (tree.coverage - 4).clamp(0,5)
             tree.update(coverage: new_value)
           else  
             puts "This is an evergreen."
           end
        end  
        puts "Some trees lost some leaves"  
    end
    
    def winter
        puts "brrrh"
        # f1 = Forest.find_by(location: forest_name)
        self.trees.each do |tree|
           if tree.type_of_tree == "Deciduous"
             new_value = (tree.coverage = 0)
             tree.update(coverage: new_value)
           else  
             puts "This is an evergreen."
           end 
        end  
        puts "Some trees are bare." 
    end
    
    def summer
        puts "Time to listen to acid rap under a shady tree"
        # f1 = Forest.find_by(location: forest_name)
        self.trees.each do |tree|
           if tree.type_of_tree == "Deciduous"
             new_value = (tree.coverage = 10).clamp(0,10)
             tree.update(coverage: new_value)
           else  
             puts "This is an evergreen."
           end 
        end 
        puts "Forest full bloom"  
    end
    
    def spring
        puts "The forest is waking up."
        # f1 = Forest.find_by(location: forest_name)
        self.trees.each do |tree|
           if tree.type_of_tree == "Deciduous"
             new_value = (tree.coverage + 4).clamp(0,10)
             tree.update(coverage: new_value)
             puts "This is a deciduous, its got lots of new leave!"
           elsif tree.type_of_tree == "Evergreen"
            new_value2 = (tree.coverage + 1).clamp(0,10)
            tree.update(coverage: new_value2)
            puts "This is an evergreen, its got some new leaves!"
           end  
        end
        puts "-------------------------------"  
        puts 'Forest is starting to bloom.'
    end
    
    
    def density #find the number of trees per unit of size
        f1 = self.size
        f2 = self.trees.all.count
        dens = f1/f2
        puts "--------------------------------"
        puts "the tree per 'size' is #{dens}"
        puts "--------------------------------"
    end
    
    def average_coverage #finds the average coverage of a forest
        f1 = self.trees
        f2 = f1.map {|trees| trees.coverage}
        f3 = f2.sum.to_f
        f4 = f2.count
        f5 = f3/f4
        puts "-------------------------------------------------------"
        puts "the average leaf-age in this forest is #{f5} per tree"
        puts "-------------------------------------------------------"
    end
    
    def chop
      f1 = self.trees
      f1.destroy
      puts "---------------------------------"
      puts "You chopped down a random tree"
      puts "---------------------------------"
    end

    
    def chopchopchop #chops down and entire forest
      puts "-----------------------"
      puts "lumberjack incoming"
      puts "-----------------------"
      f1 = self
      f1.trees.destroy
      # f1.placements.destroy
      f1.destroy
      puts "---------------------------"
      puts "The forest is no more :("
      puts "---------------------------"
    end

    # def bushfire
    #   `open https://google.com`
    # end

    

end
