require 'launchy'
# require 'colorize'

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
        puts "Do you want to edit a tree?"
        input = gets.chomp
        if input == "Y" || input == 'y'
          puts "Enter a name to edit (see above)"
          tree_name = gets.chomp
          f1 = self.trees
          found_tree = f1.find_by(name: tree_name)
          puts "You've chose #{found_tree.name}. What would you like to change the name to?"
          new_name = gets.chomp
          found_tree.update(name: new_name)
        elsif input == "N" || input == "n"
          puts "Why'd you bother?"

        else 
          puts "Invalid choice"
        end
    end

    def windy
      puts "---------------"
      puts "Woosh Wooosh".colorize(:light_blue)
      puts "---------------"
      # f1 = Forest.find_by(location: forest_name).trees
      self.trees.each do |tree| 
        new_value = (tree.coverage - 3).clamp(0,7)
        tree.update(coverage: new_value)
      end
        # binding.pry
        puts "All trees in the forest feel a little bit more naked"
    end

    def autumn
        puts "Deciduous trees are losing their leaves!".colorize(:orange)
        # f1 = Forest.find_by(location: forest_name)
        self.trees.each do |tree|
           if tree.type_of_tree == "Deciduous"
             new_value = (tree.coverage - 4).clamp(0,5)
             tree.update(coverage: new_value)
           else  
             puts "This is an evergreen.".colorize(:orange)
           end
        end  
        puts "-----------------------"
        puts "Some trees lost some leaves".colorize(:orange)
        puts "-----------------------"
  
    end
    
    def winter
      puts "-----------------"
      puts "brrrh"
      puts "------------------"
      self.trees.each do |tree|
        if tree.type_of_tree == "Deciduous"
          new_value = (tree.coverage = 0)
          tree.update(coverage: new_value)
        else  
          puts "This is an evergreen and won't lose it's leaves."
        end 
      end
      puts "-------------------------"
      puts "Some trees are bare." 
      puts "-------------------------"
    end
    
    def summer
        puts "Time to listen to acid rap under a shady tree".colorize(:green)
        # f1 = Forest.find_by(location: forest_name)
        self.trees.each do |tree|
           if tree.type_of_tree == "Deciduous"
             new_value = (tree.coverage = 10).clamp(0,10)
             tree.update(coverage: new_value)
           else  
             puts "This is an evergreen."
           end 
        end 
        puts "-----------------------"
        puts "Forest full bloom"  
        puts "-----------------------"
    end
    
    def spring
      puts "-----------------------"
      puts "The forest is waking up.".colorize(:green)
      puts "-----------------------"

        # f1 = Forest.find_by(location: forest_name)
      self.trees.each do |tree|
        if tree.type_of_tree == "Deciduous"
          new_value = (tree.coverage + 4).clamp(0,10)
          tree.update(coverage: new_value)
          puts "This is a deciduous, its got lots of new leave!".colorize(:green)
        elsif tree.type_of_tree == "Evergreen"
          new_value2 = (tree.coverage + 1).clamp(0,10)
          tree.update(coverage: new_value2)
          puts "This is an evergreen, its got some new leaves!".colorize(:green)
          end  
        end
        puts "-------------------------------"  
        puts 'Forest is starting to bloom.'
        puts "-------------------------------"
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
    
    def chop #destroys a random tree
      f1 = self.trees
      f1.destroy
      puts "---------------------------------"
      puts "You chopped down a random tree"
      puts "---------------------------------"
    end

    
    def chopchopchop #chops down and destroys an entire forest
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
end
