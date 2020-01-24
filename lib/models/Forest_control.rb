
# destroy #destroy forest

# read #view trees in a forest

# update  windy - removes 3 from all tree's coverage in that forest.

# name = gets.chomp

# existing_forest = Forest.find_by(location: name)
 

# if name == existing_forest
#     puts "Sorry, there is already a forest in " + name + " in our records."
# else
# #     puts "And what size is this forest?"
# #     forest_size = gets.chomp.to_i

# #     Forest.create(location: name, size: forest_size)
# #     puts "Success! We've added a forest in " + name + " to our records!"
# # end

# def show_trees(name)
#     result = Forest.find_by(location: name)
#     puts result
# end

# def show_trees(name)
#     t = Forest.find_by(location: name)
#     puts t.trees
# end 







def autumn(forest_name)
    puts "Deciduous trees are losing their leaves!"
    f1 = Forest.find_by(location: forest_name)
    f1.trees.each do |tree|
       if tree.type_of_tree == "Deciduous"
         new_value = (tree.coverage - 5).clamp(0,5)
         tree.update(coverage: new_value)
       else  
         puts "This is an evergreen."
       end
    end  
    puts "Some trees lost some leaves"  
end

def winter(forest_name)
    puts "brrrh"
    f1 = Forest.find_by(location: forest_name)
    f1.trees.each do |tree|
       if tree.type_of_tree == "Deciduous"
         new_value = (tree.coverage = 0)
         tree.update(coverage: new_value)
       else  
         puts "This is an evergreen."
       end 
    end  
    puts "Some trees are bare." 
end

def summer(forest_name)
    puts "Time to listen to acid rap under a shady tree"
    f1 = Forest.find_by(location: forest_name)
    f1.trees.each do |tree|
       if tree.type_of_tree == "Deciduous"
         new_value = (tree.coverage = 10).clamp(0,10)
         tree.update(coverage: new_value)
       else  
         puts "This is an evergreen."
       end 
    end 
    puts "Forest full bloom"  
end

def spring(forest_name)
    puts "The forest is waking up."
    f1 = Forest.find_by(location: forest_name)
    f1.trees.each do |tree|
       if tree.type_of_tree == "Deciduous"
         new_value = (tree.coverage + 5).clamp(0,10)
         tree.update(coverage: new_value)
         puts "This is a deciduous, its got lots of new leave!"
       elsif tree.type_of_tree == "Evergreen"
        new_value2 = (tree.coverage + 1).clamp(0,10)
        tree.update(coverage: new_value2)
        puts "This is an evergreen, its got some new leaves!"
       end  
    end  
    puts 'Forest is starting to bloom.'
end


def density(forest_name) #find the number of trees per unit of size
    f1 = Forest.find_by(location: forest_name).size
    f2 = Forest.find_by(location: forest_name).trees.all.size
    density = f1/f2
    density
end

def average_coverage(forest_name) #finds the average coverage of a forest
    f1 = Forest.find_by(location: forest_name).trees
    f2 = f1.map {|trees| trees.coverage}
    f3 = f2.sum.to_f
    f4 = f2.count
    f5 = f3/f4
    f5
end


def chopchopchop(forest_name) #chops down and entire forest
    puts "lumberjack incoming"
    f1 = Forest.find_by(location: forest_name)
    f1.trees.destroy
    f1.placements.destroy
    f1.destroy
    puts "The forest is no more :("
end

# def bushfire
#     open ("https://mkc.org.au/donations/trcqld?fbclid=IwAR0rr1zoIESFkw4RmHUFzEHF2porTFue3vLc4f0NXCriBPRuOlV17LZQMJY")
# end
