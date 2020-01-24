Forest.create(location: "Epping Forest", size: 7.01)
Forest.create(location: "Hamsterley Forest", size: 386.00)
Forest.create(location: "Forest of Dean", size: 9.50)
Forest.create(location: "The New Forest", size: 84.88)
Forest.create(location: "Sherwood Forest", size: 6.99)
Forest.create(location: "Delamere Forest", size: 98.00)
Forest.create(location: "Dalby Forest", size: 10.27)
Forest.create(location: "Ashdown Forest", size: 88.00)
Forest.create(location: "Wyre Forest", size: 6.69)
Forest.create(location: "Haldon Forest", size: 12500.00)

forests = Forest.all.map {|forest| forest.location}



def generate_placement
    num = (1..10).to_a
    age_of_tree = (1..1000).to_a    
    types_of_tree = [
        "Evergreen",
        "Deciduous",
    ]
    
    
    t1 = Tree.create(
        coverage: num.sample,
        name: Faker::Name.name,
        age: age_of_tree.sample,
        type_of_tree: types_of_tree.sample,
    )

    p1 = Placement.create(tree_id: t1.id, forest_id: Forest.all.sample.id)
end

200.times do 
    generate_placement
end

puts "- SEEDED -"
