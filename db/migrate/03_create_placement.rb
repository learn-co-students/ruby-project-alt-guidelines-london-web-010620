class CreatePlacement < ActiveRecord::Migration[5.2]

    def change
        create_table :placements do |t|
            t.integer :tree_id
            t.integer :forest_id
        end 
    end
end
