class CreateTree < ActiveRecord::Migration[5.2]

    def change
        create_table :trees do |t|
            t.string :name
            t.integer :age
            t.string :type_of_tree
            t.integer :coverage
        end
    end
end
