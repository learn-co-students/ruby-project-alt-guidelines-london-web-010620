# def plant_tree
#     puts 'Wanna help the (virtual)planet and plant and tree? You get even get to name it! (Y/N)'
#     input = gets.chomp
#     if input == "Y" || input == 'y'
#         puts "What's this lil fella's name?"
#             input1 = gets.chomp
#         puts "Have you uprooted an oldie? How many rings does it have?" #Or leave blank to default to 0. --> how to add? 
#             input2 = gets.chomp.to_i
#         puts "What type of tree is it? Evergreen, it never loses it's leaves, or Deciduous, it loses it's leaves and grows new ones."
#             input3 = gets.chomp
#         puts "One an arbitarty scale of 1 to 10, how many leaves does it have?"
#             input4 = gets.chomp.to_i

#             t1 = Tree.create(name: input1, age: input2, type_of_tree: input3, coverage: input4)

#         puts "And where do you wanna put this beauty? Name a Forest please"
#             input5 = gets.chomp
#             f1 = Forest.find_by(location: input5)

#             Placement.create(tree_id: t1, forest_id: f1)
#             puts "Success, " + input1 + "was planted in " + input5 +"."
#     elsif input == "N" || input == "n"
#         puts "That's cool, just here to appreciate."
#         see_all_forests
#     else 
#         puts "ACCESS DENIED UNTIL YOU TOE THE LINE"
#     end
# end



# #     Tree.create(name: input1, age: input2, type_of_tree: input3, coverage: input4)
# def generate_placement
#     num = (1..10).to_a
#     age_of_tree = (1..1000).to_a    
#     types_of_tree = [
#         "Evergreen",
#         "Deciduous",
#     ]
    
    
#     t1 = Tree.create(
#         coverage: num.sample,
#         name: Faker::Name.name,
#         age: age_of_tree.sample,
#         type_of_tree: types_of_tree.sample,
#     )

#     p1 = Placement.create(tree_id: t1.id, forest_id: Forest.self.id)
# end

#     def plant_a_tree
#     puts "Where do you want to plant a tree? Must be an exisitng forest!"
#         forest_input = gets.chomp
#         if forest_input == existing_forest
#             generate_placement
#         else
#             puts "There's no forest there!"
#         end
#     end





# def see_all_forests
# puts "To see all the trees in a forest, please enter the forest's name (I hear Forest of Dean is really nice...). Or type 'forests' to see all our records"
# forest_name = gets.chomp 

#     if forest_name == 'forests'
#         p Forest.all
#     else
#         Forest.find_by(location: forest_name).trees




# puts "To create a new forest, please provide me with a location: "

# new_forest_location = gets.chomp

# existing_forest = Forest.find_by(location: new_forest_location)
 

# if new_forest_location == existing_forest
#     puts "Sorry, there is already a forest in " + new_forest_location + " in our records."
# else
#     puts "And what size is this forest?"
#     forest_size = gets.chomp.to_i

#     Forest.create(location: new_forest_location, size: forest_size)
#     puts "Success! We've added a forest in " + new_forest_location + " to our records!"
# end

# # puts "You've chosen: " + new_forest_location




  