# read #view trees

# create #plant tree

# update #change coverage

# destroy #detroy tree

def all_trees
    puts "Here's a list of all the trees. All of em."
    t = Tree.all 
    puts t.name
end

def find_tree_by_id(id_num)
    puts "Throw in a number and see what comes back."
    id_num = gets.chomp.to_i
    Tree.find_by(id: id_num)
end

def find_tree_by_name(name)
    puts "Know a specific name? (Names are genereated by Faker so unlikely)"
    Tree.find_by(name: name)
end

def find_random_tree
    Tree.all.sample
end



def update_coverage(id, num)
    puts "Update leaf-age of a tree by id, between 1 (no leaves) and 10 (in fully bloomin glory)."
    Tree.find_by(id: id).update(coverage: num)
end

# def chop
#     puts "chops down a random tree"
#     Tree.all.sample.destroy
# end

def change_name(id, new_name)
    puts "Please enter the unique id number of the tree you wish to change the name of."
    t1 = Tree.find_by(id: id)
    t2 = Tree.find_by(id: id).name
    puts "please enter a new name"
    t1.update(name: new_name)
    puts ""
end



    







